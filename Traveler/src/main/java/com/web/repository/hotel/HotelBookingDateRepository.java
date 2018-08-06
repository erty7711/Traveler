package com.web.repository.hotel;

import java.sql.Timestamp;
import java.util.List;

import com.web.model.hotel.HotelBookingDateBean;

public interface HotelBookingDateRepository {
	
	List<HotelBookingDateBean> getByDateTime(Timestamp startTime,Timestamp endTime);
}
