package com.web.model.airplain;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ExtraPriceRepository {

	@Autowired
	SessionFactory sessionFactory;
	

	public Integer selectByid(String dept ,String arrv) {
		Query<ExtraPriceBean> query = sessionFactory.getCurrentSession()
				      .createQuery("FROM ExtraPriceBean WHERE dept=? AND arrv=?",ExtraPriceBean.class);
		    query.setParameter(0,dept).setParameter(1,arrv);
			ExtraPriceBean result = query.uniqueResult();
		    if(result!=null) {
		    	return result.getExtraPrice();
		    }
		return null;
	}
	
	public ExtraPriceBean selectByidGetBean(String dept ,String arrv) {
		Query<ExtraPriceBean> query = sessionFactory.getCurrentSession()
				      .createQuery("FROM ExtraPriceBean WHERE dept=? AND arrv=?",ExtraPriceBean.class);
		    query.setParameter(0,dept).setParameter(1,arrv);
			ExtraPriceBean result = query.uniqueResult();
		    if(result!=null) {
		    	return result;
		    }
		return null;
	}
	
	public List<ExtraPriceBean> selectAll(){
		String HQL="FROM ExtraPriceBean";
		Session sesssion = sessionFactory.getCurrentSession();
		List<ExtraPriceBean> list= new ArrayList<>();
		list=sesssion.createQuery(HQL).getResultList();
		return list;
	}
	
	public void updateExtraPrice(ExtraPriceBean epBean) {
		sessionFactory.getCurrentSession().update(epBean);
	}
	
	public List<ExtraPriceBean> getExtraPrice(String dept ,String arrv) {
		Query<ExtraPriceBean> query = sessionFactory.getCurrentSession()
			      .createQuery("FROM ExtraPriceBean WHERE dept=? AND arrv=?",ExtraPriceBean.class);
	    query.setParameter(0,dept).setParameter(1,arrv);
	    List<ExtraPriceBean> result = query.getResultList();
	    System.out.println(dept+","+arrv);
	    if(result!=null) {
	    	return result;
	    }
	return null;
	}
	
	public void updateExtraPrice(Integer extraPrice,Integer id ) {
		String HQL="UPDATE ExtraPriceBean set extraPrice = :extraPrice "  + 
	             "WHERE id = :id";
		System.out.println("在RE中"+id+","+extraPrice);
		Session sesssion = sessionFactory.getCurrentSession();
		sesssion.createQuery(HQL).setParameter("extraPrice", extraPrice).setParameter("id", id).executeUpdate();
	}

}
