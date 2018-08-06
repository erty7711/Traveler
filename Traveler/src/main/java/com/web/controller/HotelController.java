package com.web.controller;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.security.Timestamp;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

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
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.web.model.hotel.HotelBean;
import com.web.model.hotel.HotelBookingDateBean;
import com.web.model.hotel.HotelOrderBean;
import com.web.model.hotel.HotelRoomBean;
import com.web.repository.hotel.HotelBookingDateRepository;
import com.web.repository.hotel.HotelRoomRepository;
import com.web.repository.hotel.impl.HotelBookingDateRepositoryImpl;
import com.web.service.hotel.HotelBookingDatieService;
import com.web.service.hotel.HotelOrderService;
import com.web.service.hotel.HotelRoomService;
import com.web.service.hotel.HotelService;

@Controller
public class HotelController {
	@Autowired
	HotelService hotelService;
	
	@Autowired
	HotelRoomService hotelRoomService;
	
//	@Autowired
//	HotelBookingDatieService hotelBookingDatieService;

	@Autowired
	ServletContext context;
	@Autowired
	HotelOrderService hotelOrderService; 

	// 顯示HotelIndex
	@RequestMapping("/_Hotel/SelectHotel")
	public String list2(Model model) {
		return "_Hotel/SelectHotel";
	}	

	// 顯示DisplayRoom
	@RequestMapping("/_Hotel/DisplayRoom")
	public String vcvcx(Model model) {
		return "_Hotel/DisplayRoom";
	}
	// 顯示DisplayRoom1
	@RequestMapping("/_Hotel/DisplayRoom1")
	public String xzcv(Model model) {
		return "_Hotel/DisplayRoom1";
	}
	// 顯示DisplayRoom2
	@RequestMapping("/_Hotel/DisplayRoom2")
	public String bfff(Model model) {
		return "_Hotel/DisplayRoom2";
	}
	// 顯示DisplayRoom3
	@RequestMapping("/_Hotel/DisplayRoom3")
	public String kk(Model model) {
		return "_Hotel/DisplayRoom3";
	}
	// 顯示DisplayRoom4
	@RequestMapping("/_Hotel/DisplayRoom4")
	public String ttee(Model model) {
		return "_Hotel/DisplayRoom4";
	}
	// 顯示DisplayRoom5
	@RequestMapping("/_Hotel/DisplayRoom5")
	public String bbbsd(Model model) {
		return "_Hotel/DisplayRoom5";
	}
	
	// 顯示OrderRoom
	@RequestMapping("/_Hotel/OrderRoom")
	public String showOrderRoom(Model model) {
		return "_Hotel/OrderRoom";
	}		
	
	// 顯示OrderRoom1
		@RequestMapping("/_Hotel/OrderRoom1")
		public String showOrderRoom1(Model model) {
			return "_Hotel/OrderRoom1";
		}
	
	// 顯示OrderRoom2
	@RequestMapping("/_Hotel/OrderRoom2")
	public String showOrderRoom2(Model model) {
		return "_Hotel/OrderRoom2";
	}
	// 顯示OrderRoom3
	@RequestMapping("/_Hotel/OrderRoom3")
	public String showOrderRoom3(Model model) {
		return "_Hotel/OrderRoom3";
	}
	// 顯示OrderRoom4
	@RequestMapping("/_Hotel/OrderRoom4")
	public String showOrderRoom4(Model model) {
		return "_Hotel/OrderRoom4";
	}
	// 顯示OrderRoom5
	@RequestMapping("/_Hotel/OrderRoom5")
	public String showOrderRoom5(Model model) {
		return "_Hotel/OrderRoom5";
	}
		
	
	// 顯示OrderFinish
	@RequestMapping("/_Hotel/OrderFinish")
	public String showOrderFinish(Model model) {
		return "_Hotel/OrderFinish";
	}
	// 顯示OrderFinish1
	@RequestMapping("/_Hotel/OrderFinish1")
	public String showOrderFinish1(Model model) {
		return "_Hotel/OrderFinish1";
	}
	// 顯示OrderFinish2
	@RequestMapping("/_Hotel/OrderFinish2")
	public String showOrderFinish2(Model model) {
		return "_Hotel/OrderFinish2";
	}
	// 顯示OrderFinish3
	@RequestMapping("/_Hotel/OrderFinish3")
	public String showOrderFinish3(Model model) {
		return "_Hotel/OrderFinish3";
	}
	// 顯示OrderFinish4
	@RequestMapping("/_Hotel/OrderFinish4")
	public String showOrderFinish4(Model model) {
		return "_Hotel/OrderFinish4";
	}
	// 顯示OrderFinish5
	@RequestMapping("/_Hotel/OrderFinish5")
	public String showOrderFinish5(Model model) {
		return "_Hotel/OrderFinish5";
	}
		
