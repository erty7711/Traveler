package com.web.service.airplain;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Base64;
import java.util.Properties;
import java.util.zip.GZIPInputStream;

import com.google.gson.Gson;

public class RunTest {

	private static Token token;

	public static String run(String depT, String localCode, String repT, String returnCode, String psg)
			throws Exception {

		/*
		 * Step 1 取得ClientID
		 * 
		 */

		Properties properties = new Properties();
		String configFile = "c:/pdf/BFM.properties";

		try {
			properties.load(new FileInputStream(configFile));
		} catch (IOException ex) {
			ex.printStackTrace();
		}
		
		
		String ClientID = properties.getProperty("ClientID");
		String Password = properties.getProperty("Password");
		/*
		 * Step 2 轉換為Base64String
		 * 
		 */
		String Base_ClientID = Base64.getEncoder().encodeToString(ClientID.getBytes("utf-8"));
		String Base_Password = Base64.getEncoder().encodeToString(Password.getBytes("utf-8"));
		String Base_Compose = Base64.getEncoder()
				.encodeToString((Base_ClientID + ":" + Base_Password).getBytes("utf-8"));

		/*
		 * Step 3 取得AccessToken
		 */
		// https: //api.sabre.com 正式環境
		// https: //api.test.sabre.com 測試環境
		URL url = new URL("https://api.sabre.com/v2/auth/token");
		StringBuffer tokenresponse = new StringBuffer();

		HttpURLConnection hreq = (HttpURLConnection) url.openConnection();
		hreq.setRequestMethod("POST");
		hreq.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
		hreq.setRequestProperty("Authorization", "Basic " + Base_Compose);
		hreq.setDoOutput(true);

		OutputStream os = hreq.getOutputStream();
		os.write("grant_type=client_credentials".getBytes("utf-8"));
		os.close();

		BufferedReader in = new BufferedReader(new InputStreamReader(hreq.getInputStream()));
		String inputLine;

		while ((inputLine = in.readLine()) != null) {
			tokenresponse.append(inputLine);
		}
		in.close();
		// System.out.println("TOKEN JSON :" + tokenresponse.toString());

		Gson gson = new Gson();
		token = gson.fromJson(tokenresponse.toString(), Token.class);

		/*
		 * Step 4 依照取得的Token開始查詢BFM
		 */
		// String depT = "2018-06-01T11:00:00";// 起飛時間
		// String localCode = "TPE"; // 起飛城市
		// String repT = "2018-06-05T11:00:00";// 回程時間
		// String returnCode = "NRT"; // 目的地城市

		// System.out.println(depT + localCode + repT + returnCode);
		String order = getBFM(depT, localCode, repT, returnCode, psg);
		return order;

	}

	public static String getBFM(String depT, String localCode, String repT, String returnCode, String psg)
			throws Exception {

		// https: //api.sabre.com 正式環境
		// https: //api.test.sabre.com 測試環境
		URL url = new URL("https://api.sabre.com/v3.4.0/shop/flights?mode=live");
		HttpURLConnection hreq = (HttpURLConnection) url.openConnection();
		hreq.setRequestMethod("POST");
		hreq.setRequestProperty("Content-Type", "application/json");
		hreq.setRequestProperty("Accept-Encoding", "gzip");
		hreq.setRequestProperty("Authorization", "Bearer " + token.getAccessToken());
		hreq.setDoOutput(true);

		OutputStream os = hreq.getOutputStream();
		os.write(BFMSearch.getRequestBody(depT, localCode, repT, returnCode, psg).getBytes("utf-8"));
		os.close();

		GZIPInputStream zipBFMinformation = null;
		zipBFMinformation = new GZIPInputStream(hreq.getInputStream());
		InputStreamReader resBFM = new InputStreamReader(zipBFMinformation, "UTF-8");
		BufferedReader in = new BufferedReader(resBFM);

		String inputLine;
		StringBuffer response = new StringBuffer();

		while ((inputLine = in.readLine()) != null) {
			response.append(inputLine);
		}
		in.close();
//		System.out.println("BFM ANSWER :" + response.toString());
		return response.toString();
	}

}
