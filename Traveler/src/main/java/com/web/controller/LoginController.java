package com.web.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.crypto.spec.SecretKeySpec;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.web.Utils.DateUtils;
import com.web.Utils.SendMailTLS;
import com.web.Utils.VerifyRecaptcha;
import com.web.model.member.MemberBean;
import com.web.service.member.GlobalService;
import com.web.service.member.MemberService;

@Controller
public class LoginController {

	@Autowired
	MemberService memberService;

	@RequestMapping(value = "/member/login", method = RequestMethod.GET)
	public String getLoginPage(HttpServletRequest request, HttpServletResponse response, Model model){
		// List<MemberBean> list = memberService.getAllMembers();
		// model.addAttribute("members", list);
		HttpSession session = request.getSession();
		session.removeAttribute("memberId");
		String timeOut = (String) session.getAttribute("timeOut");
		String memberId = (String) session.getAttribute("memberId");
		String password = (String) session.getAttribute("password");
		String rememberMe = (String) session.getAttribute("rememberMe");
		System.out.println(
				"timeOut=" + timeOut + "memberId=" + memberId + "password=" + password + "rememberMe=" + rememberMe);
		return "/member/login";
	}
	
	@RequestMapping(value = "/member/login", method = RequestMethod.POST)
	public String getLoginPage2(HttpServletRequest request, HttpServletResponse response, Model model){
		// List<MemberBean> list = memberService.getAllMembers();
		// model.addAttribute("members", list);
		HttpSession session = request.getSession();
		session.removeAttribute("memberId");
		String timeOut = (String) session.getAttribute("timeOut");
		String memberId = (String) session.getAttribute("memberId");
		String password = (String) session.getAttribute("password");
		String rememberMe = (String) session.getAttribute("rememberMe");
		System.out.println(
				"timeOut=" + timeOut + "memberId=" + memberId + "password=" + password + "rememberMe=" + rememberMe);
		return "/member/login";
	}

	@RequestMapping(value = "/member/login.do", method = RequestMethod.POST)
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		// 準備存放錯誤訊息的Map物件
		Map<String, String> errorMsgMap = new HashMap<String, String>();
		// 將errorMsgMap放入request物件內，識別字串為"errorMsgkey"
		request.setAttribute("ErrorMsgMap", errorMsgMap);
		// 1.讀取使用者輸入資料
		String memberId = request.getParameter("memberId");
		String password = request.getParameter("password");
		String rm = request.getParameter("rememberMe");
		String thirdPartyType= request.getParameter("thirdPartyType");
		String thirdPartyId = request.getParameter("thirdPartyId");
		String gRecaptchaResponse = request
				.getParameter("g-recaptcha-response");
		String requestURI = (String) session.getAttribute("requestURI");
		System.out
				.println("memberId=" + memberId + " password=" + password + " rm=" + rm + " requestURI=" + requestURI);
		// 2.進行必要的資料轉換
		// 無
		// 3.檢查使用者輸入資料
		// 如果memberId欄位為空白，放一個錯誤訊息到errorMsgMap之內
		if (StringUtils.isNotBlank(thirdPartyId)) {
			System.out.println("thirdPartyId=" + thirdPartyId + "登入");
			//使用第三方登入取得memberId帳號
			memberId=memberService.queryMemberId(thirdPartyType, thirdPartyId);
			password ="";
		} else {
			System.out.println("thirdPartyId=" + thirdPartyId + "非fb登入");
			if (StringUtils.isBlank(memberId) || StringUtils.isBlank(password)) {
				errorMsgMap.put("LoginError", "帳號或密碼欄必須輸入");
			}
			boolean verify = VerifyRecaptcha.verify(gRecaptchaResponse);
			//System.out.println("verify="+verify);
			if (!verify) {
				errorMsgMap.put("LoginError", "你是機器人厚!!");
				System.out.println("verify=" + verify );
			}
		}
		
		// **********Remember Me***********************************
		Cookie cookieMember = null;
		Cookie cookiePassword = null;
		Cookie cookieRememberMe = null;

