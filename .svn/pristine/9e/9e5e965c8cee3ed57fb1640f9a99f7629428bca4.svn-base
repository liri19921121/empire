package com.tom.lemenintl.common.service;

import com.tom.lemenintl.common.entity.SysFileStorage;
import com.tom.lemenintl.common.repo.SysFileStorageRepository;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.IIOImage;
import javax.imageio.ImageIO;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;
import javax.imageio.stream.ImageOutputStream;
import java.awt.*;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.*;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

@Slf4j
@Service
public class FileStorageService {

	@Autowired
	private Environment env;

	@Value("${img.compress.quality}")
	String quality = "0.1";

	@Autowired
	SysFileStorageRepository SysFileStorageRepository;

	public Map<String, Object> getFileWebPath(Long fileId) throws Exception {
		SysFileStorage sysFileStorage = SysFileStorageRepository.findById(fileId).get();

		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("baseURL", FilenameUtils.getFullPath(env.getProperty("fileStorage.retrive.prefix"))
				+ sysFileStorage.getFilePath());
		resultMap.put("compressedURL", FilenameUtils.getFullPath(env.getProperty("fileStorage.retrive.prefix"))
				+ sysFileStorage.getCompressedFilePath());

		return resultMap;
	}

	public String getFileLocalPath(Long fileId) {
		return FilenameUtils.getFullPath(env.getProperty("fileStorage.restore.prefix"))
				+ SysFileStorageRepository.findById(fileId).get().getFilePath();
	}

	public Long storeFile(MultipartFile multipartFile) throws Exception {
		if (multipartFile == null || multipartFile.isEmpty())
			return null;

		UUID storedUUID = UUID.randomUUID();
		String extension = FilenameUtils.getExtension(multipartFile.getOriginalFilename());

		String restoreFilePath = storedUUID.toString() + "." + extension;

		// 保存路径
		// /usr/share/nginx/html/file_storage/${spring.application.name}/xxxxxxxx.jpg
		String restoreFileFullPath = FilenameUtils.getFullPath(env.getProperty("fileStorage.restore.prefix"))
				+ restoreFilePath;
		// 保存至本地
		File file = new File(restoreFileFullPath);
		if (!file.getParentFile().exists()) {
			file.getParentFile().mkdirs();
		}
		multipartFile.transferTo(file);
		log.debug("File stored -->" + restoreFileFullPath);

		// 保存至文档表
		SysFileStorage entity = new SysFileStorage();
		entity.setRetriveUUID(storedUUID);
		entity.setOriginalFileName(multipartFile.getOriginalFilename());
		entity.setContentType(multipartFile.getContentType());
		// 相对路径
		entity.setFilePath(restoreFilePath);
		// 压缩图片文件
		if (multipartFile.getContentType().startsWith("image/")) {
			String compressedFilePath = compressImgFile(file, storedUUID, extension);
			entity.setCompressedFilePath(compressedFilePath);
		} else {
			entity.setCompressedFilePath(restoreFilePath);
		}

		entity.setFileExtension(extension);
		entity.setFileSizeByte(multipartFile.getSize());
		entity.setFileSizeKB(multipartFile.getSize() / 1024);
		return SysFileStorageRepository.save(entity).getId();
	}

	private String compressImgFile(File baseFile, UUID baseFileUUID, String extension) throws Exception {
		String restoreFilePath = baseFileUUID.toString() + "_compressed." + extension;
		// 保存路径
		// /usr/share/nginx/html/file_storage/${spring.application.name}/xxxxxxxx.jpg
		String restoreFileFullPath = FilenameUtils.getFullPath(env.getProperty("fileStorage.restore.prefix"))
				+ restoreFilePath;

		File compressedImageFile = new File(restoreFileFullPath);

		InputStream is = new FileInputStream(baseFile);
		OutputStream os = new FileOutputStream(compressedImageFile);

		// create a BufferedImage as the result of decoding the supplied InputStream
		BufferedImage image = ImageIO.read(is);

		// get all image writers for JPG format
		Iterator<ImageWriter> writers = ImageIO.getImageWritersByFormatName(extension);
		ImageWriter writer = (ImageWriter) writers.next();
		ImageOutputStream ios = ImageIO.createImageOutputStream(os);
		writer.setOutput(ios);

		ImageWriteParam param = writer.getDefaultWriteParam();

		// compress to a given quality
		param.setCompressionMode(ImageWriteParam.MODE_EXPLICIT);
		param.setCompressionQuality(Float.parseFloat(quality));

		// appends a complete image stream containing a single image and
		// associated stream and image metadata and thumbnails to the output
		writer.write(null, new IIOImage(image, null, null), param);
		log.debug("File compressed stored -->" + compressedImageFile);
		// close all streams
		IOUtils.closeQuietly(is);
		IOUtils.closeQuietly(os);

		writer.dispose();

		return restoreFilePath;
	}

