package com.web.repository.contactus;

import java.util.List;

import com.web.model.contactus.ContactusBean;
import com.web.model.theme.ThemeTitles;

public interface ContactusRepository {

	void addCustomerOpinion(ContactusBean contactus);
	void update(ContactusBean contactus);
	List<ContactusBean> getAllContactus();
//	void updateFeedback(int pkid, int newQuantity);
	List<ContactusBean> getAllFeedback();
//	void updateCustomerOpinion(ContactusBean contactus);
	List<ContactusBean> getAllContactus(Integer pkid);
	
}
