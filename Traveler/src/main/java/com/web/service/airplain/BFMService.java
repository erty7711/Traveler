package com.web.service.airplain;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

@Service
public class BFMService {

	public String BFMservice(HttpServletRequest request)  {
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		
		String dep = request.getParameter("dept");
		String arr = request.getParameter("arrv");
		String deD = request.getParameter("depDate") + "T00:00:00";
		String reD = request.getParameter("reDate") + "T00:00:00";
		String psg = request.getParameter("psg");
//		System.out.println("出發地" + dep + "日期" + deD + "," + "目的地" + arr + "日期" + reD);
		String result=null;
		try {
			 result = RunTest.run(deD, dep, reD, arr,psg);
			if(result!=null) {
				return result;
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println("查詢錯誤");
			return null;
		}
		return null;
	}
}