	/**
	 * 图片加水印 - 文字模式
	 * 
	 * @param watermark
	 * @param sourceImgExt
	 * @param source
	 * @param destination
	 * @throws Exception
	 */
	@SuppressWarnings("unused")
	private void addTextWatermark(String watermark, String sourceImgExt, File source, File destination)
			throws Exception {
		BufferedImage image = ImageIO.read(source);

		// determine image type and handle correct transparency
		int imageType = "png".equalsIgnoreCase(sourceImgExt) ? BufferedImage.TYPE_INT_ARGB : BufferedImage.TYPE_INT_RGB;
		BufferedImage watermarked = new BufferedImage(image.getWidth(), image.getHeight(), imageType);

		// initializes necessary graphic properties
		Graphics2D w = (Graphics2D) watermarked.getGraphics();
		w.drawImage(image, 0, 0, null);
		AlphaComposite alphaChannel = AlphaComposite.getInstance(AlphaComposite.SRC_OVER, 0.4f);
		w.setComposite(alphaChannel);
		w.setColor(Color.GRAY);
		w.setFont(new Font(Font.SANS_SERIF, Font.BOLD, 26));
		FontMetrics fontMetrics = w.getFontMetrics();
		Rectangle2D rect = fontMetrics.getStringBounds(watermark, w);

		// calculate center of the image
		int centerX = (image.getWidth() - (int) rect.getWidth()) / 2;
		int centerY = image.getHeight() / 2;

		// add text overlay to the image
		w.drawString(watermark, centerX, centerY);
		ImageIO.write(watermarked, sourceImgExt, destination);
		w.dispose();
	}

	/**
	 * 图片加水印 - 图片模式
	 * 
	 * @param watermark
	 * @param sourceImgExt
	 * @param source
	 * @param destination
	 * @throws Exception
	 */
	@SuppressWarnings("unused")
	private void addImageWatermark(File watermark, String sourceImgExt, File source, File destination)
			throws Exception {
		BufferedImage image = ImageIO.read(source);
		BufferedImage overlay = resize(ImageIO.read(watermark), 150, 150);

		// determine image type and handle correct transparency
		int imageType = "png".equalsIgnoreCase(sourceImgExt) ? BufferedImage.TYPE_INT_ARGB : BufferedImage.TYPE_INT_RGB;
		BufferedImage watermarked = new BufferedImage(image.getWidth(), image.getHeight(), imageType);

		// initializes necessary graphic properties
		Graphics2D w = (Graphics2D) watermarked.getGraphics();
		w.drawImage(image, 0, 0, null);
		AlphaComposite alphaChannel = AlphaComposite.getInstance(AlphaComposite.SRC_OVER, 0.4f);
		w.setComposite(alphaChannel);

		// calculates the coordinate where the String is painted
		int centerX = image.getWidth() / 2;
		int centerY = image.getHeight() / 2;

		// add text watermark to the image
		w.drawImage(overlay, centerX, centerY, null);
		ImageIO.write(watermarked, sourceImgExt, destination);
		w.dispose();
	}

	private BufferedImage resize(BufferedImage img, int height, int width) {
		Image tmp = img.getScaledInstance(width, height, Image.SCALE_SMOOTH);
		BufferedImage resized = new BufferedImage(width, height, BufferedImage.TYPE_INT_ARGB);
		Graphics2D g2d = resized.createGraphics();
		g2d.drawImage(tmp, 0, 0, null);
		g2d.dispose();
		return resized;
	}

}
