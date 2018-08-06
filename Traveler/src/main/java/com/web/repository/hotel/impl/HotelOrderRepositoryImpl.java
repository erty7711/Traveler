package com.web.repository.hotel.impl;

import java.io.Serializable;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.model.hotel.HotelOrderBean;
import com.web.repository.hotel.HotelOrderRepository;
@Repository
public class HotelOrderRepositoryImpl implements HotelOrderRepository {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public int saveHotelOrderBean(HotelOrderBean hotelOrderBean) {
			Session session = sessionFactory.getCurrentSession();
		Serializable result = session.save(hotelOrderBean);
		return (int)result;
	}



}
