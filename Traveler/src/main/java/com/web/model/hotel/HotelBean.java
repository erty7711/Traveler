package com.web.model.hotel;

import java.io.Serializable;
import java.sql.Blob;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.web.multipart.MultipartFile;





@Entity
@Table(name = "Hotel")
public class HotelBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer hotel_id;
	private String country;
	private String city;
	private String name;
	private Blob coverImage;
	private String file_name;
	private String introduction;
	private Integer room_no;
		
	@Transient
	private MultipartFile  productImage;
	@Transient
	@XmlTransient
	public MultipartFile getProductImage() {
		return productImage;
	}

	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}
	
	
	
	@ManyToOne
	@JoinColumn(name="room_no", referencedColumnName="room_id", insertable=false, updatable=false) 
	private HotelRoomBean hotelRoomBean;

	public HotelRoomBean getHotelRoomBean() {
		return hotelRoomBean;
	}

	public void setHotelRoomBean(HotelRoomBean hotelRoomBean) {
		this.hotelRoomBean = hotelRoomBean;
	}
	
	
	

	public HotelBean(Integer hotel_id, String country, String city, String name, Blob coverImage, String file_name,
			String introduction, Integer room_no, MultipartFile productImage) {
		super();
		this.hotel_id = hotel_id;
		this.country = country;
		this.city = city;
		this.name = name;
		this.coverImage = coverImage;
		this.file_name = file_name;
		this.introduction = introduction;
		this.room_no = room_no;
		this.productImage = productImage;
	}

	public HotelBean() {
		
	}

	public Integer getHotel_id() {
		return hotel_id;
	}

	public void setHotel_id(Integer hotel_id) {
		this.hotel_id = hotel_id;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Blob getCoverImage() {
		return coverImage;
	}

	public void setCoverImage(Blob coverImage) {
		this.coverImage = coverImage;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
 
	public String getintroduction() {
		return introduction;
	}

	public void setintroduction(String introduction) {
		this.introduction = introduction;
	}

	public Integer getRoom_no() {
		return room_no;
	}

	public void setRoom_no(Integer room_no) {
		this.room_no = room_no;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "HotelBean [hotel_id=" + hotel_id + ", country=" + country + ", city=" + city + ", name=" + name
				+ ", coverImage=" + coverImage + ", file_name=" + file_name + ", introduction=" + introduction + ", room_no="
				+ room_no + ", productImage=" + productImage + "]";
	}
	
	
	


}


