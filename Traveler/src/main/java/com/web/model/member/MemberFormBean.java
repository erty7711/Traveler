package com.web.model.member;

import java.io.Serializable;
import java.sql.Blob;
import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.DynamicUpdate;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class MemberFormBean implements Serializable {
	private static final long serialVersionUID = 1L;

	private String memberId;
	private String password;
	private String chkPassword;
	private String gender;
	private String chineseLastName;
	private String chineseFirstName;
	private String englishLastName;
	private String englishFirstName;
	private String birthday;
	private String email;
	private String mobile;
	private String phoneNumber;
	private String address;
	private double point;
	private String passportNumber;
	private Timestamp registerTime;
	@JsonIgnore
	private Blob memberImage;
	
	private MultipartFile  memberPicture;
	private String function;
	private String thirdPartyId;
	private String thirdPartyType;
	

	public MemberFormBean() {
		super();
	}

	public MemberFormBean(String memberId) {
		super();
		this.memberId = memberId;
	}

	public MemberFormBean(String memberId, String password, String gender, String chineseLastName, String chineseFirstName,
			String englishLastName, String englishFirstName, String birthday, String email, String mobile,
			String phoneNumber, String address, double point, String passportNumber, Timestamp registerTime) {
		super();
		this.memberId = memberId;
		this.password = password;
		this.gender = gender;
		this.chineseLastName = chineseLastName;
		this.chineseFirstName = chineseFirstName;
		this.englishLastName = englishLastName;
		this.englishFirstName = englishFirstName;
		this.birthday = birthday;
		this.email = email;
		this.mobile = mobile;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.point = point;
		this.passportNumber = passportNumber;
		this.registerTime = registerTime;
	}


	public MemberFormBean(String memberId, String password, String gender, String chineseLastName, String chineseFirstName,
			String englishLastName, String englishFirstName, String birthday, String email, String mobile,
			String phoneNumber, String address, String passportNumber, Blob memberImage) {
		super();
		this.memberId = memberId;
		this.password = password;
		this.gender = gender;
		this.chineseLastName = chineseLastName;
		this.chineseFirstName = chineseFirstName;
		this.englishLastName = englishLastName;
		this.englishFirstName = englishFirstName;
		this.birthday = birthday;
		this.email = email;
		this.mobile = mobile;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.point = 0;
		this.passportNumber = passportNumber;
		this.memberImage = memberImage;
	}

	@Id
	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	@Column(name = "password")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getChkPassword() {
		return chkPassword;
	}

	public void setChkPassword(String chkPassword) {
		this.chkPassword = chkPassword;
	}

	@Column(name = "gender")
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Column(name = "chineseLastName")
	public String getChineseLastName() {
		return chineseLastName;
	}

	public void setChineseLastName(String chineseLastName) {
		this.chineseLastName = chineseLastName;
	}

	@Column(name = "chineseFirstName")
	public String getChineseFirstName() {
		return chineseFirstName;
	}

	public void setChineseFirstName(String chineseFirstName) {
		this.chineseFirstName = chineseFirstName;
	}

	@Column(name = "englishLastName")
	public String getEnglishLastName() {
		return englishLastName;
	}

	public void setEnglishLastName(String englishLastName) {
		this.englishLastName = englishLastName;
	}

	@Column(name = "englishFirstName")
	public String getEnglishFirstName() {
		return englishFirstName;
	}

	public void setEnglishFirstName(String englishFirstName) {
		this.englishFirstName = englishFirstName;
	}

	@Column(name = "birthday")
	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	@Column(name = "email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "mobile")
	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	@Column(name = "phoneNumber")
	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	@Column(name = "address")
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name = "point")
	public double getPoint() {
		return point;
	}

	public void setPoint(double point) {
		this.point = point;
	}

	@Column(name = "passportNumber")
	public String getPassportNumber() {
		return passportNumber;
	}

	public void setPassportNumber(String passportNumber) {
		this.passportNumber = passportNumber;
	}

	@Column(name = "registerTime")
	public Timestamp getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(Timestamp registerTime) {
		this.registerTime = registerTime;
	}

	@Column(name = "memberImage")
	public Blob getMemberImage() {
		return memberImage;
	}

	public void setMemberImage(Blob memberImage) {
		this.memberImage = memberImage;
	}
	public MultipartFile getMemberPicture() {
		return memberPicture;
	}

	public void setMemberPicture(MultipartFile memberPicture) {
		this.memberPicture = memberPicture;
	}

	public String getFunction() {
		return function;
	}

	public void setFunction(String function) {
		this.function = function;
	}
	public String getThirdPartyId() {
		return thirdPartyId;
	}

	public void setThirdPartyId(String thirdPartyId) {
		this.thirdPartyId = thirdPartyId;
	}

	public String getThirdPartyType() {
		return thirdPartyType;
	}

	public void setThirdPartyType(String thirdPartyType) {
		this.thirdPartyType = thirdPartyType;
	}


	@Override
	public String toString() {
		return "Member [memberId=" + memberId + ", password=" + password + ", gender=" + gender + ", chineseLastName="
				+ chineseLastName + ", chineseFirstName=" + chineseFirstName + ", englishLastName=" + englishLastName
				+ ", englishFirstName=" + englishFirstName + ", birthday=" + birthday + ", email=" + email + ", mobile="
				+ mobile + ", phoneNumber=" + phoneNumber + ", address=" + address + ", point=" + point
				+ ", passportNumber=" + passportNumber + ", registerTime=" + registerTime + "]";
	}

}
