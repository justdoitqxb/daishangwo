package com.dsw.util;

import java.security.MessageDigest;

/*
 * MD5�����㷨���м���
 */
public class Encryption {
	/*
	 * ������MD5���ܺ���ַ���
	 */
	public static String md5Encrypt(String str) throws Exception{
		MessageDigest md5 = MessageDigest.getInstance("MD5");
		sun.misc.BASE64Encoder base64Encoder = new sun.misc.BASE64Encoder();
		return base64Encoder.encode(md5.digest(str.getBytes("utf-8")));
	}
	
	//������֤
	public static  boolean checkPassword(String inputPassword, String validatePassword) throws Exception{
		if(md5Encrypt(inputPassword).equals(md5Encrypt(validatePassword))){
			return true;
		}else{
			return false;
		}
	}
}
