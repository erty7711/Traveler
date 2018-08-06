package com.web.service.impl.member;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.web.model.member.MemberBean;
import com.web.model.member.ThirdPartyMemberBean;
import com.web.repository.member.MemberDAO;
import com.web.repository.member.ThirdPartyMemberDAO;


@Service
public class MemberServiceImpl implements com.web.service.member.MemberService {
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private ThirdPartyMemberDAO thirdPartyMemberDAO;

	@Transactional
	@Override
	public boolean idExists(String memberId) throws IOException {
		return memberDAO.idExists(memberId);
	}

	// @Transactional
	// @Override
	// public int saveMember(MemberBean member) throws SQLException {
	// Timestamp currentTime = new Timestamp(System.currentTimeMillis());
	// member.setRegisterTime(currentTime);
	// memberDAO.saveMember(member);
	// return memberDAO.saveMember(member);
	// }

	@Override
	public int deleteMember(String memberId) {
		return memberDAO.deleteMember(memberId);
	}

	@Transactional
	@Override
	public List<MemberBean> getAllMembers() {
		return memberDAO.getAllMembers();
	}

	@Transactional
	@Override
	public MemberBean getMemberById(String memberId) {
		return memberDAO.getMemberById(memberId);
	}

	@Transactional
	@Override
	public void updateMemberPoint(String memberId, double point) {
		MemberBean member = new MemberBean(memberId);
		memberDAO.updateMember(member);
	}

	@Transactional
	@Override
	public void updateMember(MemberBean member) {
		memberDAO.updateMember(member);
	}

	@Transactional
	@Override
	public void addMember(MemberBean member) throws SQLException {
		Timestamp currentTime = new Timestamp(System.currentTimeMillis());
		member.setRegisterTime(currentTime);
		memberDAO.saveMember(member);
	}

	@Transactional
	@Override
	public MemberBean checkIdPwd(String memberId, String password) throws IOException {
		return memberDAO.checkIdPwd(memberId, password);
	}

	@Transactional
	@Override
	public void changePwd(String memberId, String password) throws IOException {
		memberDAO.changePwd(memberId, password);
	}

	@Transactional
	@Override
	public MemberBean queryPwd(String memberId, Date bdate) throws IOException {
		return memberDAO.queryPwd(memberId, bdate);
	}

	@Override
	public int countNewMemberToday() {
		return memberDAO.countNewMemberToday();
	}

	@Override
	public int saveThirdPartyMember(ThirdPartyMemberBean thirdPartyMember) throws SQLException {
		return thirdPartyMemberDAO.saveThirdPartyMember(thirdPartyMember);
	}

	@Override
	public String queryMemberId(String thirdPartyType, String thirdPartyId) throws IOException {
		return thirdPartyMemberDAO.queryMemberId(thirdPartyType,thirdPartyId);
	}
}
