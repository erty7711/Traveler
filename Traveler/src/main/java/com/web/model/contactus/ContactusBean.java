package com.web.model.contactus;

import java.io.*;
import java.text.*;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name="CustomerOpinion")
public class ContactusBean implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer pkid;   		
	private String name;   			
	private String sex;       			
	private String age;    			
	private String	phone;     			
	private String email;
	private String address;
	private String opinion;
	private String comment;
	private String feedback;
	private Date messagetime = new Date();
	private Date feedbackmessagetime = new Date();
	
	
	
	
	public ContactusBean(Integer pkid, String name, String sex, String age, String phone, String email, String address,
			String opinion, String comment, String feedback,Date messagetime,Date feedbackmessagetime) {
		super();
		this.pkid = pkid;
		this.name = name;
		this.sex = sex;
		this.age = age;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.opinion = opinion;
		this.comment = comment;
		this.feedback = feedback;
		this.messagetime = messagetime;
		this.feedbackmessagetime = feedbackmessagetime;
	}
	
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	public Date getFeedbackmessagetime() {
		return feedbackmessagetime;
	}


	public void setFeedbackmessagetime(Date feedbackmessagetime) {
		this.feedbackmessagetime = feedbackmessagetime;
	}


	public Date getMessagetime() {
		return messagetime;
	}


	public void setMessagetime(Date messagetime) {
		this.messagetime = messagetime;
	}


	public ContactusBean() {
		super();
	}





	public Integer getPkid() {
		return pkid;
	}


	public void setPkid(Integer pkid) {
		this.pkid = pkid;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getSex() {
		return sex;
	}


	public void setSex(String sex) {
		this.sex = sex;
	}


	public String getAge() {
		return age;
	}


	public void setAge(String age) {
		this.age = age;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getOpinion() {
		return opinion;
	}


	public void setOpinion(String opinion) {
		this.opinion = opinion;
	}


	public String getComment() {
		return comment;
	}


	public void setComment(String comment) {
		this.comment = comment;
	}


	
	
	public String getFeedback() {
		return feedback;
	}


	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}


	@Override
	public String toString() {
		return "ContactusBean [pkid=" + pkid + ", name=" + name + ", sex=" + sex + ", age=" + age + ", phone=" + phone
				+ ", email=" + email + ", address=" + address + ", opinion=" + opinion + ", comment=" + comment
				+ ", feedback=" + feedback + ", messagetime=" + messagetime + ", feedbackmessagetime="
				+ feedbackmessagetime + "]";
	}


	

	




}