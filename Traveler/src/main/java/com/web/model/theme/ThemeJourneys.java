package com.web.model.theme;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@Table(name="ThemeJourneys")
@XmlRootElement
public class ThemeJourneys implements Serializable{
	private static final long serialVersionUID = 1L;
	//PK
	private Integer journeyId;
	//FK
	private Integer productId;
	//出發日期
	private Timestamp setOut;
	//返回日期
	private Timestamp returnDay;
	//報名截止日
	private Timestamp deadline;
	//建立日期
	private Timestamp createDate;
	//價格
	private String price;
	//航空公司名
	private String companyName;
	//出發班機編號
	private String goPlaneId;
	//回程班機編號
	private String returnPlaneId;
	//出發-起飛-日期
	private Timestamp goStartDate;
	//出發-起飛-時
	private String goStartHour;
	//出發-起飛-分
	private String goStartMinute;
	//出發-抵達-日期
	private Timestamp goEndDate;
	//出發-抵達-時
	private String goEndHour;
	//出發-抵達-分
	private String goEndMinute;
	//出發-起飛-機場
	private String goStartWhere;
	//出發-抵達-機場
	private String goEndWhere;
	//返回-起飛-日期
	private Timestamp returnStartDate;
    //返回-起飛-時
	private String returnStartHour;
	//返回-起飛-分
	private String returnStartMinute;
	//返回-抵達-日期
	private Timestamp returnEndDate;
	//返回-抵達-時
	private String returnEndHour;
	//返回-抵達-分
	private String returnEndMinute;
	//返回-起飛-機場
	private String returnStartWhere;
	//返回-抵達-機場
	private String returnEndWhere;
	
