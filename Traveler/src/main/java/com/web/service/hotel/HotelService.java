package com.web.service.hotel;

import java.sql.Timestamp;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import com.web.model.hotel.HotelBean;
import com.web.model.hotel.HotelRoomBean;

public interface HotelService {
	
	
	
	Set<HotelBean> getHotelsByDateTime(Timestamp startTime,Timestamp endTime);

	List<HotelBean> getAllHotels();

	HotelBean getHotelById(int hotel_id);
	
	HotelBean insertHotel(HotelBean hotelBean);
	
	void udpateHotel(HotelBean hotelBean);
	
	boolean deleteHotel(int hotel_id);

	
	
		
	
}
