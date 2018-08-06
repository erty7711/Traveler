package com.web.repository.commodity.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.model.commodity.CommodityBean;
import com.web.repository.commodity.CommodityDAO;

@Repository
@SuppressWarnings("unchecked") // 抑制單類型的警告
public class CommodityRepository implements CommodityDAO {

	@Autowired
	SessionFactory factory;

	// 列出所有商品資料
	@Override
	public List<CommodityBean> getAllData() {
		String hql = "FROM CommodityBean order by commodityid desc";
		Session session = null;
		List<CommodityBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}

	// 改寫上面的 HQL改SQL 但是失敗中
	// @Override
	// public List<CommodityBean> getAllData() {
	// String sql = "select * FROM CommodityBean order by commodityid desc";
	// Session session = null;
	// session = factory.getCurrentSession();
	// List<CommodityBean> list = session.createNativeQuery(sql,CommodityBean.class)
	// .getResultList();
	// return list;
	// }

	// 列出所有商品種類
	@Override
	public List<String> getAllKinds() {
		String hql = "SELECT DISTINCT b.kind FROM CommodityBean b ";
		Session session = factory.getCurrentSession();
		List<String> list = new ArrayList<>();
		list = session.createQuery(hql).getResultList();
		return list;

	}

	// 列出特定類型的商品資料
	@Override
	public List<CommodityBean> getCommodityByKind(String kind,int sort) {
		// String hql = "FROM CommodityBean bb WHERE bb.kind = :kind";
		String hql = "FROM CommodityBean bb WHERE bb.kind = '" + kind + "' order by point";
		
		if(sort==1) hql+=" desc";
		List<CommodityBean> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
			
			// list =session.createQuery(hql).setParameter("kind",kind).getResultList();
			list = session.createQuery(hql).getResultList();

		return list;
	}

	// 新增商品
	@Override
	public void addCommodity(CommodityBean bean) {
		Session session = factory.getCurrentSession();

		session.save(bean);

	}

	@Override
	public void addCommodityA(CommodityBean bean) {
		Session session = factory.getCurrentSession();

		session.saveOrUpdate(bean);

	}

	// 列出單筆商品
	@Override
	public CommodityBean getCommodityById(int commodityid) {
		CommodityBean cb = null;
		Session session = factory.getCurrentSession();
		cb = session.get(CommodityBean.class, commodityid);

		return cb;
	}

	public void update(CommodityBean bean) {
		int id = bean.getCommodityid();
		String name = bean.getName();
		Double Point = bean.getPoint();

		Session session = factory.getCurrentSession();

		CommodityBean bean2 = session.get(CommodityBean.class, id);

		bean2.setName(name);
		bean2.setPoint(Point);
		bean2.setPrice(bean.getPrice());
		bean2.setQuantity(bean.getQuantity());
		session.save(bean2);

	}

	@Override
	public List<CommodityBean> getAllPoint(String kind) {
		String hql = "FROM CommodityBean ";
		if (kind.compareTo("0") != 0)
			hql += " where kind='" + kind + "'";
		hql += " order by point";
		Session session = factory.getCurrentSession();
		List<CommodityBean> list = new ArrayList<>();
		list = session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public List<CommodityBean> getAllPointdesc(String kind) {
		String hql = "FROM CommodityBean ";
		if (kind.compareTo("0") != 0)
			hql += " where kind='" + kind + "'";
		hql += " order by point desc";
		Session session = factory.getCurrentSession();
		List<CommodityBean> list = new ArrayList<>();
		list = session.createQuery(hql).getResultList();
		return list;
	}

}
