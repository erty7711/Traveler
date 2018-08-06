package com.web.service.airplain;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import org.apache.commons.codec.digest.DigestUtils;

public class OpayEncoding {
	
	
	private static final String HASHKEY = "HashKey=5294y06JbISpM5x9&";
	private static final String HASHIV = "&HashIV=v77hoKGq4kWxNNIS";

	
	public static String setCheckMacValue(String query) {
		String plainCode = query;
		String decodedURL = null;
		String encodedURL = null;
		String value = null;
		String lowCase = null;
		// 先將前台傳回的URLEncoding 解碼
		try {
			decodedURL = URLDecoder.decode(plainCode, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		// 將解碼後的字串前後加上HashKey、HashKey
		value = HASHKEY + decodedURL + HASHIV;

		// 再進行URLEncoding
		try {
			encodedURL = URLEncoder.encode(value, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		// 將其小寫化
		lowCase = encodedURL.toLowerCase();

		// 以SHA256編碼
		String sha256 = DigestUtils.sha256Hex(lowCase);
		// 轉成大寫
		String upperCase = sha256.toUpperCase();
		// 完成編碼
		return upperCase;
	}

}
