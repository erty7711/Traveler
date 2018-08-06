package com.web.service.airplain;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.model.airplain.ExtraPriceBean;
import com.web.model.airplain.ExtraPriceRepository;

@Service
@Transactional
public class ExtraPriceService {
	
	@Autowired
	ExtraPriceRepository epr;

	public Integer getExtraPriceOld(String dept,String arrv) {
		return epr.selectByid(dept,arrv);
	}
	
	public List<ExtraPriceBean> selectALl(){
		return epr.selectAll();
	}
	
	public void updateExtraPrice(ExtraPriceBean epBean) {
		epr.updateExtraPrice(epBean);
	}
	
	public void updateExtraPrice(Integer extraPrice,Integer id) {
		epr.updateExtraPrice(extraPrice,id);
	}

	public List<ExtraPriceBean> getExtraPrice(String dept ,String arrv) {
		return epr.getExtraPrice(dept, arrv);
	}
	
	public ExtraPriceBean selectByidGetBean(String dept, String arrv) {
		return epr.selectByidGetBean(dept, arrv);
	}
}
