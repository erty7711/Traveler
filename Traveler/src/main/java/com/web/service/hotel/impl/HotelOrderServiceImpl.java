package com.web.service.hotel.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.model.hotel.HotelOrderBean;
import com.web.repository.hotel.HotelOrderRepository;
import com.web.service.hotel.HotelOrderService;
@Service
@Transactional
public class HotelOrderServiceImpl implements HotelOrderService {

	
	@Autowired
	HotelOrderRepository  hotelOrderRepository;
	
	@Override
	public int saveHotelOrderBean(HotelOrderBean hotelOrderBean) {
		return hotelOrderRepository.saveHotelOrderBean(hotelOrderBean);
	}



}
