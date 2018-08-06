package com.web.service.airplain;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;

import org.springframework.stereotype.Service;

@Service
public class SendEmailService {
	
	Properties props =new Properties();
	String RECIPIENT=null;
	public  void sendEmail(String fileName,String emailAddress)  {
		try {
			props.load(new FileInputStream("c:/pdf/BFM.properties"));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		RECIPIENT=emailAddress;
		String from = props.getProperty("Email_USER_NAME");
		String pass = props.getProperty("Email_PASSWORD");
		String[] to = { RECIPIENT }; // list of recipient email addresses
		String subject = "Traveler機票訂單";
		StringBuffer sb= new StringBuffer();
		sb.append("<h3 style='color:red'>");
		sb.append("Traveler感謝您的光臨！</h3>");
		String body = sb.toString() ;

		try {
			sendFromGMail(from, pass, to, subject, body,fileName);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
	
	
	
	public  void sendNewEmail(String fileName,String memberEmail)  {
		try {
			props.load(new FileInputStream("c:/pdf/BFM.properties"));
		} catch (IOException e) {
			e.printStackTrace();
		}
		File file = new File("c:/OrderPDF/"+fileName+".pdf");
		   System.out.println("進入寄信SERVICE");
		if(file.exists()) {
			fileName=fileName+"_new";
		}
		
		RECIPIENT=memberEmail;
		String from = props.getProperty("Email_USER_NAME");
		String pass = props.getProperty("Email_PASSWORD");
		String[] to = { RECIPIENT }; // list of recipient email addresses
		String subject = "Traveler機票訂單";
		StringBuffer sb= new StringBuffer();
		sb.append("<h3 style='color:red'>");
		sb.append("Traveler重新寄發明細</h3>");
		String body = sb.toString() ;

		try {
			sendFromGMail(from, pass, to, subject, body,fileName);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
	
	

	private static void sendFromGMail(String from, String pass, String[] to, String subject, String body,String fileName) throws UnsupportedEncodingException {
		Properties props = System.getProperties();
		String host = "smtp.gmail.com";
		// 下面設定是根據GMail官方文件所寫的，開啟TLS以及SMTP AUTH
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.user", from);
		props.put("mail.smtp.password", pass);
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.auth", "true");

		Session session = Session.getDefaultInstance(props);
		MimeMessage message = new MimeMessage(session);

		try {
			message.setFrom(new InternetAddress(from));
			InternetAddress[] toAddress = new InternetAddress[to.length];

			// To get the array of addresses
			for (int i = 0; i < to.length; i++) {
				toAddress[i] = new InternetAddress(to[i]);
			}

			for (int i = 0; i < toAddress.length; i++) {
				message.addRecipient(Message.RecipientType.TO, toAddress[i]);
			}
			
			message.setSubject(subject);
			message.setText(body);
			
			
			   Multipart multipart = new MimeMultipart();
			 // 附件檔案
	        MimeBodyPart filePart1 = new MimeBodyPart();
	        MimeBodyPart filePart2 = new MimeBodyPart();
	        // 檔案位置
	     
	        try {
				filePart1.attachFile("c:/OrderPDF/"+fileName+".pdf");
			} catch (IOException e) {
				e.printStackTrace();
			} 
	        // 要顯示的檔名，檔名使用UTF-8編碼，filePart1寫入PDF內容，filePart2寫入文字敘述內容
	        filePart1.setHeader("Content-Type",  "application/octet-stream; charset=\"utf-8\"");
	        filePart1.setFileName(MimeUtility.encodeText("訂單內容.pdf", "UTF-8", "B"));
	        // 把附件檔案加入
	        multipart.addBodyPart(filePart1);
	        
	        filePart2.setContent(body.toString(), "text/html; charset=UTF-8");
	        multipart.addBodyPart(filePart2);
	        
	        message.setContent(multipart);
	        
	        
			Transport transport = session.getTransport("smtp");
			transport.connect(host, from, pass);
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();
		} catch (AddressException ae) {
			ae.printStackTrace();
		} catch (MessagingException me) {
			me.printStackTrace();
		}
	}

}
