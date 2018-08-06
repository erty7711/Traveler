package com.web.repository.hotel.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.model.hotel.HotelBean;
import com.web.model.hotel.HotelRoomBean;
import com.web.repository.hotel.HotelRoomRepository;


@Repository
public class HotelRoomRepositoryImpl implements HotelRoomRepository {
	@Autowired
	SessionFactory factory;
	
	Session session = null;
	
	
	@Override
	public List<HotelRoomBean> getByRoom() {
		
		return null;
	}

	@Override
	public HotelRoomBean getHotelRoomById(int room_id) {
		HotelRoomBean hb = null;		
		hb= factory.getCurrentSession().get(HotelRoomBean.class, room_id);
		return hb;
	}

	@Override
	public HotelRoomBean insertHotelRoom(HotelRoomBean hotelRoomBean) {
		Session session = factory.getCurrentSession();		
		session.save(hotelRoomBean);
		return hotelRoomBean;
	}

	@Override
	public HotelRoomBean udpateHotelRoom(HotelRoomBean roomBean) {
		Session session = factory.getCurrentSession();
		HotelRoomBean hb = session.get(HotelRoomBean.class, HotelRoomBean.getSerialversionuid());
		session.save(hb);
		return hb;
	}

	@Override
	public boolean deleteHotelRoomId(int room_id) {
		Session session = factory.getCurrentSession();
		HotelBean hb = session.get(HotelBean.class, room_id);
		if (hb != null) {
			session.delete(hb);
			return true;
		}
		return false;		
	}

}