		if (rm != null) {
			cookieMember = new Cookie("member", memberId);
			cookieMember.setSecure(true);
			cookieMember.setHttpOnly(true);
			cookieMember.setMaxAge(30 * 60 * 60);
			cookieMember.setPath(request.getContextPath());
			String encodePassword = GlobalService.encryptString(password);
			cookiePassword = new Cookie("password", encodePassword);
			cookiePassword.setSecure(true);
			cookiePassword.setHttpOnly(true);
			cookiePassword.setMaxAge(30 * 60 * 60);
			cookiePassword.setPath(request.getContextPath());
			cookieRememberMe = new Cookie("rm", "true");
			cookieRememberMe.setSecure(true);
			cookieRememberMe.setHttpOnly(true);
			cookieRememberMe.setMaxAge(30 * 60 * 60);
			cookieRememberMe.setPath(request.getContextPath());
		} else {
			cookieMember = new Cookie("member", memberId);
			cookieMember.setSecure(true);
			cookieMember.setHttpOnly(true);
			cookieMember.setMaxAge(0);// MaxAge==0表示要請瀏覽器刪除此Cookie
			cookieMember.setPath(request.getContextPath());
			// String encodePassword=
			// DatatypeConverter.printBase64Binary(password.getBytes());
			String encodePassword = GlobalService.encryptString(password);
			cookiePassword = new Cookie("password", encodePassword);
			cookiePassword.setSecure(true);
			cookiePassword.setHttpOnly(true);
			cookiePassword.setMaxAge(0);
			cookiePassword.setPath(request.getContextPath());
			cookieRememberMe = new Cookie("rm", "false");
			cookieRememberMe.setSecure(true);
			cookieRememberMe.setHttpOnly(true);
			cookieRememberMe.setMaxAge(30 * 60 * 60);
			cookieRememberMe.setPath(request.getContextPath());
		}
		response.addCookie(cookieMember);
		response.addCookie(cookiePassword);
		response.addCookie(cookieRememberMe);
		// *****************************************************
		// 如果errorMsgMap不是空的，表示有錯誤，交棒給login.jsp
		System.out.println("errorMsgMap.isEmpty()"+errorMsgMap.isEmpty());
		if (!errorMsgMap.isEmpty()) {
			 RequestDispatcher rd=request.getRequestDispatcher("/member/login");
			 rd.forward(request, response);
			return;
		}
		// 4.進行Business Logic運算
		// password=GlobalService.getMD5Endocing(GlobalService.encryptString(password));//二次加密
		// 呼叫loginService物件的checkIdPwd()，傳入memberId與password兩個參數
		MemberBean mb =null;
		if (StringUtils.isNotBlank(thirdPartyId)) {
			System.out.println("getMemberById:" + memberId);
			mb = memberService.getMemberById(memberId);
		}else {
			String encodePassword = GlobalService.encryptString(password);
			mb = memberService.checkIdPwd(memberId, encodePassword);
		}

