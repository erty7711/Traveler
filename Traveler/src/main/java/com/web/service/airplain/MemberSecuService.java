package com.web.service.airplain;

import java.util.List;

import org.springframework.stereotype.Service;

import com.web.model.airplain.OrderDetailsBean;

@Service
public class MemberSecuService {

	public List<OrderDetailsBean> modify(List<OrderDetailsBean> list) {
		for (OrderDetailsBean ob : list) {
			char replace = 42;
			if ((ob.getMemberId() != null) && (ob.getMemberId().length() > 8)) {
				char[] memberId = ob.getMemberId().toCharArray();
				for (int x = 3; x <= 7; x++) {
					memberId[x] = replace;
				}
				String repla = String.copyValueOf(memberId);
				ob.setMemberId(repla);
			}
		}
		return list;
	}
}
