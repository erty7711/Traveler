package com.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.model.theme.ThemeApplications;
import com.web.model.theme.ThemeJourneys;
import com.web.model.theme.ThemeProducts;
import com.web.model.theme.ThemeTitles;
import com.web.service.theme.ThemeService;

@Controller
public class ThemeController {
	@Autowired
	ThemeService themeService;
	@Autowired
	HttpSession session;

	//叫出各title，顯示在前台網頁
	@RequestMapping("/theme/titles")
	public String getTitleList(Model model) {
		List<String> list = themeService.getAllTitles();
		model.addAttribute("titleList", list);
		System.out.println(list);//測試
		return "theme/titles";
	}
	//選擇title後，列出相關產品
	@RequestMapping("/theme/products/{titleName}")
	public String getProductsByTitle(@PathVariable("titleName") String titleName, Model model) {
		List<ThemeProducts> list = themeService.getProductsByTitle(titleName);
		model.addAttribute("products", list);
		System.out.println(list);//測試
		return "theme/products";
	}
	
	//顯示全部商品資料 以後會移動連結位置
	@RequestMapping("theme/Products")
	public String productList(Model model) {
		List<ThemeProducts> list = themeService.getAllProducts();
		model.addAttribute("products", list);
		return "theme/Products";	
	}
	
	//依商品名稱抓出團日期
	@RequestMapping("/theme/products/{titleName}/{productName}")
	public String getJourneysByProduct(@PathVariable("productName") String productName, Model model) {
		List<ThemeJourneys> list = themeService.getJourneysByProduct(productName);
		model.addAttribute("journeys", list);
		System.out.println("AAA"+list);//測試
		return "theme/journeys";
	}
	
	//依行程編號抓出單筆detail
	@RequestMapping("/theme/products/{titleName}/{productName}/{journeyId}")
	public String getDetailsByJourneyId(@PathVariable("journeyId") Integer journeyId, Model model) {
	ThemeJourneys list = themeService.getDetailsByJourneyId(journeyId);
	System.out.println(list);
	model.addAttribute("detail", list);
	session.setAttribute("test", list);		
	System.out.println("qqq"+list);//測試	
	return "theme/detail";
	}
	
	//產生空白表單已填入報名資訊
	@RequestMapping(value = "/theme/products/{titleName}/{productName}/{journeyId}/application", method = RequestMethod.GET)
	public String getAddNewApplicationForm(Model model) {
		ThemeApplications ta = new ThemeApplications();
		model.addAttribute("application", ta);
		System.out.println("aaaaaaaa"+ta);
		ThemeJourneys aa = (ThemeJourneys) session.getAttribute("test");
		model.addAttribute("testt",aa);
		return "theme/application";
	}
	//表單填完送出後跳到finishPage
	@RequestMapping(value = "/theme/products/{titleName}/{productName}/{journeyId}/application", method = RequestMethod.POST)
	public String processAddNewApplicationForm(@ModelAttribute("application") ThemeApplications ta) {
		ThemeJourneys tt =(ThemeJourneys) session.getAttribute("test");
		System.out.println("sss"+tt.getJourneyId());
		ta.setJourneyId(tt.getJourneyId());
		System.out.println("fornt"+ta);
		themeService.addApplications(ta);		
		return "index";
	}
	
	@RequestMapping("theme/test")
	public String test(){
		return "theme/test";
	}
}