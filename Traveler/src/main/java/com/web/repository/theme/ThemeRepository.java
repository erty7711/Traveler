package com.web.repository.theme;

import java.sql.Timestamp;
import java.util.List;

import com.web.model.theme.ThemeTitles;
import com.web.model.theme.ThemeApplications;
import com.web.model.theme.ThemeJourneys;
import com.web.model.theme.ThemeProducts;

public interface ThemeRepository {
	//顯示所有種類名稱
	List<ThemeTitles> getTitles();
	
	//介面(新增主題到第一個表格) 
	void addThemeTitle(ThemeTitles theme);
	
	//顯示所有商品資料
	List<ThemeProducts> getAllProducts();
	
	//顯示所有行程內容
	List<ThemeJourneys> getAllJourneys();
	
	//顯示所有報名表資料
	List<ThemeApplications> getAllApplications();

	//分類查詢 從固定title查該title下商品資料
	//找出所有title
	List<String> getAllTitles();
	//依title抓商品
	List<ThemeProducts> getProductsByTitle(String titleIName);
	
	//分類查詢 從固定商品下查出團日期資料
	//找出所有商品
	List<String> getAllProductName();
	//依商品名稱抓出團日期
	List<ThemeJourneys> getJourneysByProduct(String productName);
	
	//依行程編號抓出單筆detail
	ThemeJourneys getDetailsByJourneyId(Integer journeyId);
	
	//報名 在欄位輸入報名資料
	void addApplications(ThemeApplications application);
	
	//依報名表編號抓出一筆備註extra
	ThemeApplications getExtraByApplicationId(Integer applicationId);
	
	//依商品編號抓特定單筆商品資料
	ThemeProducts getProductByproductId(Integer productId);
	
	//顯示所有行程內容(依出發時間排序)
	List<ThemeJourneys> getAllJourneysBySetOut();
	
	//顯示所有行程內容(依截止時間排序)
	List<ThemeJourneys> getAllJourneysByDeadline();
	
	//顯示所有行程內容(依出發時間排序 desc)
	List<ThemeJourneys> getAllJourneysBySetOutDesc();


}