package com.web.model.theme;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="ThemeProducts")
@XmlRootElement
public class ThemeProducts implements Serializable{
	private static final long serialVersionUID = 1L;
	//PK
	private Integer productId;
	//FK
	private Integer titleId;
	private String productName;
	private String country;
	private String hotelName;
	//圖片檔 大圖
	private MultipartFile adImage;
	@Transient
	@XmlTransient	
	public MultipartFile getAdImage(){
		return adImage;
	}
	public void setAdImagee(MultipartFile adImage){
		this.adImage = adImage;
	}
	//圖片檔 大圖檔名
	private String adImageName;
	
	//廣告文宣
	private String adTitle;
	private String adDes;
	private String ad1;
	private String ad2;
	private String ad3;
	
	//第一天的內容
	private String title1;
	//第一天 圖片
	private MultipartFile image1;
	@Transient
	@XmlTransient
	public MultipartFile getImage1(){
		return image1;
	}
	public void setImage1(MultipartFile image1){
		this.image1 = image1;
	}
	//第一天 圖片檔名
	private String fileName1;
	private String descriTitle1;
	private String description1;
	private String breakfast1;
	private String lunch1;
	private String dinner1;
	
	//第二天的內容
	private String title2;
	//第二天 圖片
	private MultipartFile image2;
	@Transient
	@XmlTransient	
	public MultipartFile getImage2(){
		return image2;
	}
	public void setImage2(MultipartFile image2){
		this.image2 = image2;
	}
	//第二天 圖片檔名
	private String fileName2;
	private String descriTitle2;
	private String description2;
	private String breakfast2;
	private String lunch2;
	private String dinner2;
	
	//第三天的內容
	private String title3;
	//第三天 圖片
	private MultipartFile image3;
	@Transient
	@XmlTransient	
	public MultipartFile getImage3(){
		return image3;
	}
	public void setImage3(MultipartFile image3){
		this.image3 = image3;
	}
	//第三天 圖片檔名
	private String fileName3;
	private String descriTitle3;
	private String description3;
	private String breakfast3;
	private String lunch3;
	private String dinner3;
	
