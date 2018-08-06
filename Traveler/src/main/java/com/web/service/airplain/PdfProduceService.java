package com.web.service.airplain;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;

import org.hibernate.bytecode.enhance.internal.tracker.SimpleFieldTracker;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.util.ObjectBuffer;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.XMLWorkerFontProvider;
import com.itextpdf.tool.xml.XMLWorkerHelper;
import com.web.model.airplain.OrderDetailsBean;

@Service
public class PdfProduceService {

	Document document = null;

	public void pdfProduce(OrderDetailsBean odBean) throws DocumentException, IOException {

		document = new Document(PageSize.A4, 50, 50, 25, 50);

		ByteArrayOutputStream out = new ByteArrayOutputStream();
		// PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(go));
		try {
//			PdfWriter.getInstance(document, out);
			PdfWriter pdfWriter = PdfWriter.getInstance(document, out);
			document.open();
			//將下訂時間統一格式
			SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd hh:mm:ss");
			String orderDay=sdf.format(odBean.getOrderDay());
			Date date = new Date();
			String rightNow = sdf.format(date);
			//判定回程抵達時間是否跨日
			String arrtNextDay=null;
			if(odBean.getReturnArrTnextDay()==null) {
				arrtNextDay=odBean.getReturnDate();
			}else {
				arrtNextDay=odBean.getReturnArrTnextDay();
			}
			//將旅客生日格式統一
			SimpleDateFormat sdf2 = new SimpleDateFormat("YYYY-MM-dd");
			String guestOneBirth=sdf2.format(odBean.getGuestBean().getGuestOneBirth());
			String guestTwoBirth="";
			if(odBean.getGuestBean().getGuestTwoBirth()!=null) {
			guestTwoBirth = sdf2.format(odBean.getGuestBean().getGuestTwoBirth());
			}
			//HTML內容
			String part1 = "<html>\r\n" + 
					"<head>\r\n" + 
					"<title>Insert title here</title>\r\n" + 
					"</head >\r\n" + 
					"<body STYLE=\"font-family: mingliu; font-size:10pt\">\r\n" + 
					"<div STYLE=\"margin:0px auto\">\r\n" + 
					"<DIV class=\"title\" style=\"font-size:80px;color:orange\">&nbsp;&nbsp;&nbsp;<img  src=\"c:/pdf/AIRPLAIN.jpg\" height=\"80\" width=\"80\" /> TRAVELER</DIV>\r\n" + 
					"\r\n" + 
					"<p STYLE=\"color:red\">感謝您在Traveler訂購本次機票，請確認您的行程內容與相關條款</p>\r\n" + 
					"</div>\r\n" + 
					"<p>\r\n" + 
					"<h1 class=\"country\" style=\"color:#AAAAAA\">訂單資料</h1>\r\n" + 
					"</p>\r\n" + 
					"<table>\r\n" + 
					"<!--<tr class=\"movierow\"><th class=\"column1\"></th><th class=\"column2\">行程</th><th class=\"column3\">航空公司</th></tr>-->\r\n" + 
					"<tr class=\"movierow\"><td class=\"column1\">行程聯絡人：</td><td class=\"column2\">"+odBean.getGuestBean().getContactName()+"</td></tr>\r\n" + 
					"<tr class=\"movierow\"><td class=\"column1\">訂單編號：</td><td class=\"column2\">"+odBean.getOrderID()+"</td></tr>\r\n" + 
					"<tr class=\"movierow\"><td class=\"column1\">電話號碼：</td><td class=\"column2\">"+odBean.getGuestBean().getContactPhone()+"</td></tr>\r\n" + 
					"<tr class=\"movierow\"><td class=\"column1\">電子郵件：</td><td class=\"column2\">"+odBean.getGuestBean().getContactEmail()+"</td></tr>\r\n" + 
					"<tr class=\"movierow\"><td class=\"column1\">訂購日期：</td><td class=\"column2\">"+orderDay+"</td></tr>\r\n" +
					"<tr class=\"movierow\"><td class=\"column1\">發送時間：</td><td class=\"column2\">"+rightNow+"</td></tr>\r\n" + 
					"</table>\r\n" + 
					"\r\n" + 
					"<p>\r\n" + 
					"<h2 class=\"country\" style=\"color:#AAAAAA\">行程內容</h2>\r\n" + 
					"</p>\r\n" + 
					"<table>\r\n" +
					"<tr class=\"movierow\"><td class=\"column1\">去程：</td></tr>\r\n" + 
					"<tr><td class=\"column2\">"+odBean.getDepDate()+" "+odBean.getDepT()+" "+odBean.getDepC()+" "+odBean.getAirline()+"("+odBean.getDepNum()+")"+" ~ "+odBean.getDepDate()+" "+odBean.getArrT()+" "+odBean.getArrC()+"</td></tr>"+
					"<tr class=\"movierow\"><td class=\"column1\">回程：</td></tr>\r\n" + 
					"<tr><td class=\"column2\">"+odBean.getReturnDate()+" "+odBean.getReturnTime()+" "+odBean.getArrC()+" "+odBean.getAirline()+"("+odBean.getReturnNum()+")"+" ~ "+arrtNextDay+" "+odBean.getReturnArrTime()+" "+odBean.getDepC()+"</td></tr>"+
					"</table>\r\n" + 
					"<hr />\r\n" + 
					"<p>\r\n" + 
					"<h2 class=\"country\" style=\"color:#AAAAAA\">旅客名單</h2>\r\n" + 
					"</p>\r\n" + 
					"<table class=\"table3\">\r\n" + 
					"<tr><th colspan='2'  width=\"100px\" align=\"center\">姓名</th><th colspan='3'align=\"center\" width=\"300px;\">英文姓名</th> <th colspan='3'align=\"center\" width=\"100px;\">生日</th><th colspan='3' width=\"100px\" align=\"center\">性別</th></tr>\r\n" + 
					"<tr><td  colspan='2' width=\"100px\" align=\"center\" >"+odBean.getGuestBean().getGuestOneName()+"</td><td colspan='3' align=\"center\" width=\"300px;\">"+odBean.getGuestBean().getGuestOneFirstName()+"/"+odBean.getGuestBean().getGuestOneLastName()+"</td><td colspan='3' align=\"center\" width=\"100px;\">"+guestOneBirth+"</td><td align=\"center\" colspan='3' width=\"150px;\">成人"+odBean.getGuestBean().getGuestOneGender()+"</td></tr>\r\n";  
					String part2="";
					if(odBean.getGuestBean().getGuestTwoName()!=null) {
					part2="<tr><td  colspan='2' width=\"100px\" align=\"center\" >"+odBean.getGuestBean().getGuestTwoName()+"</td><td colspan='3' align=\"center\" width=\"300px;\">"+odBean.getGuestBean().getGuestTwoFirstName()+"/"+odBean.getGuestBean().getGuestTwoLastName()+"</td><td colspan='3' align=\"center\" width=\"100px;\">"+guestTwoBirth+"</td><td align=\"center\" colspan='3' width=\"150px;\">成人"+odBean.getGuestBean().getGuestTwoGender()+"</td></tr>\r\n";
					}
					String part3="</table>\r\n" + 
					"<hr />\r\n" + 
					"\r\n" + 
					"<p>\r\n" + 
					"<h2 class=\"country\" style=\"color:#AAAAAA\">費用明細</h2>\r\n" + 
					"</p>\r\n" + 
					"<table>\r\n" + 
					"<tr class=\"movierow\"><td class=\"column1\">價格/人：</td><td class=\"column2\">"+(odBean.getPrice()/odBean.getPerson())+"</td></tr>\r\n" + 
					"<tr class=\"movierow\"><td class=\"column1\">人數：</td><td class=\"column2\" align=\"center\">"+odBean.getPerson()+"</td></tr>\r\n" + 
					"<tr class=\"movierow\"><td class=\"column1\">合計：</td><td class=\"column2\"  style=\"font-weight:bold;\">NT."+odBean.getPrice()+"</td></tr>\r\n" + 
					"</table>\r\n" + 
					"<hr />\r\n" + 
					"<div STYLE=\"border:1px solid black\">\r\n" + 
					"<p>如有疑問請洽Traveler客服人員或線上客服 tel:(02)8888-7777  e-mail:callmemaybe@iii.org.tw</p>\r\n" + 
					"</div>\r\n" + 
					"\r\n" + 
					"\r\n" + 
					"</body>\r\n" + 
					"</html>";
					
			String total=null;
			//判定旅客人數
			if(odBean.getPerson().intValue()==1) {
				total=part1+part3;
			}else {
				total=part1+part2+part3;
			}
					
					
			// 中文字型檔路徑

			String fontPath = "C:/Windows/Fonts/kaiu.ttf";

			// 自訂字型物件

			XMLWorkerFontProvider fontImp = new XMLWorkerFontProvider(fontPath);

			FontFactory.setFontImp(fontImp);

			// 註冊FontFactory，定義Font Alias Name = mingliu

			FontFactory.register(fontPath, "mingliu");

			// Check是否註冊字型成功

			System.out.println("IS mingliu?===" + FontFactory.isRegistered("mingliu"));

			// Initial HTML轉換物件

			XMLWorkerHelper worker = XMLWorkerHelper.getInstance();

			// worker.parseXHtml(pdfWriter, document, new
			// FileInputStream("C:/pdf/NewFile.html"),Charset.forName("UTF8"),fontImp);
			worker.parseXHtml(pdfWriter, document, new ByteArrayInputStream(total.getBytes()), Charset.forName("UTF8"),
					fontImp);

		} finally {
			System.out.println(document);
			document.close();
		}
		// 寫出PDF
		byte[] pdf = out.toByteArray();
		File file = new File("c:/OrderPDF/" + odBean.getOrderID() + ".pdf");
		FileOutputStream fos =null;
		if(file.exists()) {
			 fos = new FileOutputStream("c:/OrderPDF/" + odBean.getOrderID()+"_new" + ".pdf");
		}else {
		 fos = new FileOutputStream("c:/OrderPDF/" + odBean.getOrderID() + ".pdf");
		}
		fos.write(pdf);
		fos.flush();
		fos.close();

	}

	public void imgProduce(ServletContext servletContext) throws IOException {
		InputStream is = servletContext.getResourceAsStream("/WEB-INF/images/TravelerTitle.png");
		FileOutputStream fos = null;
		File file = new File("c:/OrderPDF");
		if (!file.exists()) {
			file.mkdirs();
		}

		byte[] b = new byte[8192];
		int len = 0;
		try {
			fos = new FileOutputStream("c:/OrderPDF/" + "TravelerTitle.png");
			while ((len = is.read(b)) != -1) {
				fos.write(b, 0, len);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (fos != null) {
				fos.close();
			}
		}
		System.out.println("圖片創建完成");
	}

}
