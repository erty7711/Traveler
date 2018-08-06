package com.web.model.commodity;

import java.sql.Blob;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

@XmlRootElement
@Entity
@Table(name="Commodity")
public class CommodityBean {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer commodityid ;	
	private String  name;
	private Integer  quantity;
	private Integer  price;
	private Double  point;	
	@JsonIgnore
	private Blob  picture;
	private String  picturename;
	private String  kind;
			
	@Transient
	private MultipartFile  productImage;
	
	
	@Transient
	private CommodityBean commodityBean;

//	@Transient
//	private ClientBean ClientBean
	
//	@Transient
//	private MemberBean MemberBean
	
	
	@Transient
	@XmlTransient
	public MultipartFile getProductImage() {
		return productImage;
	}

	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}

	
	public CommodityBean (){
		
	}

	public CommodityBean(Integer commodityid, String name, Integer quantity, 
			Integer price, Double point, Blob picture,
		    String picturename, String kind) {
	super();
	this.commodityid = commodityid;
	this.name = name;
	this.quantity = quantity;
	this.price = price;
	this.point = point;
	this.picture = picture;
	this.picturename = picturename;
	this.kind = kind;
}
	
//	public static void main(String[] args) {
//		CommodityBean aa=new CommodityBean();
//		String	x=aa.getName();
//		System.out.println("x="+x);
//	}
	
	public Integer getCommodityid() {
		
		return commodityid;
	}
	public void setCommodityid(Integer commodityid) {
		this.commodityid = commodityid;
	}

	public String getName() {
//		System.out.println("QQQQQ");
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Double getPoint() {
		return point;
	}

	public void setPoint(Double point) {
		this.point = point;
	}

	public Blob getPicture() {
		return picture;
	}

	public void setPicture(Blob picture) {
		this.picture = picture;
	}

	public String getPicturename() {
		return picturename;
	}

	public void setPicturename(String picturename) {
		this.picturename = picturename;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public void setCommodityBean(CommodityBean cb) {
		this.commodityBean=cb;
		
	}

	
	public CommodityBean getCommodityBean() {
		return commodityBean;
		
	}
	
	
//	public void setQuantityToClient() {
//		
//	}
	
	
}
