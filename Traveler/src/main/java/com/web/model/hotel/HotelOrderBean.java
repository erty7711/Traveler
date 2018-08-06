package com.web.model.hotel;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

//@Entity
@Table(name = "Order")
public class HotelOrderBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer order_id;
	private String hotel_name;
	private String cancelTag;
	private String invoiceTitle;
	private String member_no;
	private Timestamp order_date;
	private Timestamp booking_date;
	private Integer rm_no;
	@Column(columnDefinition="decimal(12, 1)")
	private Double totalAmount;
	public HotelOrderBean(Integer order_id, String hotel_name, String cancelTag, String invoiceTitle, String member_no,
			Timestamp order_date, Timestamp booking_date, Integer rm_no, Double totalAmount) {
		super();
		this.order_id = order_id;
		this.hotel_name = hotel_name;
		this.cancelTag = cancelTag;
		this.invoiceTitle = invoiceTitle;
		this.member_no = member_no;
		this.order_date = order_date;
		this.booking_date = booking_date;
		this.rm_no = rm_no;
		this.totalAmount = totalAmount;
	}
	public HotelOrderBean() {
		
	}
	public Integer getOrder_id() {
		return order_id;
	}
	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}
	public String getHotel_name() {
		return hotel_name;
	}
	public void setHotel_name(String hotel_name) {
		this.hotel_name = hotel_name;
	}
	public String getCancelTag() {
		return cancelTag;
	}
	public void setCancelTag(String cancelTag) {
		this.cancelTag = cancelTag;
	}
	public String getInvoiceTitle() {
		return invoiceTitle;
	}
	public void setInvoiceTitle(String invoiceTitle) {
		this.invoiceTitle = invoiceTitle;
	}
	
	public String getMember_no() {
		return member_no;
	}
	public void setMember_no(String member_no) {
		this.member_no = member_no;
	}
	
	public Timestamp getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Timestamp order_date) {
		this.order_date = order_date;
	}
	public Timestamp getBooking_date() {
		return booking_date;
	}
	public void setBooking_date(Timestamp booking_date) {
		this.booking_date = booking_date;
	}
	public Integer getRm_no() {
		return rm_no;
	}
	public void setRm_no(Integer rm_no) {
		this.rm_no = rm_no;
	}
	public Double getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(Double totalAmount) {
		this.totalAmount = totalAmount;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "HotelOrderBean []";
	}
	

	
	
	


	

}

