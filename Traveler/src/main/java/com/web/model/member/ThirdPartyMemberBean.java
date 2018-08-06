package com.web.model.member;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicUpdate;

@Entity
@Table(name = "thirdPartyMember")
@DynamicUpdate(true) //可動態更新
public class ThirdPartyMemberBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private String thirdPartyId;
	private String thirdPartyType;
	private String memberId;
	
	public ThirdPartyMemberBean() {
		super();
	}
	
	public ThirdPartyMemberBean(String thirdPartyId, String thirdPartyType, String memberId) {
		super();
		this.thirdPartyId = thirdPartyId;
		this.thirdPartyType = thirdPartyType;
		this.memberId = memberId;
	}

	@Id
	public String getThirdPartyId() {
		return thirdPartyId;
	}
	public void setThirdPartyId(String thirdPartyId) {
		this.thirdPartyId = thirdPartyId;
	}
	
	@Column(name = "thirdPartyType")
	public String getThirdPartyType() {
		return thirdPartyType;
	}
	public void setThirdPartyType(String thirdPartyType) {
		this.thirdPartyType = thirdPartyType;
	}
	
	@Column(name = "memberId")
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "thirdPartyMemberBean [thirdPartyId=" + thirdPartyId + ", thirdPartyType=" + thirdPartyType
				+ ", memberId=" + memberId + "]";
	}
}
