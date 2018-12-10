package com.tom.lemenintl.common.controller;

import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.service.FileStorageService;
import com.tom.lemenintl.common.utils.CommonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
public class FileStorageCtl {

	@Autowired
	FileStorageService fileStorageService;

	/**
	 * 通过文件id返回文件路径
	 * 
	 * @param token
	 * @return
	 * @throws Exception
	 */

	@RequestMapping("/C001")
	public RestHttpReply C001(@RequestParam Long id) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.setData(fileStorageService.getFileWebPath(id));

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	/**
	 * 上传文件接口
	 * 
	 * @param token
	 * @return
	 * @throws Exception
	 */

	@RequestMapping("/C002")
	public RestHttpReply C002(@RequestParam MultipartFile file) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long fileId = fileStorageService.storeFile(file);
			reply.putData("id", fileId);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

}
