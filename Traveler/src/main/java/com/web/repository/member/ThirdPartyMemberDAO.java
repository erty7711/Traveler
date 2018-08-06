package com.web.repository.member;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import com.web.model.member.MemberBean;
import com.web.model.member.ThirdPartyMemberBean;

public interface ThirdPartyMemberDAO {

	//新增、修改第三方登入會員
	public int saveThirdPartyMember(ThirdPartyMemberBean thirdPartyMember) throws SQLException;
	
	//查詢第三方登入會員
	public String queryMemberId(String thirdPartyType,String thirdPartyId) throws IOException;
	
}
