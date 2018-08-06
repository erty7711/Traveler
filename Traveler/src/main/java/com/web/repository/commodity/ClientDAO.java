package com.web.repository.commodity;

import java.util.List;

import com.web.model.commodity.ClientBean;
import com.web.model.member.MemberBean;



public interface ClientDAO {

	List<ClientBean> getAllData();

	ClientBean getClientById(int Id);

	void addClient(ClientBean bean);

//	ClientBean getMemberId(String Id);
	
	MemberBean getMemberById(String memberId);
	List<MemberBean> getMemberAllData();
	
	void addMemberA (MemberBean mb);
	
	ClientBean getClientByMemId(String memId);
	
}
