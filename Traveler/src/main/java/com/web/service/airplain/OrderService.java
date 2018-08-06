package com.web.service.airplain;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.OrderBy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.model.airplain.OrderDetailsBean;
import com.web.model.airplain.OrderRepository;
import com.web.model.member.MemberBean;
import com.web.repository.member.MemberDAO;

@Transactional
@Service
public class OrderService {

	@Autowired
	private OrderRepository or;
	@Autowired
	MemberDAO memberDAO;

	public int addOrder(OrderDetailsBean odb) {
		 int re = or.addTest(odb);
		return re;
	}
	
	public String selectOneById(int id) {
		 String orderId = or.selectOneById(id);
		return orderId;
	}
	
	public OrderDetailsBean selectOneByOrderId(String orderId) {
		OrderDetailsBean odb = or.selectOneByOrderId(orderId);
		return odb;
	}
	
	public int updateByOrderId(String orderId,Integer guestId) {
		int result = or.updateByOrderId(orderId, guestId);
		return result;
	}
	
	public int updateCheckPayByOrderId(String orderId) {
		int result = or.updateCheckByOrderId(orderId);
		return result;
	}
	
	public List<OrderDetailsBean> getAllOrder(){
		 return or.getAll();
	}
	
	public int update(OrderDetailsBean orderBean) {
		return or.update(orderBean);
	}
	
	public void setPointToMember(String orderId) throws SQLException {
		OrderDetailsBean ordBean = or.selectOneByOrderId(orderId);
		MemberBean member = memberDAO.getMemberById(ordBean.getMemberId());
		double originPoint = member.getPoint();
		double newPoint = originPoint+ordBean.getRedPoint();
		member.setPoint(newPoint);
		memberDAO.updateMember(member);
		
	}
	
	public List<OrderDetailsBean> memberSearch(String memberId){
		return or.memberSearch(memberId);
	}
}
