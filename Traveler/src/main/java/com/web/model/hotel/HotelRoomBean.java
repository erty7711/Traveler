package com.web.model.hotel;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "Room")
public class HotelRoomBean implements Serializable {
	private static final long serialVersionUID = 1L;

	private Integer hotel_no;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer room_id;
	private String occupancy;
	private Integer stock;
	@Column(columnDefinition = "decimal(7, 3)")
	private Double discount;
	@Column(columnDefinition = "decimal(10, 1)")
	private Double price;
	private Integer pic_no;
	private Integer booking_no;
	
	
	
	@ManyToOne
	@JoinColumn(name="booking_no", referencedColumnName="booking_id", insertable=false, updatable=false) 
	private HotelBookingDateBean hotelBookingDateBean;

	public HotelBookingDateBean getHotelBookingDateBean() {
		return hotelBookingDateBean;
	}

	public void setHotelBookingDateBean(HotelBookingDateBean hotelBookingDateBean) {
		this.hotelBookingDateBean = hotelBookingDateBean;
	}

	

	public HotelRoomBean(Integer hotel_no, Integer room_id, String occupancy, Integer stock, Double discount,
			Double price, Integer pic_no, Integer booking_no, String priceStr) {
		super();
		this.hotel_no = hotel_no;
		this.room_id = room_id;
		this.occupancy = occupancy;
		this.stock = stock;
		this.discount = discount;
		this.price = price;
		this.pic_no = pic_no;
		this.booking_no = booking_no;
		this.priceStr = priceStr;
	}

	public HotelRoomBean() {

	}

	public Integer getHotel_no() {
		return hotel_no;
	}

	public void setHotel_no(Integer hotel_no) {
		this.hotel_no = hotel_no;
	}

	public Integer getRoom_id() {
		return room_id;
	}

	public void setRoom_id(Integer room_id) {
		this.room_id = room_id;
	}

	public String getOccupancy() {
		return occupancy;
	}

	public void setOccupancy(String occupancy) {
		this.occupancy = occupancy;
	}

	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}

	@Transient
	private String discountStr;

	@Column(columnDefinition = "decimal(7, 3)")
	public Double getDiscount() {
		return discount;
	}

	public void setDiscount(Double discount) { // 0.8, 0.75
		if (discount == null) {
			this.discount = 1.0;
			discountStr = "";
			return;
		}
		this.discount = discount;
		if (discount == 1) {
			discountStr = "";
		} else {
			int dnt = (int) (discount * 100);
			if (dnt % 10 == 0) {
				discountStr = (dnt / 10) + "折";
			} else {
				discountStr = " " + dnt + "折";
			}

		}
	}

	@Column(columnDefinition = "decimal(10, 1)")
	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
		if (priceStr == null) {
			priceStr = String.valueOf(price);
		}
	}

	public Integer getPic_no() {
		return pic_no;
	}

	public void setPic_no(Integer pic_no) {
		this.pic_no = pic_no;
	}

	public Integer getBooking_no() {
		return booking_no;
	}

	public void setBooking_no(Integer booking_no) {
		this.booking_no = booking_no;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Transient
	private String priceStr = null;

	@Transient
	public String getPriceStr() {
		return priceStr;
	}

	@Transient
	public void setPriceStr(String priceStr) {
		this.priceStr = priceStr;
	}

	@Transient
	public String getDiscountStr() {
		return discountStr;
	}

	@Override
	public String toString() {
		return "HotelRoomBean [hotel_no=" + hotel_no + ", room_id=" + room_id + ", occupancy=" + occupancy + ", stock="
				+ stock + ", discount=" + discount + ", price=" + price + ", pic_no=" + pic_no + ", booking_no="
				+ booking_no + ", discountStr=" + discountStr + ", priceStr=" + priceStr + "]";
	}
	
	
	

}
