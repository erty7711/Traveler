package com.web.config;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/airTickets/back/*")
public class FilterTest implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Filter init()");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
//			HttpServletRequest req= ((HttpServletRequest)request);
//			HttpServletResponse res= ((HttpServletResponse)request);
		   System.out.println("Before chain");
		   chain.doFilter(request, response);
		   System.out.println("After chain");
	}

	@Override
	public void destroy() {
		System.out.println("Filter destroy()");
	}

}
