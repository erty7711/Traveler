package com.web.model.commodity;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlRootElement;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import com.web.model.member.MemberBean;

@XmlRootElement
@Entity
@Table(name ="Client")
public class ClientBean {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer Id;	
	private Integer comId;	
	private Double Point;
	
	@Column(name = "quantity")
	private Integer cliquantity;
	
	@Column(name = "clidate")
	private Date date=new Date();	
	private String memId;
	
	private String clientname;
	private String clientaddr;
	private String clienttel;
	
	public String getClientname() {
		return clientname;
	}

	public void setClientname(String clientname) {
		this.clientname = clientname;
	}

	public String getClientaddr() {
		return clientaddr;
	}

	public void setClientaddr(String clientaddr) {
		this.clientaddr = clientaddr;
	}

	public String getClienttel() {
		return clienttel;
	}

	public void setClienttel(String clienttel) {
		this.clienttel = clienttel;
	}

	@Column(name = "transport")
	private String clitransport;
		
	@ManyToOne    //@JoinColumn 還有這個屬性updatable=false  OR true
	@JoinColumn(name="comId",referencedColumnName="commodityid",insertable=false,updatable=false) 
	private CommodityBean commodityBean;
	
	@ManyToOne
	@JoinColumn(name="memId",referencedColumnName="memberId",insertable=false,updatable=false)
	private MemberBean memberBean;
	

	
	@Transient
	private MultipartFile  productImage;
	

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}


	public Integer getComId() {
		return comId;
	}

	public void setComId(Integer comId) {
		this.comId = comId;
	}

	

	public Date getDate() {
//		java.util.Date now = new Date(); 
//		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//可以方便地修改日期格式
//
//		String date = dateFormat.format( now );
	
		return date ;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	

	public CommodityBean getCommodityBean() {
		return commodityBean;
	}

	public void setCommodityBean(CommodityBean commodityBean) {
		this.commodityBean = commodityBean;
	}

	public MultipartFile getProductImage() {
		return productImage;
	}

	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}

	public Double getPoint() {
		return Point;
	}

	public void setPoint(Double point) {
		Point = point;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public MemberBean getMemberBean() {
		return memberBean;
	}

	public void setMemberBean(MemberBean memberBean) {
		this.memberBean = memberBean;
	}

	public Integer getCliquantity() {
		return cliquantity;
	}

	public void setCliquantity(Integer cliquantity) {
		this.cliquantity = cliquantity;
	}

	public String getClitransport() {
		return clitransport;
	}

	public void setClitransport(String clitransport) {
		this.clitransport = clitransport;
	}

	
	
//	public ClientBean() {
//		super();
//		
//	}
	

	
	
}
