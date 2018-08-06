package com.web.repository.imp.contactus;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.model.commodity.CommodityBean;
import com.web.model.contactus.ContactusBean;
import com.web.repository.contactus.ContactusRepository;

@Repository
public class ContactusRepositoryImp implements ContactusRepository {
	@Autowired
	SessionFactory factory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<ContactusBean> getAllContactus() {
		String hql="FROM ContactusBean order by messagetime desc";
		Session session = null;
		List<ContactusBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public void addCustomerOpinion(ContactusBean contactus) {
		Session session = factory.getCurrentSession();
		session.save(contactus);		
	}

	@Override
	public void update(ContactusBean contactus) {
		int pkid = contactus.getPkid();
//		String name = contactus.getName();
		String feedback = contactus.getFeedback();
		
		Session session = factory.getCurrentSession();
		ContactusBean contactus2 = session.get(ContactusBean.class, pkid);
	
//		contactus2.setName(name);
		contactus2.setFeedback(feedback);
		session.save(contactus2);
		
		
	
	}

	

	@Override
	public List<ContactusBean> getAllFeedback() {
		String hql="FROM ContactusBean";
		Session session = null;
		List<ContactusBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}

//	@Override
//	public void updateCustomerOpinion(ContactusBean contactus) {
//		int pkid = contactus.getPkid();
////		String name = contactus.getName();
//		String feedback = contactus.getFeedback();
//		
//		Session session = factory.getCurrentSession();
//		ContactusBean contactus2 = session.get(ContactusBean.class, pkid);
//	
////		contactus2.setName(name);
//		contactus2.setFeedback(feedback);
//		session.save(contactus2);
//	}

	@Override
	public List<ContactusBean> getAllContactus(Integer pkid) {
		String hql="FROM ContactusBean contactus WHERE contactus.pkid = :pkid";
		List<ContactusBean> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		list = session.createQuery(hql).setParameter("pkid",pkid).getResultList();
		return list;
	
	}

	

	

//	@Override
//	public void updateFeedback(int pkid, int newQuantity) {
//		String hql = "UPDATE ContactusBean SET feedback= :newQuantity WHERE pkid=:id";
//		Session session =factory.getCurrentSession();
//		int n = session.createQuery(hql)
//				.setParameter("newQuantity", newQuantity)
//				.setParameter("pkid", pkid)
//				.executeUpdate();
//	}


	

}
