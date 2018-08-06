package com.web.repository.commodity;

import java.util.List;

import com.web.model.commodity.CommodityBean;




public interface CommodityDAO {
	List<CommodityBean> getAllData(); 

	List<String> getAllKinds();
	
	void addCommodity(CommodityBean bean);
	 
		CommodityBean getCommodityById(int commodityid);
	
	List<CommodityBean> getCommodityByKind(String kind,int sort);
	

	 void update(CommodityBean bean);
	 
	 void addCommodityA(CommodityBean bean);
	 
//	void delete(String title);
	 
	    List<CommodityBean> getAllPoint(String kind);
		List<CommodityBean> getAllPointdesc(String kind);
	 
	}
