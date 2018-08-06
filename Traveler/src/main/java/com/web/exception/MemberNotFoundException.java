package com.web.exception;

public class MemberNotFoundException extends RuntimeException {
	String memberId;
	
	public MemberNotFoundException(String memberId) {
		super();
		this.memberId=memberId;
	}

	public String getmemberId() {
		return memberId;
	}

	public void setmemberId(String memberId) {
		this.memberId = memberId;
	}
}
