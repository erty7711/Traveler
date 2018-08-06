package com.web.service.impl.contactus;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.model.contactus.ContactusBean;
import com.web.model.theme.ThemeTitles;
import com.web.repository.contactus.ContactusRepository;
import com.web.service.contactus.ContactusService;

@Service
@Transactional
public class ContactusServiceImpl implements ContactusService {

	@Autowired
	private ContactusRepository contactusRepository;
	

	@Override
	public List<ContactusBean> getAllContactus() {
		return contactusRepository.getAllContactus();
	
	}

	@Override
	public void addCustomerOpinion(ContactusBean contactus) {
		contactusRepository.addCustomerOpinion(contactus);
	}

	
	@Override
	public void updateContactusBean(ContactusBean contactus) {
		contactusRepository.update(contactus);
	}



	@Override
	public void updateAllFeedback() {
		List<ContactusBean> allFeedback=contactusRepository.getAllFeedback();
	}

	@Override
	public List<ContactusBean> getAllFeedback() {
		return contactusRepository.getAllFeedback();
	}

	@Override
	public void update(ContactusBean contactus) {
		contactusRepository.update(contactus);
	}
	public void updateCustomerOpinion(ContactusBean contactus) {
		contactusRepository.update(contactus);
	}

	@Override
	public List<ContactusBean> getAllContactus(Integer pkid) {
		return contactusRepository.getAllContactus(pkid);
	}
}
