package com.web.model.airplain;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Formula;



@Entity
@Table(name="airTickets")
public class OrderDetailsBean {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer ID;
	@Column(name="orderID",insertable=false)
	private String orderID;
	private String memberId;
	private String depT;
	private String depDate;
	private String depC;
	private String arrTnextDay;
	private String arrT;
	private String returnDate;
	private String arrC;
	private String returnTime;
	private String returnArrTime;
	private String returnArrTnextDay;
	private Integer price;
	private String airline;
	private String depNum;
	private String returnNum;
	private Integer person;
	private Integer bonus;	
	private Integer guestId;
	private String checkpay;
	@Formula("price/10")
	private Integer redPoint;
	private Date orderDay=new Date();
	
	
	//多對一，單向設定，name代表此Bean所對應表格的欄位名稱，referenceColumnName代表外部鍵表格的主鍵欄位名稱
	//insertable以及updatable要設定成false，因為在資料庫的table中並無此colunm，hibernate在啟動的時候
	//會對有@Entity的註解去資料庫中自己做映對，如果屬性數量不吻合會有問題，所以必須將兩個屬性設定成false，
	//才不會造成錯誤
	
	@ManyToOne
	@JoinColumn(
			name="guestId",referencedColumnName="id",insertable=false,updatable=false)
	private GuestBean guestBean;


	
	






	public String getArrTnextDay() {
		return arrTnextDay;
	}

	public void setArrTnextDay(String arrTnextDay) {
		this.arrTnextDay = arrTnextDay;
	}

	public String getReturnArrTnextDay() {
		return returnArrTnextDay;
	}

	public void setReturnArrTnextDay(String returnArrTnextDay) {
		this.returnArrTnextDay = returnArrTnextDay;
	}

	public Date getOrderDay() {
		return orderDay;
	}

	public void setOrderDay(Date orderDay) {
		this.orderDay = orderDay;
	}

	public Integer getRedPoint() {
		return redPoint;
	}

	public void setRedPoint(Integer redPoint) {
		this.redPoint = redPoint;
	}

	public String getCheckpay() {
		return checkpay;
	}

	public void setCheckpay(String checkpay) {
		this.checkpay = checkpay;
	}

	public Integer getID() {
		return ID;
	}

	public void setID(Integer iD) {
		ID = iD;
	}

	public String getOrderID() {
		return orderID;
	}

	public void setOrderID(String orderID) {
		this.orderID = orderID;
	}


	
	

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getDepT() {
		return depT;
	}

	public void setDepT(String depT) {
		this.depT = depT;
	}

	public String getDepDate() {
		return depDate;
	}

	public void setDepDate(String depDate) {
		this.depDate = depDate;
	}

	public String getDepC() {
		return depC;
	}

	public void setDepC(String depC) {
		this.depC = depC;
	}

	public String getArrT() {
		return arrT;
	}

	public void setArrT(String arrT) {
		this.arrT = arrT;
	}

	public String getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(String returnDate) {
		this.returnDate = returnDate;
	}

	public String getArrC() {
		return arrC;
	}

	public void setArrC(String arrC) {
		this.arrC = arrC;
	}

	public String getReturnTime() {
		return returnTime;
	}

	public void setReturnTime(String returnTime) {
		this.returnTime = returnTime;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getAirline() {
		return airline;
	}

	public void setAirline(String airline) {
		this.airline = airline;
	}

	public String getDepNum() {
		return depNum;
	}

	public void setDepNum(String depNum) {
		this.depNum = depNum;
	}

	public String getReturnNum() {
		return returnNum;
	}

	public void setReturnNum(String returnNum) {
		this.returnNum = returnNum;
	}

	public Integer getPerson() {
		return person;
	}

	public void setPerson(Integer person) {
		this.person = person;
	}

	public Integer getBonus() {
		return bonus;
	}

	public void setBonus(Integer bonus) {
		this.bonus = bonus;
	}


	public Integer getGuestId() {
		return guestId;
	}

	public void setGuestId(Integer guestId) {
		this.guestId = guestId;
	}

	public GuestBean getGuestBean() {
		return guestBean;
	}

	public void setGuestBean(GuestBean guestBean) {
		this.guestBean = guestBean;
	}

	public String getReturnArrTime() {
		return returnArrTime;
	}

	public void setReturnArrTime(String returnArrTime) {
		this.returnArrTime = returnArrTime;
	}

	@Override
	public String toString() {
		return "OrderDetailsBean [ID=" + ID + ", orderID=" + orderID + ", memberId=" + memberId + ", depT=" + depT
				+ ", depDate=" + depDate + ", depC=" + depC + ", arrTnextDay=" + arrTnextDay + ", arrT=" + arrT
				+ ", returnDate=" + returnDate + ", arrC=" + arrC + ", returnTime=" + returnTime + ", returnArrTime="
				+ returnArrTime + ", returnArrTnextDay=" + returnArrTnextDay + ", price=" + price + ", airline="
				+ airline + ", depNum=" + depNum + ", returnNum=" + returnNum + ", person=" + person + ", bonus="
				+ bonus + ", guestId=" + guestId + ", checkpay=" + checkpay + ", redPoint=" + redPoint + ", orderDay="
				+ orderDay + ", guestBean=" + guestBean + "]";
	}






	

}
