package com.web.model.airplain;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ClickNumRepository {

	@Autowired
	SessionFactory sessionFactory;
	
	public List<ClickNumBean> selectAll() {
		String HQL="FROM ClickNumBean";
		List<ClickNumBean>list=sessionFactory.getCurrentSession().createQuery(HQL).getResultList();
		return list;
	}
	
	
	public void saveNupdateClick(ClickNumBean clickNumBean) {
		String HQL1="FROM ClickNumBean WHERE arrival=:arrival AND years=:years AND months=:months";
		String HQL2="FROM ClickNumBean WHERE id=1";
		Session session = sessionFactory.getCurrentSession();
	 Query query1 = session.createQuery(HQL1).setParameter("arrival", clickNumBean.getArrival()).setParameter("years", clickNumBean.getYears()).setParameter("months", clickNumBean.getMonths());
	 ClickNumBean result1 = (ClickNumBean) query1.uniqueResult();
	 ClickNumBean result2 = (ClickNumBean)session.createQuery(HQL2).uniqueResult();
	 
	 if(result1==null) {
		 session.save(clickNumBean);
		 result2.setClick(result2.getClick()+clickNumBean.getClick());
	 }else {
		 result1.setClick(result1.getClick()+clickNumBean.getClick());
		 result2.setClick(result2.getClick()+clickNumBean.getClick());
		 session.saveOrUpdate(result1);
	 }
	 
	}
}