		if (mb != null) {
			// OK,將mb物件放入Session範圍，識別字串為"LoginOK"
			session.setAttribute("LoginOK", mb);
		} else {
			// NG,memberId與密碼的組合錯誤，放一個錯誤訊息到errorMsgMap之內
			System.out.println("該帳號不存在或密碼錯誤");
			errorMsgMap.put("LoginError", "該帳號不存在或密碼錯誤");
		}
		// 5.依照Business Logic運算結果來挑選適當的畫面
		// 如果errorMsgMap是空的，表示沒有任何錯誤，交棒給下一棒
		if (errorMsgMap.isEmpty()) {
			// 此時不要用下面兩個敘述，因為網址列的URL不會改變
//			 RequestDispatcher rd=request.getRequestDispatcher("...");
//			 rd.forward(request,response);
			if (requestURI != null) {// 從哪來就回哪去，從登入進去，就回到首頁
				requestURI = (requestURI.length() == 0 ? request.getContextPath() : requestURI);
				 response.sendRedirect(response.encodeRedirectURL(requestURI));//此行為導頁的方式，指到哪就是哪頁
				System.out.println("to requestURI=" + requestURI);
				return;
			} else {
				System.out.println("request.getContextPath()=" + request.getContextPath());
				 response.sendRedirect(request.getContextPath()+"/");
				System.out.println("to index");
				return;
			}
		} else {
			// 如果errorMsgMap不是空的，表示有錯誤，交棒給login.jsp
			 RequestDispatcher rd=request.getRequestDispatcher("/member/login");
			 rd.forward(request, response);
			System.out.println("to login");
			return;
		}
	}

	@RequestMapping(value = "/member/queryPwd", method = RequestMethod.GET)
	public String queryPwd() {
		return "/member/queryPwd";
	}

	@RequestMapping(value = "/member/queryPwd.do", method = RequestMethod.POST)
	protected String queryPwd(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// 準備存放錯誤訊息的Map物件
		Map<String, String> errorMsgMap = new HashMap<String, String>();
		// 將errorMsgMap放入request物件內，識別字串為"errorMsgkey"
		request.setAttribute("ErrorMsgMap", errorMsgMap);
		// 1.讀取使用者輸入資料
		String memberId = request.getParameter("memberId");
		String birthday = request.getParameter("birthday");

		System.out.println("memberId=" + memberId + " birthday=" + birthday);
		// 2.進行必要的資料轉換
		System.out.println("2. 進行必要的資料轉換");

		java.sql.Date bdate = null;
		try {
			if (birthday != null && birthday.trim().length() > 0) {
				Date bd = DateUtils.getDateByString(birthday);
				if (bd != null) {
					bdate = new java.sql.Date(bd.getTime());
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 3.檢查使用者輸入資料
		// 如果memberId欄位為空白，放一個錯誤訊息到errorMsgMap之內
		if (memberId == null || memberId.trim().length() == 0) {
			errorMsgMap.put("AccountEmptyError", "帳號欄必須輸入");
		}
		// 如果password欄位為空白，放一個錯誤訊息到errorMsgMap之內
		if (birthday == null || birthday.trim().length() == 0) {
			errorMsgMap.put("BirthdayEmptyError", "生日欄必須輸入");
		}

		// *****************************************************
		// 如果errorMsgMap不是空的，表示有錯誤，交棒給login.jsp
		if (!errorMsgMap.isEmpty()) {
			return "/member/queryPwd";
		}
		// 4.進行Business Logic運算
		
		// 呼叫loginService物件的checkIdPwd()，傳入memberId與password兩個參數
		MemberBean mb = memberService.queryPwd(memberId, bdate);

		if (mb != null) {//取得DB中password還原後給email
			final String KEY = "KittySnoopyMicky";
			SecretKeySpec secretKey = new SecretKeySpec(KEY.getBytes(), "AES");
			String decrypPassword=GlobalService.decryptString(KEY,mb.getPassword());
			SendMailTLS.sendQueryPwdMail(mb.getEmail(), decrypPassword);
		} else {
			// NG,memberId與密碼的組合錯誤，放一個錯誤訊息到errorMsgMap之內
			System.out.println("該帳號不存在或出生年月日錯誤");
			errorMsgMap.put("ErrorMsg", "該帳號不存在或出生年月日錯誤");
		}

		// 5.依照Business Logic運算結果來挑選適當的畫面
		// 如果errorMsgMap是空的，表示沒有任何錯誤，交棒給下一棒
		if (errorMsgMap.isEmpty()) {
			// 此時不要用下面兩個敘述，因為網址列的URL不會改變
			// RequestDispatcher rd=request.getRequestDispatcher("...");
			// rd.forward(request,response);
			System.out.println("to index");
			return "/member/sendMailSuccess";
		} else {
			// 如果errorMsgMap不是空的，表示有錯誤，交棒給login.jsp
			System.out.println("to queryPwd");
			return "/";
		}
	}
	

	
	//登出
	@RequestMapping(value = "/member/logout.do", method = RequestMethod.GET)
	protected void logout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		session.removeAttribute("LoginOK");
		session.removeAttribute("requestURI");
//		response.sendRedirect(response.encodeRedirectURL(request.getContextPath()));
		 response.sendRedirect(request.getContextPath()+"/");

	}
}