package com.web.repository.commodity.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.web.model.commodity.ClientBean;

import com.web.model.member.MemberBean;
import com.web.repository.commodity.ClientDAO;


@Repository
@SuppressWarnings("unchecked") // 抑制單類型的警告
public class ClientRepository implements ClientDAO {

	@Autowired
	SessionFactory factory;
			
//	@Autowired
//	private CommodityDAO commoditydao;

	// 列出所有商品兌換資料
	@Override
	public List<ClientBean> getAllData() {
		String hql = "FROM ClientBean";
		Session session = null;
		List<ClientBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		
		return list;
	}
	
	

	// 列出單筆兌換資料
	@Override
	public ClientBean getClientById(int Id) {
		ClientBean cb = null;
		Session session = factory.getCurrentSession();
		cb = session.get(ClientBean.class, Id);
		return cb;
	}


	// 列出該會員的商品兌換資料
	
	//寫Hql語法
//	@Override
//	public ClientBean getMemberId(Integer Id) {
//		 ClientBean cb=null;
//		 Session session = factory.getCurrentSession();
//		 cb = session.get(ClientBean.class,Id);
//		 
//		 return cb;
//		
//		
//	}
	
	
	
	// 列出該會員的資料
	public MemberBean getMemberById(String memberId) {		
		MemberBean mb=null;
		Session session=factory.getCurrentSession();
		mb = session.get(MemberBean.class,memberId);
		
		return mb;
		
	}

	
	// 新增商品兌換資料
		@Override
		public void addClient(ClientBean clb) {

			
			Session session = factory.getCurrentSession();	
				
			
			session.save(clb);		
			
		
		}
		
		@Override
		public List<MemberBean> getMemberAllData() {
			String hql = "FROM MemberBean";
			Session session = null;
			List<MemberBean> list = new ArrayList<>();
			session = factory.getCurrentSession();
			list = session.createQuery(hql).getResultList();
			

			return list;
		}
	
		
		@Override
		public void addMemberA (MemberBean mb) {
			Session session = factory.getCurrentSession();	
			session.saveOrUpdate(mb);
		}
		
		//依會員ID列出資料
		@Override
		public ClientBean getClientByMemId(String memId) {
			ClientBean cb = null;
			Session session = factory.getCurrentSession();	
			cb = session.get(ClientBean.class,memId);
			
			
			return cb;
		}
		
		
}
