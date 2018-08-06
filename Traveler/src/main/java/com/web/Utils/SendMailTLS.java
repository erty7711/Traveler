package com.web.Utils;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class SendMailTLS {
//	public static void main(String[] args) {
//		sendQueryPwdMail("h6300kimo@gmil.com","abc");
//	}
	public static void sendQueryPwdMail(String email, String chkPw) {
		try {
			Message message = new MimeMessage(getSession());
			message.setFrom(new InternetAddress("asally1110@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(email));
			message.setSubject("Traveler感謝您的光臨！查詢密碼通知");
			message.setText("親愛的顧客您好："
				+ "\n\n 您在Traveler旅遊網查詢密碼，您的新密碼是" + chkPw 
				+"\n登入後可至網站「顧客中心-密碼修改」進行密碼更換，設定方便記憶的密碼，以便下次登入。"
				+ "\n若無法登入，請來電通知客服人員！"
				+"\n客服專線：02-12345678"
				+"\n(請注意！本公司不會以此電話號碼撥打給您，若有來電顯示此號碼，請勿理會。)"
				+"\n提醒您！"
				+"\nTraveler旅遊網不會以電話通知更改付款方式或要求改以ATM重新轉帳。"
				+"\n亦不會委託廠商以電話通知變更付款方式或要求提供ATM匯款帳號。"
				+"\nTraveler網:http://localhost:8080/Traveler/");
			Transport.send(message);
			System.out.println("Done");
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}
	
	static Properties props =new Properties();
	static String RECIPIENT=null;
	private static Session getSession() {
		try {
			props.load(new FileInputStream("c:/pdf/BFM.properties"));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		RECIPIENT="asally1110@gmail.com";
		String username = props.getProperty("Email_USER_NAME");
		String password = props.getProperty("Email_PASSWORD");
//		String[] to = { RECIPIENT };
//		System.out.println("username="+username);
//		System.out.println("password="+password);
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
		return session;
	}
}