package com.web.repository.hotel;

import java.sql.Timestamp;
import java.util.List;

import com.web.model.hotel.HotelBean;
import com.web.model.hotel.HotelBookingDateBean;
import com.web.model.hotel.HotelRoomBean;

public interface HotelRoomRepository {

	List<HotelRoomBean> getByRoom();

	HotelRoomBean getHotelRoomById(int room_id);

	HotelRoomBean insertHotelRoom(HotelRoomBean roomBean);

	HotelRoomBean udpateHotelRoom(HotelRoomBean roomBean);

	boolean deleteHotelRoomId(int room_id);

}
