package com.web.service.member;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import com.web.model.member.MemberBean;
import com.web.model.member.ThirdPartyMemberBean;



public interface MemberService {
	//註冊時呼叫DB判別帳號是否存在
		public boolean idExists(String memberId) throws IOException;
//		public void populateIDList();//同上一樣，但暫記憶體

	//save有新增、修改二個功能
//		public int saveMember(MemberBean member) throws SQLException;
		public void updateMemberPoint(String memberId,double point);
		public void updateMember(MemberBean member);//上一功能有新增、修改較好
		public void changePwd(String memberId, String password)throws IOException;
		
		public int deleteMember(String memberId) ;

	//多筆查詢及單筆查詢
		public List<MemberBean> getAllMembers();
		public MemberBean getMemberById(String memberId);
		public int countNewMemberToday();
		
		public void addMember(MemberBean member) throws SQLException;
		public MemberBean checkIdPwd(String memberId, String password) throws IOException;

		public MemberBean queryPwd(String memberId, Date bdate)throws IOException;
		
		//新增、修改第三方登入會員
		public int saveThirdPartyMember(ThirdPartyMemberBean thirdPartyMember) throws SQLException;
		
		//查詢第三方登入會員
		public String queryMemberId(String thirdPartyType,String thirdPartyId) throws IOException;
		
	}