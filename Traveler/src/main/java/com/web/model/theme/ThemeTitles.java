package com.web.model.theme;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.web.multipart.MultipartFile;
//裡面裝了主題旅遊名稱跟流水號的設定
@Entity
@Table(name="ThemeTitles")
@XmlRootElement
public class ThemeTitles implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer titleId ;
	private String  titleName;
	private String  fileName;
	//圖片檔
	private MultipartFile titleImage;
	
	//接收圖片檔get set
	@Transient
	@XmlTransient
	public MultipartFile getTitleImage(){
		return titleImage;
	}
	public void setTitleImage(MultipartFile titleImage){
		this.titleImage = titleImage;
	}
	//帶參數建構子
	public ThemeTitles(Integer titleId, String titleName, String fileName){
	this.titleId = titleId;
	this.titleName = titleName;
	this.fileName = fileName;
	
}
	//空建構子
	public ThemeTitles() {
	}
	@Id//指定PK鍵
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getTitleId() {   
		return titleId;
	}
	public void setTitleId(Integer titleId) {
		this.titleId = titleId;
	}
	public String getTitleName() {
		return titleName;
	}
	public void setTitleName(String titleName) {
		this.titleName = titleName;
	}	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	@Override
	public String toString() {
		return "ThemeTitles [titleId=" + titleId + ", titleName=" + titleName + ", fileName=" + fileName + "]";
	}
	
}
