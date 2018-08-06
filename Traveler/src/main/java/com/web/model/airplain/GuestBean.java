package com.web.model.airplain;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Type;
import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name="guest")
public class GuestBean {
		
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private Integer id;
		
		public Integer getId() {
			return id;
		}
		public void setId(Integer id) {
			this.id = id;
		}
		public String getContactName() {
			return contactName;
		}
		public void setContactName(String contactName) {
			this.contactName = contactName;
		}
		public String getContactEmail() {
			return contactEmail;
		}
		public void setContactEmail(String contactEmail) {
			this.contactEmail = contactEmail;
		}
		public Integer getContactPhone() {
			return contactPhone;
		}
		public void setContactPhone(Integer contactPhone) {
			this.contactPhone = contactPhone;
		}
		public String getContactAddress() {
			return contactAddress;
		}
		public void setContactAddress(String contactAddress) {
			this.contactAddress = contactAddress;
		}
		public String getContactIdCard() {
			return contactIdCard;
		}
		public void setContactIdCard(String contactIdCard) {
			this.contactIdCard = contactIdCard;
		}
		public String getGuestOneName() {
			return guestOneName;
		}
		public void setGuestOneName(String guestOneName) {
			this.guestOneName = guestOneName;
		}
		public String getGuestOneLastName() {
			return guestOneLastName;
		}
		public void setGuestOneLastName(String guestOneLastName) {
			this.guestOneLastName = guestOneLastName;
		}
		public String getGuestOneFirstName() {
			return guestOneFirstName;
		}
		public void setGuestOneFirstName(String guestOneFirstName) {
			this.guestOneFirstName = guestOneFirstName;
		}
		public String getGuestOnepassportNum() {
			return guestOnepassportNum;
		}
		public void setGuestOnepassportNum(String guestOnepassportNum) {
			this.guestOnepassportNum = guestOnepassportNum;
		}
		
		public Date getGuestOneBirth() {
			return guestOneBirth;
		}
		public void setGuestOneBirth(Date guestOneBirth) {
			this.guestOneBirth = guestOneBirth;
		}
		public String getGuestOneGender() {
			return guestOneGender;
		}
		public void setGuestOneGender(String guestOneGender) {
			this.guestOneGender = guestOneGender;
		}
		public String getGuestTwoName() {
			return guestTwoName;
		}
		public void setGuestTwoName(String guestTwoName) {
			this.guestTwoName = guestTwoName;
		}
		public String getGuestTwoLastName() {
			return guestTwoLastName;
		}
		public void setGuestTwoLastName(String guestTwoLastName) {
			this.guestTwoLastName = guestTwoLastName;
		}
		public String getGuestTwoFirstName() {
			return guestTwoFirstName;
		}
		public void setGuestTwoFirstName(String guestTwoFirstName) {
			this.guestTwoFirstName = guestTwoFirstName;
		}
		public String getGuestTwopassportNum() {
			return guestTwopassportNum;
		}
		public void setGuestTwopassportNum(String guestTwopassportNum) {
			this.guestTwopassportNum = guestTwopassportNum;
		}
		public Date getGuestTwoBirth() {
			return guestTwoBirth;
		}
		public void setGuestTwoBirth(Date guestTwoBirth) {
			this.guestTwoBirth = guestTwoBirth;
		}
		public String getGuestTwoGender() {
			return guestTwoGender;
		}
		public void setGuestTwoGender(String guestTwoGender) {
			this.guestTwoGender = guestTwoGender;
		}
		private String contactName;
		private String contactEmail;
		private Integer contactPhone;
		private String contactAddress;
		private String contactIdCard;
		private String guestOneName;
		private String guestOneLastName;
		private String guestOneFirstName;
		private String guestOnepassportNum;
		@DateTimeFormat(pattern="yyyy-MM-dd")
		@Type(type="date")
		@Temporal(TemporalType.DATE)
		private Date guestOneBirth;
		private String guestOneGender;
		private String guestTwoName;
		private String guestTwoLastName;
		private String guestTwoFirstName;
		private String guestTwopassportNum;
		@DateTimeFormat(pattern="yyyy-MM-dd")
		@Type(type="date")
		@Temporal(TemporalType.DATE)
		private Date guestTwoBirth;
		private String guestTwoGender;

		@Override
		public String toString() {
			return "GuestBean [id=" + id + ", contactName=" + contactName + ", contactEmail=" + contactEmail
					+ ", contactPhone=" + contactPhone + ", contactAddress=" + contactAddress + ", contactIdCard="
					+ contactIdCard + ", guestOneName=" + guestOneName + ", guestOneLastName=" + guestOneLastName
					+ ", guestOneFirstName=" + guestOneFirstName + ", guestOnepassportNum=" + guestOnepassportNum
					+ ", guestOneBirth=" + guestOneBirth + ", guestOneGender=" + guestOneGender + ", guestTwoName="
					+ guestTwoName + ", guestTwoLastName=" + guestTwoLastName + ", guestTwoFirstName="
					+ guestTwoFirstName + ", guestTwopassportNum=" + guestTwopassportNum + ", guestTwoBirth="
					+ guestTwoBirth + ", guestTwoGender=" + guestTwoGender + "]";
		}
		
	
		
		
		
	
}
