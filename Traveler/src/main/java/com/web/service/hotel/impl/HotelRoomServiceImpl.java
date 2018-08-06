package com.web.service.hotel.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.model.hotel.HotelBean;
import com.web.model.hotel.HotelRoomBean;
import com.web.repository.hotel.HotelRoomRepository;
import com.web.service.hotel.HotelRoomService;



@Repository
public class HotelRoomServiceImpl implements HotelRoomService {
	@Autowired
	private HotelRoomRepository hotelRoomRepository;
	
	@Autowired
	SessionFactory factory;
	
	@Override
	public HotelRoomBean insertHotelRoom(HotelRoomBean roomBean) {
		
		return hotelRoomRepository.insertHotelRoom(roomBean);
	}

	@Override
	public HotelBean udpateHotelRoom(HotelRoomBean roomBean) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteHotelRoomId(int room_id) {
		// TODO Auto-generated method stub
		return false;
	}
	
	


	

	
}
