package com.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.bind.DatatypeConverter;

import com.web.service.member.GlobalService;

@WebFilter("/member/login")
public class FindUserPassword implements Filter {

	String requestURI;

	public FindUserPassword() {

	}	
	public void destroy() {		
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// 執行/login.jsp前先執行本程式
		if (request instanceof HttpServletRequest
				&& response instanceof HttpServletResponse) {
			HttpServletRequest req = (HttpServletRequest) request;
			HttpServletResponse resp = (HttpServletResponse) response;
			HttpSession session = req.getSession();
			// **********Remember Me****************
			String cookieName = "";
			String memberId = "";
			String password = "";
			String rememberMe = "false";

			Cookie[] cookies = req.getCookies();

			if (cookies != null) {
				
				for (int i = 0; i < cookies.length; i++) {
					cookieName = cookies[i].getName();
					if (cookieName.equals("memberId")) {
						//找到user這個Cookie
						memberId = cookies[i].getValue();
					} else if (cookieName.equals("password")) {
						//找到password這個Cookie						
						String tmp  = cookies[i].getValue();
						if (tmp!= null){
							//byte[] ba = Base64.decode(tmp);
							password = 	GlobalService.decryptString(
									GlobalService.KEY, tmp);
							//System.out.println(password);
						}
					} else if (cookieName.equals("rm")) {
						//找到rm這個Cookie(rm: rememberMe)
						rememberMe = cookies[i].getValue();
					}
				}
			} else {
				// 找不到Cookie，沒事。
			}
			// 將這三項資料存入session物件
			session.setAttribute("rememberMe", rememberMe);
			session.setAttribute("memberId", memberId);
			session.setAttribute("password", password);
		}
		chain.doFilter(request, response);
	}
	public void init(FilterConfig fConfig) throws ServletException {
	}

}
