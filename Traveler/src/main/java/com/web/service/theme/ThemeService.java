package com.web.service.theme;

import java.util.List;

import com.web.model.theme.ThemeTitles;
import com.web.model.theme.ThemeApplications;
import com.web.model.theme.ThemeJourneys;
import com.web.model.theme.ThemeProducts;

public interface ThemeService {
	//介面 顯示全部主題
	List<ThemeTitles> getTitles();
	
	void addThemeTitle(ThemeTitles theme);
	
	//顯示所有商品資料
	List<ThemeProducts> getAllProducts();
	
	//顯示所有行程內容
	List<ThemeJourneys> getAllJourneys();
	
	//顯示所有報名表內容
	List<ThemeApplications> getAllApplications();
	
	//分類查詢 從固定title查該title下商品資料
	//找出所有title
	List<String> getAllTitles();
	//依title抓產品
	List<ThemeProducts> getProductsByTitle(String titleName);
	
	//分類查詢 從固定商品下查出團日期資料
	//找出所有商品
	List<String> getAllProductName();
	//依商品名稱抓出團日期
	List<ThemeJourneys> getJourneysByProduct(String productName);
	
	//依行程編號抓出detail
	ThemeJourneys getDetailsByJourneyId(Integer journeyId);
	
	//報名申請表
	void addApplications(ThemeApplications application);
	
	//依報名表編號抓出一筆備註extra
	ThemeApplications getExtraByApplicationId(Integer applicationId);
	
	//依商品編號抓特定單筆商品資料
	ThemeProducts getProductByproductId(Integer productId);
	
	//顯示所有行程內容(依出發時間排序)
	List<ThemeJourneys> getAllJourneysBySetOut();
	
	//顯示所有行程內容(依截止時間排序)
	List<ThemeJourneys> getAllJourneysByDeadline();
	
	//顯示所有行程內容(依出發時間排序DESC)
	List<ThemeJourneys> getAllJourneysBySetOutDesc();
	

}
