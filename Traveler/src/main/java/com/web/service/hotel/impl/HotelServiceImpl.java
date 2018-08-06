package com.web.service.hotel.impl;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.model.commodity.CommodityBean;
import com.web.model.hotel.HotelBean;
import com.web.model.hotel.HotelBookingDateBean;
import com.web.model.hotel.HotelRoomBean;
import com.web.repository.hotel.HotelBookingDateRepository;
import com.web.repository.hotel.HotelRepository;
import com.web.repository.hotel.HotelRoomRepository;
import com.web.service.hotel.HotelService;

@Service
public class HotelServiceImpl implements HotelService {
	@Autowired
	private HotelRepository hotelRepository;

	@Autowired
	private HotelBookingDateRepository hotelBookingDateRepository;

	@Autowired
	private HotelRoomRepository hotelRoomRepository;

	@Autowired
	SessionFactory factory;

	@Transactional
	@Override
	public List<HotelBean> getAllHotels() {

		return hotelRepository.getAllHotels();
	}

	@Transactional
	@Override
	public HotelBean getHotelById(int hotel_id) {
		return hotelRepository.getHotelById(hotel_id);
	}

	@Transactional
	@Override
	public Set<HotelBean> getHotelsByDateTime(Timestamp startTime, Timestamp endTime) {

		List<HotelBookingDateBean> list = hotelBookingDateRepository.getByDateTime(startTime, endTime);
		Set<Integer> set = new HashSet<Integer>();
		for (HotelBookingDateBean hotelBookingDateBean : list) {
			System.out.println(hotelBookingDateBean.getRom_no());
			set.add(hotelBookingDateBean.getRom_no());
		}
		System.out.println(set);
		Set<HotelBean> hotelSet = new HashSet<HotelBean>();
		for (Integer Room_id : set) {
			HotelRoomBean room = hotelRoomRepository.getHotelRoomById(Room_id);
			Integer integer = room.getHotel_no();
			HotelBean hotel = hotelRepository.getHotelById(integer);
			hotelSet.add(hotel);
		}
		System.out.println(hotelSet);

		return hotelSet;
	}
	@Transactional
	@Override
	public HotelBean insertHotel(HotelBean hotelBean) {

		return hotelRepository.insertHotel(hotelBean);
	}
	
	@Transactional
	@Override
	public void udpateHotel(HotelBean hotelBean) {
		
		 hotelRepository.udpateHotel(hotelBean);
	}
	
	
	@Transactional	
	@Override
	public boolean deleteHotel(int hotel_id) {
		
		return hotelRepository.deleteHotel(hotel_id);
	}
	
	
	


}
