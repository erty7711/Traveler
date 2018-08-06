package com.web.service.hotel;

import java.util.List;

import com.web.model.hotel.HotelBean;
import com.web.model.hotel.HotelRoomBean;

public interface HotelRoomService {
	
	HotelRoomBean insertHotelRoom(HotelRoomBean roomBean);
		
	HotelBean udpateHotelRoom(HotelRoomBean roomBean);
	
	boolean deleteHotelRoomId(int room_id);
	
}
