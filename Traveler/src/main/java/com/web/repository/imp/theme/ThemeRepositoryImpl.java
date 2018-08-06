package com.web.repository.imp.theme;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.model.theme.ThemeTitles;
import com.web.model.theme.ThemeApplications;
import com.web.model.theme.ThemeJourneys;
import com.web.model.theme.ThemeProducts;
import com.web.repository.theme.ThemeRepository;
@Repository
public class ThemeRepositoryImpl implements ThemeRepository {
	@Autowired
	SessionFactory factory;
	
	//顯示所有種類名稱
	@Override
	@SuppressWarnings("unchecked")
	public List<ThemeTitles> getTitles() {
		String hql = "FROM ThemeTitles";
		Session session = null;
		List<ThemeTitles>list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}
	//新增主題到第一個表格
	@Override
	public void addThemeTitle(ThemeTitles Theme){
		Session session = factory.getCurrentSession();
		session.save(Theme);
	}
	
	//顯示所有商品資料
	@Override
	@SuppressWarnings("unchecked")
	public List<ThemeProducts> getAllProducts(){
		String hql = "FROM ThemeProducts";
		Session session = null;
		List<ThemeProducts> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}
	
	//顯示所有行程內容
	@Override
	@SuppressWarnings("unchecked")
	public List<ThemeJourneys> getAllJourneys(){
		String hql = "FROM ThemeJourneys";
		Session session = null;
		List<ThemeJourneys> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}
	
	//顯示所有報名資料
	@Override
	@SuppressWarnings("unchecked")
	public List<ThemeApplications> getAllApplications(){
		String hql = "FROM ThemeApplications order by applicationId DESC";
		Session session = null;
		List<ThemeApplications> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}
	
	//分類查詢 從固定title查該title下商品資料
	//找出所有title
	@SuppressWarnings("unchecked")
	public List<String> getAllTitles(){
		String hql = "SELECT DISTINCT titleName FROM ThemeTitles";
		Session session = factory.getCurrentSession();
		List<String> list = new ArrayList<>();
		list = session.createQuery(hql).getResultList();
		return list;
	}
	//依title抓產品 //要抓外部表格的titleName(HQL做修改)
	@SuppressWarnings("unchecked")
	public List<ThemeProducts> getProductsByTitle(String titleName){
		String hql = "FROM ThemeProducts tt WHERE tt.themeTitles.titleName  = :titleName ";
		List<ThemeProducts> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		list = session.createQuery(hql).setParameter("titleName",titleName).getResultList();
		return list;
	}
	
	//分類查詢 從固定商品下查出團日期資料
	//找出所有商品
	@SuppressWarnings("unchecked")
	public List<String> getAllProductName(){
		String hql = "SELECT DISTINCT productName FROM ThemeProducts ";
		Session session = factory.getCurrentSession();
		List<String> list = new ArrayList<>();
		list = session.createQuery(hql).getResultList();
		return list;
	}
	
	//依商品名稱抓出團日期
	@SuppressWarnings("unchecked")
	public List<ThemeJourneys> getJourneysByProduct(String productName){
		String hql = "FROM ThemeJourneys tt WHERE tt.themeProducts.productName  = :productName ";
		List<ThemeJourneys> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		list = session.createQuery(hql).setParameter("productName",productName).getResultList();
		return list;	
	}
	
	//依行程編號抓出單筆行程資料detail
	public ThemeJourneys getDetailsByJourneyId(Integer journeyId){
		String hql = "FROM ThemeJourneys where journeyId = :journeyId";
		Session session = factory.getCurrentSession();
		ThemeJourneys themeJourneys = (ThemeJourneys) session.createQuery(hql).setParameter("journeyId",journeyId).uniqueResult();
		return themeJourneys;
	}
	
	//報名 在欄位輸入報名資料
	@Override
	public void addApplications(ThemeApplications application) {
	Session session = factory.getCurrentSession();
	System.out.println(application);
	session.saveOrUpdate(application);
	}	
	
	//依報名表編號抓出一筆備註extra
	public ThemeApplications getExtraByApplicationId(Integer applicationId) {
	String hql = "FROM ThemeApplications where applicationId = :applicationId";
	Session session = factory.getCurrentSession();
	ThemeApplications themeApplications = (ThemeApplications) session.createQuery(hql).setParameter("applicationId",applicationId).uniqueResult();
	return themeApplications;
	}
	
	 //依商品編號抓特定單筆商品資料
	public ThemeProducts getProductByproductId(Integer productId) {
		String hql = "FROM ThemeProducts where productId = :productId";
		Session session = factory.getCurrentSession();
		ThemeProducts themeProducts = (ThemeProducts) session.createQuery(hql).setParameter("productId",productId).uniqueResult();
		return themeProducts;		
	}
	@Override
	@SuppressWarnings("unchecked")
	//顯示所有行程內容(依出發時間排序)
	public List<ThemeJourneys> getAllJourneysBySetOut(){
		String hql = "FROM ThemeJourneys order by setOut";
		Session session = null;
		List<ThemeJourneys> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}
	@Override
	@SuppressWarnings("unchecked")
	//顯示所有行程內容(依截止時間排序)
	public List<ThemeJourneys> getAllJourneysByDeadline(){
		String hql = "FROM ThemeJourneys order by deadline";
		Session session = null;
		List<ThemeJourneys> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}
	@Override
	@SuppressWarnings("unchecked")
	//顯示所有行程內容(依出發時間排序)
	public List<ThemeJourneys> getAllJourneysBySetOutDesc(){
	String hql = "FROM ThemeJourneys order by setOut DESC";
	Session session = null;
	List<ThemeJourneys> list = new ArrayList<>();
	session = factory.getCurrentSession();
	list = session.createQuery(hql).getResultList();
	return list;
	}
	
	
	

}