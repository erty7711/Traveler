package com.web.model.airplain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="extraPrice")
public class ExtraPriceBean {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String dept;
	private String arrv;
	private String deptChinese;
	private String arrvChinese;
	private String airLineCode;
	private String airLine;
	private Integer extraPrice;
	
	
	@Override
	public String toString() {
		return "ExtraPriceBean [id=" + id + ", dept=" + dept + ", arrv=" + arrv + ", deptChinese=" + deptChinese
				+ ", arrvChinese=" + arrvChinese + ", airLineCode=" + airLineCode + ", airLine=" + airLine
				+ ", extraPrice=" + extraPrice + "]";
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getDept() {
		return dept;
	}


	public void setDept(String dept) {
		this.dept = dept;
	}


	public String getArrv() {
		return arrv;
	}


	public void setArrv(String arrv) {
		this.arrv = arrv;
	}


	public String getDeptChinese() {
		return deptChinese;
	}


	public void setDeptChinese(String deptChinese) {
		this.deptChinese = deptChinese;
	}


	public String getArrvChinese() {
		return arrvChinese;
	}


	public void setArrvChinese(String arrvChinese) {
		this.arrvChinese = arrvChinese;
	}


	public String getAirLineCode() {
		return airLineCode;
	}


	public void setAirLineCode(String airLineCode) {
		this.airLineCode = airLineCode;
	}


	public String getAirLine() {
		return airLine;
	}


	public void setAirLine(String airLine) {
		this.airLine = airLine;
	}


	public Integer getExtraPrice() {
		return extraPrice;
	}


	public void setExtraPrice(Integer extraPrice) {
		this.extraPrice = extraPrice;
	}
	
	
	
	
	
	

}