	// 顯示roomCheckOut
	@RequestMapping("/_Hotel/roomCheckOut")
	public String checkOut(Model model) {			
		return "_Hotel/roomCheckOut";
	}
	// 顯示roomCheckOut1
	@RequestMapping("/_Hotel/roomCheckOut1")
	public String checkOut1(Model model) {			
		return "_Hotel/roomCheckOut1";
	}
	// 顯示roomCheckOut2
	@RequestMapping("/_Hotel/roomCheckOut2")
	public String checkOut2(Model model) {			
		return "_Hotel/roomCheckOut2";
	}
	// 顯示roomCheckOut3
	@RequestMapping("/_Hotel/roomCheckOut3")
	public String checkOut3(Model model) {			
		return "_Hotel/roomCheckOut3";
	}
	// 顯示roomCheckOut4
	@RequestMapping("/_Hotel/roomCheckOut4")
	public String checkOut4(Model model) {			
		return "_Hotel/roomCheckOut4";
	}
	// 顯示roomCheckOut5
	@RequestMapping("/_Hotel/roomCheckOut5")
	public String checkOut5(Model model) {			
		return "_Hotel/roomCheckOut5";
	}
		
	
	//篩選扭送出呈現Hotel畫面 
	@RequestMapping("/_Hotel/SelectListed")
	public String getProductByIds(@RequestParam("start") String start, @RequestParam("end") String end,@RequestParam("location") String location, Model model) throws ParseException {
		// '2018/06/01' and '2018/06/05'	
				
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");		
		Date parsedDate = dateFormat.parse(start);
		java.sql.Timestamp startTime = new java.sql.Timestamp(parsedDate.getTime());
		
		Date parsedDate1 = dateFormat.parse(end);
		java.sql.Timestamp endTime = new java.sql.Timestamp(parsedDate1.getTime());

		Set<HotelBean> hotels = hotelService.getHotelsByDateTime(startTime, endTime);
		
		
//		System.out.println("================"+hotelService.getHotelsByDateTime(startTime, endTime).size());		
//		System.out.println("================");
		model.addAttribute("hotels",hotels);
		model.addAttribute("location",location);
		return "_Hotel/SelectListed";
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
	
	
	
	
	
	
	
	
//	//新增Room -GET
//	@RequestMapping(value = "", method = RequestMethod.GET)
//	public String getAddNewHootelRoomForm(Model model) {
//	    HotelRoomBean hrb = new HotelRoomBean();
//	    model.addAttribute("hotelRoomBean", hrb); 
//	    return "";
//	}
//	
	
//	
//	//新增Room -POST
//	@RequestMapping(value = "", method = RequestMethod.POST)
//	public String getAddNewHotelRoomForm(@ModelAttribute("hotelRoomBean") HotelRoomBean hrb, BindingResult result,
//			HttpServletRequest reques) { 
//		hotelRoomService.insertHotelRoom(hrb);
//	    return "redirect:/";
//	}

	
//	@RequestMapping("/_Hotel/OrderRoom")
//	public String saveOrderBean(@RequestParam()) {
//		HotelOrderBean hotelOrderBean=new HotelOrderBean(); 
//		hotelOrderBean.setHotel_name(hotel_name);
//		hotelOrderBean.setRm_no(rm_no);
//		hotelOrderBean.setOrder_date(order_date);
//		hotelOrderBean.setMember_no(member_no);
//		hotelOrderBean.setTotalAmount(totalAmount);
//		hotelOrderService.saveHotelOrderBean(hotelOrderBean);
//		
//		return "_Hotel/OrderRoom";
//	}
//	

}
