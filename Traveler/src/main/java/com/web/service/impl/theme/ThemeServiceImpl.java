package com.web.service.impl.theme;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.model.theme.ThemeTitles;
import com.web.model.theme.ThemeApplications;
import com.web.model.theme.ThemeJourneys;
import com.web.model.theme.ThemeProducts;
import com.web.repository.theme.ThemeRepository;
import com.web.service.theme.ThemeService;

@Service
public class ThemeServiceImpl implements ThemeService {
	
	@Autowired
	private ThemeRepository themeRepository;
	//查詢第一個表格(多筆)
	@Transactional
	@Override
	public List<ThemeTitles> getTitles() {		
		return themeRepository.getTitles();		
	}
	@Transactional
	@Override
	public void addThemeTitle(ThemeTitles Theme) {
		themeRepository.addThemeTitle(Theme);
	}
	
	//顯示所有商品資料
	@Transactional
	@Override
	public List<ThemeProducts> getAllProducts(){
		return themeRepository.getAllProducts();		
	}
	//顯示所有行程內容
	@Transactional
	@Override
	public List<ThemeJourneys> getAllJourneys(){
		return themeRepository.getAllJourneys();		
	}
	//顯示所有報名表內容
	@Transactional
	@Override
	public List<ThemeApplications> getAllApplications(){
		return themeRepository.getAllApplications();		
	}
	
	//分類查詢 從固定title查該title下商品資料
	//找出所有title
	@Transactional
	@Override
	public List<String> getAllTitles(){
		return themeRepository.getAllTitles();	
	}
	//依title抓產品
	@Transactional
	@Override
	public List<ThemeProducts> getProductsByTitle(String titleName){
		return themeRepository.getProductsByTitle(titleName);		
	}
	
	//分類查詢 從固定商品下查出團日期資料
	//找出所有商品
	@Transactional
	@Override
	public List<String> getAllProductName(){
		return themeRepository.getAllProductName();
	}
	
	//依商品名稱抓出團日期
	@Transactional
	@Override
	public List<ThemeJourneys> getJourneysByProduct(String productName){
		return themeRepository.getJourneysByProduct(productName);
	}
	
	 //依行程編號抓出單筆detail
	@Transactional
	@Override
	public ThemeJourneys getDetailsByJourneyId(Integer journeyId){
		return themeRepository.getDetailsByJourneyId(journeyId);	
	}
	
	//報名申請表
	@Transactional
	@Override
	public void addApplications(ThemeApplications application) {
		themeRepository.addApplications(application); 
	}
	//依報名表編號抓出一筆備註extra
	@Transactional
	@Override
	public ThemeApplications getExtraByApplicationId(Integer applicationId) {
		return themeRepository.getExtraByApplicationId(applicationId);
	}
	
	//依商品編號抓特定單筆商品資料
	@Transactional
	@Override
	public ThemeProducts getProductByproductId(Integer productId){
		return themeRepository.getProductByproductId(productId);
	}
	@Transactional
	@Override
	//顯示所有行程內容(依出發時間排序)
	public List<ThemeJourneys> getAllJourneysBySetOut(){
		return themeRepository.getAllJourneysBySetOut();
	}
	@Transactional
	@Override
	//顯示所有行程內容(依截止時間排序)
	public List<ThemeJourneys> getAllJourneysByDeadline(){
		return themeRepository.getAllJourneysByDeadline();
	}
	@Transactional
	@Override
	//顯示所有行程內容(依出發時間排序DESC	)
	public List<ThemeJourneys> getAllJourneysBySetOutDesc(){
		return themeRepository.getAllJourneysBySetOutDesc();
	}

}
