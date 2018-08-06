package com.web.model.hotel;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "BookingDate")
public class HotelBookingDateBean implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer booking_id;
	private Integer hote_no;
	private Integer rom_no;
	private Timestamp DateTime;
	private Integer double_stock;
	private Integer quad_stock;

	public HotelBookingDateBean(Integer booking_id, Integer hote_no, Integer rom_no, Timestamp dateTime,
			Integer double_stock, Integer quad_stock) {
		super();
		this.booking_id = booking_id;
		this.hote_no = hote_no;
		this.rom_no = rom_no;
		DateTime = dateTime;
		this.double_stock = double_stock;
		this.quad_stock = quad_stock;
	}

	public HotelBookingDateBean() {

	}

	public Integer getBooking_id() {
		return booking_id;
	}

	public void setBooking_id(Integer booking_id) {
		this.booking_id = booking_id;
	}

	public Integer getHote_no() {
		return hote_no;
	}

	public void setHote_no(Integer hote_no) {
		this.hote_no = hote_no;
	}

	public Integer getRom_no() {
		return rom_no;
	}

	public void setRom_no(Integer rom_no) {
		this.rom_no = rom_no;
	}

	public Timestamp getDateTime() {
		return DateTime;
	}

	public void setDateTime(Timestamp dateTime) {
		DateTime = dateTime;
	}

	public Integer getDouble_stock() {
		return double_stock;
	}

	public void setDouble_stock(Integer double_stock) {
		this.double_stock = double_stock;
	}

	public Integer getQuad_stock() {
		return quad_stock;
	}

	public void setQuad_stock(Integer quad_stock) {
		this.quad_stock = quad_stock;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "HotelBookingDateBean [booking_id=" + booking_id + ", hote_no=" + hote_no + ", rom_no=" + rom_no
				+ ", DateTime=" + DateTime + ", double_stock=" + double_stock + ", quad_stock=" + quad_stock + "]";
	}
	
	

}
