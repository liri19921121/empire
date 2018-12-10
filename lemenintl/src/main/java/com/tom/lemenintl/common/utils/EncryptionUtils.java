package com.tom.lemenintl.common.utils;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import java.security.AlgorithmParameters;
import java.security.Key;

public class EncryptionUtils {

	public static String decrypt(byte[] content, byte[] keyByte, byte[] ivByte) throws Exception {
		// Security.addProvider(new
		// org.bouncycastle.jce.provider.BouncyCastleProvider());
		// Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
		Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");

		Key sKeySpec = new SecretKeySpec(keyByte, "AES");
		cipher.init(Cipher.DECRYPT_MODE, sKeySpec, generateIV(ivByte));// 初始化
		byte[] result = cipher.doFinal(content);
		return new String(result);
	}

	// 生成iv
	public static AlgorithmParameters generateIV(byte[] iv) throws Exception {
		AlgorithmParameters params = AlgorithmParameters.getInstance("AES");
		params.init(new IvParameterSpec(iv));
		return params;
	}

}
