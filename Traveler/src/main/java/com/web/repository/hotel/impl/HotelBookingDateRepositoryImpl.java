package com.web.repository.hotel.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.web.model.hotel.HotelBean;
import com.web.model.hotel.HotelBookingDateBean;
import com.web.repository.hotel.HotelBookingDateRepository;
@Repository
@Transactional
public class HotelBookingDateRepositoryImpl implements HotelBookingDateRepository {
	@Autowired
	SessionFactory factory;
	
	
	@Override
	public List<HotelBookingDateBean> getByDateTime(Timestamp startTime,Timestamp endTime) {
		String hql = "FROM HotelBookingDateBean where DateTime between :startTime and :endTime";
		Session session = null;
		
		List<HotelBookingDateBean> list = new ArrayList<>();		
		list = factory.getCurrentSession().createQuery(hql).setParameter("startTime", startTime).setParameter("endTime", endTime).getResultList();
		System.out.println("================"+list.size());
		
		return list;
		
	}

	
}
