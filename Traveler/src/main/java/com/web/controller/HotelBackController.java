package com.web.controller;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.web.model.commodity.CommodityBean;
import com.web.model.hotel.HotelBean;
import com.web.service.hotel.HotelService;
@Controller
@RequestMapping("/_Hotel/End")
public class HotelBackController {
	
	@Autowired
	HotelService hotelService;
	@Autowired
	ServletContext context;
	
		
	
		//新增Hotel -GET
		@RequestMapping(value = "/InsertHotel", method = RequestMethod.GET)
		public String getAddNewHotelForm(Model model) {
		    HotelBean hb = new HotelBean();
		    model.addAttribute("hotelBean", hb); 
		    return "_Hotel/End/InsertHotel";
		}
	
		//新增Hotel -POST
		@RequestMapping(value = "/InsertHotel", method = RequestMethod.POST)
		public String getAddNewHotelForm(@ModelAttribute("hotelBean") HotelBean hb, HttpServletRequest request) { 
			
			MultipartFile productImage = hb.getProductImage();
			String originalFilename = productImage.getOriginalFilename();
			hb.setFile_name(originalFilename);
			
			String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
			String rootDirectory = request.getSession().getServletContext().getRealPath("/");
			//  建立Blob物件，交由 Hibernate 寫入資料庫
			if (productImage != null && !productImage.isEmpty() ) {
				try {
					byte[] b = productImage.getBytes();
					Blob blob = new SerialBlob(b);
					hb.setCoverImage(blob);
				} catch(Exception e) {
					e.printStackTrace();
					throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
				}
			}
			hotelService.insertHotel(hb);    			
			return "redirect:/_Hotel/End/InsertHotel";		    
		}
		
		// 取得HotelBean資料，顯示多筆Hotel資料
		@RequestMapping("/ManagerAllHotels")
		public String list(Model model) {
			List<HotelBean> list = hotelService.getAllHotels();
			model.addAttribute("hotels", list);
			return "_Hotel/End/ManagerAllHotels";
		}	
		
		

		// 取的Hotel照片(顯示照片)----(在同一個應用系統裡，對於命名相同(getPicure)dispatcher無法辨識)
		@RequestMapping(value = "/getPic/{hotel_id}", method = RequestMethod.GET)
		public ResponseEntity<byte[]> getPicture(HttpServletResponse resp, @PathVariable Integer hotel_id) {
			HotelBean bean = hotelService.getHotelById(hotel_id);
			HttpHeaders headers = new HttpHeaders();
			Blob blob = bean.getCoverImage();
			int len = 0;
			byte[] media = null;
			if (blob != null) {
				try {
					len = (int) blob.length();
					media = blob.getBytes(1, len);
				} catch (SQLException e) {
					throw new RuntimeException("ProductController的getPicture()發生SQLException: " + e.getMessage());
				}
			} else {
				InputStream is = context.getResourceAsStream("/Traveler/images/NoImage.jpg");
				ByteArrayOutputStream baos = new ByteArrayOutputStream();
				byte[] b = new byte[8192];
				try {
					while ((len = is.read(b)) != -1) {
						baos.write(b, 0, len);
					}

				} catch (Exception e) {
					throw new RuntimeException("ProductController的getPicture()發生IOException: " + e.getMessage());
				}
				media = baos.toByteArray();
			}
			headers.setCacheControl(CacheControl.noCache().getHeaderValue());
			ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
			return responseEntity;
		}
		
		

		@RequestMapping(value="/UpdateHotel")
		public String updateform(Model model,@ModelAttribute("HotelBean") HotelBean hb) {
			List<HotelBean>  list = hotelService.getAllHotels();
			model.addAttribute("hotels", list);
			return "/_Hotel/End/UpdateHotel";		
			
		}
		
		
		@RequestMapping(path= "/UpdateHotel/{hotel_id}" )
		public String updateHotelIfno(@ModelAttribute("HotelBean") HotelBean hb,@PathVariable Integer hotel_id) {

			hotelService.udpateHotel(hb);

			
			return "redirect:/_Hotel/End/UpdateHotel";
		}
		

//		// 取得HotelBean資料，顯示多筆Hotel資料
//		@RequestMapping("/DeleteHotel")
//		public String DeleteHotel(Model model) {
//			
//			return "_Hotel/End/DeleteHotel";
//		}	
		
		// 取得HotelBean資料，顯示多筆Hotel資料
		
		@RequestMapping(value="/DeleteHotel/del/{hotelInfo.hotel_id}", method = RequestMethod.POST )
		public String DeleteHotelTwo(Model model,@RequestParam("hotel_id") Integer hotel_id) {			
//			System.out.println(hotel_id);
			hotelService.deleteHotel(hotel_id);
			return "redirect:/_Hotel/End/DeleteHotel";
		}	
		
		@RequestMapping(value="/DeleteHotel" )
		public String DeleteHotel(Model model) {			
//			System.out.println("ommh");
			List<HotelBean> list = hotelService.getAllHotels();
			model.addAttribute("hotels", list);			
			return "_Hotel/End/DeleteHotel";
		}	
		
			
		
		
						
	
}
