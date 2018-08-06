package com.web.service.hotel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.model.hotel.HotelOrderBean;
import com.web.repository.hotel.HotelOrderRepository;

public interface HotelOrderService {
	
	int saveHotelOrderBean(HotelOrderBean hotelOrderBean);
	
}
