package com.web.service.airplain;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Service;

import com.itextpdf.text.Anchor;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.web.model.airplain.OrderDetailsBean;

@Service
public class PdfProduceServiceOLD {

	Document document = null;

	public void pdfProduce(OrderDetailsBean odbean) throws DocumentException, IOException {

		document = new Document(PageSize.A4, 50, 50, 25, 50);

		ByteArrayOutputStream out = new ByteArrayOutputStream();
		// PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(go));
		try {
			PdfWriter.getInstance(document, out);
			document.open();
			// begin
			// 將字體轉成中文
			BaseFont bfChinese = BaseFont.createFont("C:/Windows/Fonts/kaiu.ttf", BaseFont.IDENTITY_H,
					BaseFont.NOT_EMBEDDED);
			Font font = new Font(bfChinese, 14, Font.BOLD, new BaseColor(255, 153, 153));
			Font font2 = new Font(bfChinese, 20, Font.BOLD, new BaseColor(100, 100, 100));

			// 匯入圖片
			Image image2 = Image.getInstance("c:/pdf/TravelerTitle.png");
			image2.scaleAbsolute(269f, 100f);
			document.add(image2);

			// // table1
			PdfPTable table1 = new PdfPTable(1);
			table1.setWidthPercentage(100);
			PdfPCell cell = new PdfPCell();
			Paragraph p = new Paragraph();
			// p.add(new Chunk(image2, 0, 0));
			// p.add(new Phrase("訂單編號：2018XXXXXXX", font));
			p.add(new Phrase("訂單編號" + odbean.getOrderID(), font));

			Paragraph p3 = new Paragraph();
			// p3.add(new Phrase("去程：台北桃園機場 2018XXXXXXX XX:XX ~ 台北桃園機場 2018XXXXXXX XX:XX",
			// font));
			p3.add(new Phrase("去程：" + odbean.getDepC() + " " + odbean.getDepDate() + " " + odbean.getDepT() + "~"
					+ odbean.getArrC() + " " + odbean.getDepDate() + " " + odbean.getArrT(), font));
			p3.setSpacingBefore(10f);

			Paragraph p4 = new Paragraph();
			p4.add(new Phrase("回程：" + odbean.getArrC() + " " + odbean.getReturnDate() + " " + odbean.getReturnTime()
					+ "~" + odbean.getDepC() + " " + odbean.getReturnDate() + " " + odbean.getReturnArrTime(), font));
			p4.setSpacingBefore(10f);
			p4.setSpacingAfter(10f);
			;

			Paragraph para1 = new Paragraph();
			Anchor anchorTarget2 = new Anchor("機票訂購確認單", font2);
			para1.setSpacingBefore(10f);
			para1.add(anchorTarget2);

			cell.addElement(p);
			cell.addElement(p3);
			cell.addElement(p4);
			table1.addCell(cell);
			table1.setSpacingBefore(20f);

			// // table2 旅客資訊
			PdfPTable table2 = new PdfPTable(1);
			table2.setWidthPercentage(40);
			table2.setHorizontalAlignment(10);

			PdfPCell cell21 = new PdfPCell();

			Paragraph p21 = new Paragraph();
			p21.add(new Phrase("旅客1：" + odbean.getGuestBean().getGuestOneLastName()
					+ odbean.getGuestBean().getGuestOneFirstName() + "性別" + odbean.getGuestBean().getGuestOneGender(),
					font));
			p21.setSpacingBefore(10f);

			Paragraph p22 = new Paragraph();
			p22.add(new Phrase("旅客2：GAY FOOTER" + "性別+", font));
			p22.setSpacingBefore(10f);
			p22.setSpacingAfter(10f);

			cell21.addElement(p21);
			cell21.addElement(p22);
			table2.addCell(cell21);
			table2.setSpacingBefore(20f);

			document.add(para1);
			document.add(table1);
			document.add(table2);

		} finally {
			System.out.println(document);
			document.close();
		}
		// 寫出PDF
		byte[] pdf = out.toByteArray();
		FileOutputStream fos = new FileOutputStream("c:/OrderPDF/" + odbean.getOrderID() + ".pdf");
		fos.write(pdf);
		fos.flush();
		fos.close();

	}

	
	
	public void imgProduce(ServletContext servletContext ) throws IOException {
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