	//FK的表格
	private ThemeTitles themeTitles;
	private ThemeJourneys themeJourneys;
	//FK
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="titleId" ,referencedColumnName="titleId", insertable=false, updatable=false)
    public ThemeTitles getThemeTitles() {
		return themeTitles;
	}
	public void setThemeTitles(ThemeTitles themeTitles) {
		this.themeTitles = themeTitles;
	}
		
	//帶參數建構子  //FK的表格也放入
	public ThemeProducts(Integer productId, Integer titleId, String productName, 
			String country, String hotelName, String adImageName, String adTitle,
			String adDes, String ad1, String ad2, String ad3, String title1, 
			String fileName1, String descriTitle1, String description1, 
			String breakfast1, String lunch1, String dinner1, String title2, 
			String fileName2, String descriTitle2, String description2, 
			String breakfast2, String lunch2, String dinner2, String title3, 
			String fileName3, String descriTitle3, String description3, 
			String breakfast3, String lunch3, String dinner3, ThemeTitles themeTitles) {
		this.productId = productId;
		this.titleId = titleId;
		this.productName = productName;
		this.country = country;
		this.hotelName = hotelName;
		this.adImageName = adImageName;
		
		this.adTitle = adTitle;
		this.adDes= adDes;
		this.ad1 = ad1;
		this.ad2 = ad2;
		this.ad3 = ad3;
		
		this.title1 = title1;
		this.fileName1 = fileName1;
		this.descriTitle1 = descriTitle1;
		this.description1 = description1;
		this.breakfast1 = breakfast1;
		this.lunch1 = lunch1;
		this.dinner1 = dinner1;
		
		this.title2 = title2;
		this.fileName2 = fileName2;
		this.descriTitle2 = descriTitle2;
		this.description2 = description2;
		this.breakfast2 = breakfast2;
		this.lunch2 = lunch2;
		this.dinner2 = dinner2;
		
		this.title3 = title3;
		this.fileName3 = fileName3;
		this.descriTitle3 = descriTitle3;
		this.description3 = description3;
		this.breakfast3 = breakfast3;
		this.lunch3 = lunch3;
		this.dinner3 = dinner3;	
		//FK的表格
		this.themeTitles = themeTitles;
	}
	//空建構子
	public ThemeProducts() {
	}
	@Id//指定PK鍵
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getProductId() {   
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	//FK
	@Transient
	public Integer getTitleId() {   
		return titleId;
	}
	public void setTitleId(Integer titleId) {
		this.titleId = titleId;
	}	
	public String getProductName() {   
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getCountry() {   
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getHotelName() {   
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getAdImageName() {   
		return adImageName;
	}
	public void setAdImageName(String adImageName) {
		this.adImageName = adImageName;
	}
	

	//
	public String getAdTitle() {
		return adTitle;
	}
	public void setAdTitle(String adTitle) {
		this.adTitle = adTitle;
	}
	public String getAdDes() {
		return adDes;
	}
	public void setAdDes(String adDes) {
		this.adDes = adDes;
	}
	public String getAd1() {
		return ad1;
	}
	public void setAd1(String ad1) {
		this.ad1 = ad1;
	}
	public String getAd2() {
		return ad2;
	}
	public void setAd2(String ad2) {
		this.ad2 = ad2;
	}
	public String getAd3() {
		return ad3;
	}
	public void setAd3(String ad3) {
		this.ad3 = ad3;
	}
	//第一天
	public String getTitle1() {   
		return title1;
	}
	public void setTitle1(String title1) {
		this.title1 = title1;
	}
	public String getFileName1() {   
		return fileName1;
	}
	public void setFileName1(String fileName1) {
		this.fileName1 = fileName1;
	}
	public String getDescriTitle1() {   
		return descriTitle1;
	}
	public void setDescriTitle1(String descriTitle1) {
		this.descriTitle1 = descriTitle1;
	}
	public String getDescription1() {   
		return description1;
	}
	public void setDescription1(String description1) {
		this.description1 = description1;
	}
	public String getBreakfast1() {   
		return breakfast1;
	}
	public void setBreakfast1(String breakfast1) {
		this.breakfast1 = breakfast1;
	}
	public String getLunch1() {   
		return lunch1;
	}
	public void setLunch1(String lunch1) {
		this.lunch1 = lunch1;
	}
	public String getDinner1() {   
		return dinner1;
	}
	public void setDinner1(String dinner1) {
		this.dinner1 = dinner1;
	}	
	
	//第二天
	public String getTitle2() {   
		return title2;
	}
	public void setTitle2(String title2) {
		this.title2 = title2;
	}
	public String getFileName2() {   
		return fileName2;
	}
	public void setFileName2(String fileName2) {
		this.fileName2 = fileName2;
	}
	public String getDescriTitle2() {   
		return descriTitle2;
	}
	public void setDescriTitle2(String descriTitle2) {
		this.descriTitle2 = descriTitle2;
	}
	public String getDescription2() {   
		return description2;
	}
	public void setDescription2(String description2) {
		this.description2 = description2;
	}
	public String getBreakfast2() {   
		return breakfast2;
	}
	public void setBreakfast2(String breakfast2) {
		this.breakfast2 = breakfast2;
	}
	public String getLunch2() {   
		return lunch2;
	}
	public void setLunch2(String lunch2) {
		this.lunch2 = lunch2;
	}
	public String getDinner2() {   
		return dinner2;
	}
	public void setDinner2(String dinner2) {
		this.dinner2 = dinner2;
	}
	
	//第三天
	public String getTitle3() {   
		return title3;
	}
	public void setTitle3(String title3) {
		this.title3 = title3;
	}
	public String getFileName3() {   
		return fileName3;
	}
	public void setfileName3(String fileName3) {
		this.fileName3 = fileName3;
	}
	public String getDescriTitle3() {   
		return descriTitle3;
	}
	public void setDescriTitle3(String descriTitle3) {
		this.descriTitle3 = descriTitle3;
	}
	public String getDescription3() {   
		return description3;
	}
	public void setDescription3(String description3) {
		this.description3 = description3;
	}
	public String getBreakfast3() {   
		return breakfast3;
	}
	public void setBreakfast3(String breakfast3) {
		this.breakfast3 = breakfast3;
	}
	public String getLunch3() {   
		return lunch3;
	}
	public void setLunch3(String lunch3) {
		this.lunch3 = lunch3;
	}
	public String getDinner3() {   
		return dinner3;
	}
	public void setDinner3(String dinner3) {
		this.dinner3 = dinner3;
	}
	//記得確認外部表格
	@Override
	public String toString() {
		return "ThemeProducts [productId=" + productId + ", titleId=" + titleId + ", productName=" + productName
				+ ", country=" + country + ", hotelName=" + hotelName + ", adImage=" + adImage + ", adImageName="
				+ adImageName + ", adTitle=" + adTitle + ", adDes=" + adDes + ", ad1=" + ad1 + ", ad2=" + ad2 + ", ad3="
				+ ad3 + ", title1=" + title1 + ", image1=" + image1 + ", fileName1=" + fileName1 + ", descriTitle1="
				+ descriTitle1 + ", description1=" + description1 + ", breakfast1=" + breakfast1 + ", lunch1=" + lunch1
				+ ", dinner1=" + dinner1 + ", title2=" + title2 + ", image2=" + image2 + ", fileName2=" + fileName2
				+ ", descriTitle2=" + descriTitle2 + ", description2=" + description2 + ", breakfast2=" + breakfast2
				+ ", lunch2=" + lunch2 + ", dinner2=" + dinner2 + ", title3=" + title3 + ", image3=" + image3
				+ ", fileName3=" + fileName3 + ", descriTitle3=" + descriTitle3 + ", description3=" + description3
				+ ", breakfast3=" + breakfast3 + ", lunch3=" + lunch3 + ", dinner3=" + dinner3 + ", themeTitles="
				+ themeTitles + "]";
	}
	
}
