package com.web.service.airplain;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.model.airplain.ClickNumBean;
import com.web.model.airplain.ClickNumRepository;

@Service
@Transactional
public class CountClickService {

	@Autowired
	ClickNumRepository clickNumRepository; 
	
	public void addOneClick(String arrival) {
		ClickNumBean clickNumBean = new ClickNumBean();
		clickNumBean.setClick(1);
		clickNumBean.setArrival(arrival);
		clickNumRepository.saveNupdateClick(clickNumBean);
		
		
	}
	
	public List<ClickNumBean> selectAll(){
		return clickNumRepository.selectAll();
	}
}
