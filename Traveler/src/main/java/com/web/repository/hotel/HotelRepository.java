package com.web.repository.hotel;

import java.util.List;

import com.web.model.hotel.HotelBean;
import com.web.model.hotel.HotelRoomBean;

public interface HotelRepository {

	

	List<HotelBean> getAllHotels();

	HotelBean getHotelById(int hotel_id);

	HotelBean insertHotel(HotelBean hotelBean);

	void udpateHotel(HotelBean hotelBean);

	boolean deleteHotel(int hotel_id);

}
