package com.tom.lemenintl.common.utils;

import java.security.MessageDigest;

public class MD5Utils2 {

	// public static String decrypt(String md5Str) throws Exception {
	//
	// }

	public static String encrypt(String source) throws Exception {
		MessageDigest md = MessageDigest.getInstance("MD5");
		byte[] hash=md.digest();
		StringBuilder secpwd = new StringBuilder();
		for (int i = 0; i < hash.length; i++) {
			int v = hash[i] & 0xFF;
			if (v < 16)
				secpwd.append(0);
			secpwd.append(Integer.toString(v, 16));
		}
		return secpwd.toString();

	}

	public static void main(String[] args) throws Exception {
		System.err.println(encrypt("T_~u@fJm"));

	}

}
