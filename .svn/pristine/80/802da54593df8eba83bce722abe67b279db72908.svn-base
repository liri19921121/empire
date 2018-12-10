package com.tom.lemenintl.common.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Data
public class SysFileStorage {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	 Long id;

	 UUID retriveUUID;// 2c787a83-70e8-4ec4-95fa-cfddcbfe8acd

	 String originalFileName;// upload.png

	 String contentType;// image/jpeg

	 String filePath;// 2c787a83-70e8-4ec4-95fa-cfddcbfe8acd.jpg
	 String compressedFilePath;// 2c787a83-70e8-4ec4-95fa-cfddcbfe8acd_compressed.jpg
	
	 String fileExtension;// jpg

	 Long fileSizeByte;// 299208
	 Long fileSizeKB;// 292.19

	 String remark;

	 Boolean enable = Boolean.TRUE;

	 String creator;
	 LocalDateTime createTime = LocalDateTime.now();

}