	//FK的表格
	private ThemeProducts themeProducts;
	//FK
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="productId",referencedColumnName="productId", insertable=false, updatable=false)
    public ThemeProducts getThemeProducts() {
		return themeProducts;
	}
	public void setThemeProducts(ThemeProducts themeProducts) {
		this.themeProducts = themeProducts;
	}
	//FK的表格
	private ThemeTitles themeTitles;
	
	//帶參數建構子 //放入FK的表格
	public ThemeJourneys(Integer journeyId, Integer productId, Timestamp setOut,
			Timestamp returnDay, Timestamp deadline, Timestamp createDate, 
			String price, String companyName, String goPlaneId, String returnPlaneId, 
			Timestamp goStartDate, String goStartHour, String goStartMinute, 
			Timestamp goEndDate, String goEndHour, String goEndMinute, 
			String goStartWhere, String goEndWhere, Timestamp returnStartDate, 
			String returnStartHour, String returnStartMinute, Timestamp returnEndDate, 
			String returnEndHour, String returnEndMinute, String returnStartWhere, 
			String returnEndWhere, ThemeProducts themeProducts, ThemeTitles themeTitles) {
		this.journeyId = journeyId;
		this.productId = productId;
		this.setOut = setOut;
		this.returnDay = returnDay;
		this.deadline = deadline;
		this.createDate = createDate;
		this.price = price;
		
		this.companyName = companyName;
		this.goPlaneId = goPlaneId;
		this.returnPlaneId = returnPlaneId;
		
		this.goStartDate = goStartDate;
		this.goStartHour = goStartHour;
		this.goStartMinute = goStartMinute;
		this.goEndDate = goEndDate;
		this.goEndHour = goEndHour;
		this.goEndMinute = goEndMinute;
		this.goStartWhere = goStartWhere;
		this.goEndWhere = goEndWhere;
		
		this.returnStartDate = returnStartDate;
		this.returnStartHour = returnStartHour;
		this.returnStartMinute = returnStartMinute;
		this.returnEndDate = returnEndDate;
		this.returnEndHour = returnEndHour;
		this.returnEndMinute = returnEndMinute;
		this.returnStartWhere = returnStartWhere;
		this.returnEndWhere = returnEndWhere;
		//FK的表格
		this.themeProducts = themeProducts;
		this.themeTitles = themeTitles;
	}
	//空建構子
	public ThemeJourneys() {	
	}
	
	@Id//指定PK鍵
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getJourneyId() {   
		return journeyId;
	}
	public void setJourneyId(Integer journeyId) {
		this.journeyId = journeyId;
	}
	//FK
	@Transient
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	//出發日期
	public Timestamp getSetOut() {
		return setOut;
	}
	public void setSetOut(Timestamp setOut) {
		this.setOut = setOut;
	}
	//返回日期
	public Timestamp getReturnDay() {
		return returnDay;
	}
	public void setReturnDay(Timestamp returnDay) {
		this.returnDay = returnDay;
	}
	//報名截止日
	public Timestamp getDeadline() {
		return deadline;
	}
	public void setDeadline(Timestamp deadline) {
		this.deadline = deadline;
	}
	//建立日期
	public Timestamp getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}
	//價格
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	//航空公司名
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	//出發班機編號
	public String getGoPlaneId() {
		return goPlaneId;
	}
	public void setGoPlaneId(String goPlaneId) {
		this.goPlaneId = goPlaneId;
	}
	//回程班機編號
	public String getReturnPlaneId() {
		return returnPlaneId;
	}
	public void setReturnPlaneId(String returnPlaneId) {
		this.returnPlaneId = returnPlaneId;
	}
	//出發-起飛-日期
	public Timestamp getGoStartDate() {
		return goStartDate;
	}
	public void setGoStartDate(Timestamp goStartDate) {
		this.goStartDate = goStartDate;
	}
	//出發-起飛-時
	public String getGoStartHour() {
		return goStartHour;
	}
	public void setGoStartHour(String goStartHour) {
		this.goStartHour = goStartHour;
	}
	//出發-起飛-分
	public String getGoStartMinute() {
		return goStartMinute;
	}
	public void setGoStartMinute(String goStartMinute) {
		this.goStartMinute = goStartMinute;
	}
	//出發-抵達-日期
	public Timestamp getGoEndDate() {
		return goEndDate;
	}
	public void setGoEndDate(Timestamp goEndDate) {
		this.goEndDate = goEndDate;
	}
	//出發-抵達-時
	public String getGoEndHour() {
		return goEndHour;
	}
	public void setGoEndHour(String goEndHour) {
		this.goEndHour = goEndHour;
	}
	//出發-抵達-分
	public String getGoEndMinute() {
		return goEndMinute;
	}
	public void setGoEndMinute(String goEndMinute) {
		this.goEndMinute = goEndMinute;
	}
	//出發-起飛-地點
	public String getGoStartWhere() {
		return goStartWhere;
	}
	public void setGoStartWhere(String goStartWhere) {
		this.goStartWhere = goStartWhere;
	}
	//出發-抵達-地點
	public String getGoEndWhere() {
		return goEndWhere;
	}
	public void setGoEndWhere(String goEndWhere) {
		this.goEndWhere = goEndWhere;
	}
	//返回-起飛-日期
	public Timestamp getReturnStartDate() {
		return returnStartDate;
	}
	public void setReturnStartDate(Timestamp returnStartDate) {
		this.returnStartDate= returnStartDate;
	}
	//返回-起飛-時
	public String getReturnStartHour() {
		return returnStartHour;
	}
	public void setReturnStartHour(String returnStartHour) {
		this.returnStartHour = returnStartHour;
	}
	//返回-起飛-分
	public String getReturnStartMinute() {
		return returnStartMinute;
	}
	public void setReturnStartMinute(String returnStartMinute) {
		this.returnStartMinute = returnStartMinute;
	}
	//返回-抵達-日期
	public Timestamp getReturnEndDate() {
		return returnEndDate;
	}
	public void setReturnEndDate(Timestamp returnEndDate) {
		this.returnEndDate = returnEndDate;
	}
	//返回-抵達-時
	public String getReturnEndHour() {
		return returnEndHour;
	}
	public void setReturnEndHour(String returnEndHour) {
		this.returnEndHour = returnEndHour;
	}
	//返回-抵達-分
	public String getReturnEndMinute() {
		return returnEndMinute;
	}
	public void setReturnEndMinute(String returnEndMinute) {
		this.returnEndMinute = returnEndMinute;
	}
	//返回-起飛-地點
	public String getReturnStartWhere() {
		return returnStartWhere;
	}
	public void setReturnStartWhere(String returnStartWhere) {
		this.returnStartWhere = returnStartWhere;
	}
	//返回-抵達-地點
	public String getReturnEndWhere() {
		return returnEndWhere;
	}
	public void setReturnEndWhere(String returnEndWhere) {
		this.returnEndWhere = returnEndWhere;
	}
	@Override
	public String toString() {//加入FK表格
		return "ThemeJourneys [journeyId=" + journeyId + ", productId=" + productId + ", setOut=" + setOut
				+ ", returnDay=" + returnDay + ", deadline=" + deadline + ", createDate=" + createDate + ", price="
				+ price + ", companyName=" + companyName + ", goPlaneId=" + goPlaneId + ", returnPlaneId="
				+ returnPlaneId + ", goStartDate=" + goStartDate + ", goStartHour=" + goStartHour + ", goStartMinute="
				+ goStartMinute + ", goEndDate=" + goEndDate + ", goEndHour=" + goEndHour + ", goEndMinute="
				+ goEndMinute + ", goStartWhere=" + goStartWhere + ", goEndWhere=" + goEndWhere + ", returnStartDate="
				+ returnStartDate + ", returnStartHour=" + returnStartHour + ", returnStartMinute=" + returnStartMinute
				+ ", returnEndDate=" + returnEndDate+ ", returnEndHour=" + returnEndHour + ", returnEndMinute="
				+ returnEndMinute + ", returnStartWhere=" + returnStartWhere + ", returnEndWhere=" + returnEndWhere
				+ ", themeProducts=" + themeProducts + ", themeTitles=" + themeTitles + "]";
	}
	
}
