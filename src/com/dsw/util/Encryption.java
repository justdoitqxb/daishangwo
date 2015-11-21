package com.dsw.util;

import java.security.MessageDigest;

/*
 * MD5加密算法进行加密
 */
public class Encryption {
	/*
	 * 返回以MD5加密后的字符串
	 */
	public static String md5Encrypt(String str) throws Exception{
		MessageDigest md5 = MessageDigest.getInstance("MD5");
		sun.misc.BASE64Encoder base64Encoder = new sun.misc.BASE64Encoder();
		return base64Encoder.encode(md5.digest(str.getBytes("utf-8")));
	}
	
	//密码验证
	public static  boolean checkPassword(String inputPassword, String validatePassword) throws Exception{
		if(md5Encrypt(inputPassword).equals(md5Encrypt(validatePassword))){
			return true;
		}else{
			return false;
		}
	}
}
