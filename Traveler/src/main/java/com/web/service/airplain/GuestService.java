package com.web.service.airplain;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.model.airplain.GuestBean;
import com.web.model.airplain.GuestRepository;

@Service
@Transactional
public class GuestService {
	@Autowired
	GuestRepository gr;
	
	public int addGuest(GuestBean gb) {
		int reId=gr.addGuest(gb);
		return reId;
	}
	
	public GuestBean selectById(int id) {
		GuestBean gb = gr.selectByid(id);
		return gb;
	}
	
	public int update(GuestBean guestBean) {
		gr.update(guestBean);
		return 1;
	}
	
	
	
}
