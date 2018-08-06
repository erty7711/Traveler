package com.web.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.web.Utils.DateUtils;
import com.web.model.member.MemberBean;
import com.web.model.member.MemberFormBean;
import com.web.model.member.ThirdPartyMemberBean;
import com.web.service.member.GlobalService;
import com.web.service.member.MemberService;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;

	@Autowired
	ServletContext context;
	
	@RequestMapping("/member/changePwd")
	public String changePwd(HttpServletRequest request, HttpServletResponse response, Model model) {
		HttpSession session = request.getSession();
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		model.addAttribute("memberId", mb.getMemberId());
		return "/member/changePwd";
	}

	@RequestMapping("/member/changePwd.do")
	public String changePwd(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("doChangePwd");

		String succPage = "/member/updateSuccess";
		String errPage = "/member/changePwd";

		HttpSession session = request.getSession();
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");

		if (mb == null) {
			return "/member/login";  //如果未登入，mb=null時，就導頁至登入畫面
		}
		request.setCharacterEncoding("UTF-8");
		// 準備存放錯誤訊息的 List 物件
		Map<String, String> errorMsg = new HashMap<>();
		request.setAttribute("errorMsg", errorMsg);
		// 1. 讀取使用者輸入資料
		System.out.println("1. 讀取使用者輸入資料");
		String oldPassword = request.getParameter("oldPassword");
		String password = request.getParameter("password");
		String chkPassword = request.getParameter("chkPassword");
		System.out.println("oldPassword=" + oldPassword + " ,password=" + password + " ,chkPassword=" + chkPassword);
		// 3. 檢查使用者必輸入資料
		System.out.println("3. 檢查使用者必輸入資料");
		// 新增時的驗證

		if (oldPassword == null || oldPassword.trim().length() == 0) {
			errorMsg.put("oldPassword", "舊密碼欄必須輸入");
		} else {
			String encodePassword = GlobalService.encryptString(oldPassword);
			String sessionEncodePwd = mb.getPassword();
			if (!encodePassword.equals(sessionEncodePwd)) {
				errorMsg.put("oldPassword", "舊密碼輸入錯誤");
			} 
		}
		if(password.equals(oldPassword)) {
			errorMsg.put("password", "新密碼必須和舊密碼不同");
		}
		if (password == null || password.trim().length() == 0) {
			errorMsg.put("password", "密碼欄必須輸入");
		}
		if (chkPassword == null || chkPassword.trim().length() == 0) {
			errorMsg.put("chkPassword", "確認密碼欄必須輸入");
		} else {
			if (!chkPassword.equals(password)) {
				errorMsg.put("chkPassword", "確認密碼欄必須和密碼欄位一致");
			}
		}
		if (!errorMsg.isEmpty()) {
			return errPage;
		}
		try {
			String newEncodePassword = GlobalService.encryptString(password);
			//memberService.changePwd(mb.getMemberId(), newEncodePassword);
			mb.setPassword(newEncodePassword);
			memberService.updateMember(mb);
		} catch (Exception e) {
			errorMsg.put("memberId", "儲存資料時發生錯誤，請檢查，例外=" + e.getMessage());
			e.printStackTrace();
			return errPage;
		}
		request.setAttribute("chineseLastName", mb.getChineseLastName());
		request.setAttribute("chineseFirstName", mb.getChineseFirstName());
		
		return succPage;
	}

	@RequestMapping("/member/updateMember")
	public String updateMember(@ModelAttribute("memberBean") MemberFormBean formBean, HttpServletRequest request, 
			HttpServletResponse response) {
		HttpSession session = request.getSession();
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		MemberBean memBean=memberService.getMemberById(mb.getMemberId());
		try {
			BeanUtils.copyProperties(formBean, memBean);
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//model.addAttribute("welcomeNm", mb.getMemberId());
		//model.addAttribute("member", memBean);
		//model.addAttribute("function", "update");
		formBean.setFunction("update");
		return "/member/saveMember";
	}

	@RequestMapping({"/member/members{xxx}"})
	public String list(@PathVariable String xxx, Model model) {
		List<MemberBean> list = memberService.getAllMembers();
		model.addAttribute("members", list);
		model.addAttribute("memberSize",list.size());
		model.addAttribute("newMemberSize",memberService.countNewMemberToday());
		return "/member/members"+ xxx;
	}

	@RequestMapping("/member/member{xxx}")
	public String getMemberById(@PathVariable String xxx,@RequestParam("memberId") String memberId, Model model) {
		model.addAttribute("member", memberService.getMemberById(memberId));
		return "/member/member"+xxx;
	}

	@RequestMapping("/member/register")
	public String register(@ModelAttribute("memberBean") MemberFormBean mb) {
		System.out.println("register");
		mb.setFunction("add");
		return "/member/saveMember";
	}

	@RequestMapping("/member/saveMember.do")
	public String doSaveMember(@ModelAttribute("memberBean") MemberFormBean mb, HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("doSaveMember");

		String succPage = "/member/success";
		String errPage = "/member/saveMember";

		request.setCharacterEncoding("UTF-8");
		// 準備存放錯誤訊息的 List 物件
		Map<String, String> errorMsg = new HashMap<>();
		request.setAttribute("errorMsg", errorMsg);
		// 1. 讀取使用者輸入資料
		System.out.println("1. 讀取使用者輸入資料");
//		MultipartFile productImage = request.getParameter("memberImage");
		String function = mb.getFunction();
		System.out.println(mb.toString());
		// 2. 進行必要的資料轉換
		System.out.println("2. 進行必要的資料轉換");
		
		java.sql.Date bdate = null;
		try {
			String birthday = mb.getBirthday();
			if (birthday != null && birthday.trim().length() > 0) {
				Date bd = DateUtils.getDateByString(birthday);
				if (bd!=null) {
					bdate = new java.sql.Date(bd.getTime());
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		MultipartFile memberPicture = mb.getMemberPicture();
		String originalFilename = memberPicture.getOriginalFilename();
		//cb.setPicturename(originalFilename);
		System.out.println("originalFilename=" + originalFilename);
		if (StringUtils.isBlank(originalFilename)) {
			System.out.println("未上傳照片");
		} else {
			String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
			String rootDirectory = request.getSession().getServletContext().getRealPath("/");
			//  建立Blob物件，交由 Hibernate 寫入資料庫
			if (memberPicture != null && !memberPicture.isEmpty() ) {
				try {
					byte[] b = memberPicture.getBytes();
					Blob blob = new SerialBlob(b);
					mb.setMemberImage(blob);
					} catch(Exception e) {
					e.printStackTrace();
					throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
				}
			}
		}
		
		// 3. 檢查使用者必輸入資料
		System.out.println("3. 檢查使用者必輸入資料");
		if ("add".equals(function)) {
			// 新增時的驗證
			if (StringUtils.isBlank(mb.getMemberId())) {
				errorMsg.put("memberId", "帳號欄必須輸入身份證");
			}
			String password = mb.getPassword();
			if (StringUtils.isBlank(password)) {
				errorMsg.put("password", "密碼欄必須輸入");
			}
			String chkPassword = mb.getChkPassword();
			if (StringUtils.isBlank(chkPassword)) {
				errorMsg.put("chkPassword", "確認密碼欄必須輸入");
			} else {
				if (!chkPassword.equals(password)) {
					errorMsg.put("chkPassword", "確認密碼欄必須和密碼欄位一致");
				}
			}
		} else {
			// 更新時的驗證
			succPage = "/member/updateSuccess";
			errPage = "/member/saveMember";
		}
		// 共用時的驗證
		if (StringUtils.isBlank(mb.getGender())) {
			errorMsg.put("gender", "性別欄必須輸入");
		}

		if (StringUtils.isBlank(mb.getBirthday())) {
			errorMsg.put("birthday", "生日欄必須輸入");
		}
		if (StringUtils.isBlank(mb.getChineseLastName())
				||StringUtils.isBlank(mb.getChineseFirstName())) {
			errorMsg.put("name", "中文姓名欄必須輸入");
		}

		if (StringUtils.isBlank(mb.getEmail())) {
			errorMsg.put("email", "email欄必須輸入");
		}
		if (StringUtils.isBlank(mb.getMobile())) {
			errorMsg.put("mobile", "手機欄必須輸入");
		}
		if (!errorMsg.isEmpty()) {
			return errPage;
		}
		// 4. 進行 Business Logic 運算
		System.out.println("4. 進行 Business Logic 運算");
		if ("add".equals(function)) {
			// 新增時的邏輯
			if (memberService.idExists(mb.getMemberId())) {
				errorMsg.put("memberId", "該身份證帳號 (" + mb.getMemberId() + ") 已經存在，請勿重複申請");
			} else {
				// 加密後的password為encodePassword
				String encodePassword = GlobalService.encryptString(mb.getPassword());
				try {
					MemberBean member = new MemberBean(mb.getMemberId(), encodePassword, mb.getGender(), mb.getChineseLastName(),
							mb.getChineseFirstName(), mb.getEnglishLastName(), mb.getEnglishFirstName(), bdate, mb.getEmail(), mb.getMobile(), mb.getPhoneNumber(),
							mb.getAddress(), mb.getPassportNumber(), mb.getMemberImage());
					memberService.addMember(member);
					//TODO
					if (StringUtils.isNotBlank(mb.getThirdPartyId())) {
						ThirdPartyMemberBean tpmb=
								new ThirdPartyMemberBean(mb.getThirdPartyId(), 
								mb.getThirdPartyType(), 
								mb.getMemberId());
						memberService.saveThirdPartyMember(tpmb);
					}

				} catch (Exception e) {
					errorMsg.put("memberId", "儲存資料時發生錯誤，請檢查，例外=" + e.getMessage());
					e.printStackTrace();
				}
			}
		} else {
			// 更新時的邏輯
			try {
				HttpSession session = request.getSession();
				MemberBean sessionMb = (MemberBean) session.getAttribute("LoginOK");// sessionMb
				sessionMb.setGender(mb.getGender());
				sessionMb.setChineseLastName(mb.getChineseLastName());
				sessionMb.setChineseFirstName(mb.getChineseFirstName());
				sessionMb.setEnglishLastName(mb.getEnglishLastName());
				sessionMb.setEnglishFirstName(mb.getEnglishFirstName());
				sessionMb.setBirthday(bdate);
				sessionMb.setEmail(mb.getEmail());
				sessionMb.setMobile(mb.getMobile());
				sessionMb.setPhoneNumber(mb.getPhoneNumber());
				sessionMb.setAddress(mb.getAddress());
				sessionMb.setPassportNumber(mb.getPassportNumber());
				if(mb.getMemberImage()!=null) {
					sessionMb.setMemberImage(mb.getMemberImage());
				}

				memberService.updateMember(sessionMb);
				request.setAttribute("chineseLastName", mb.getChineseLastName());
				request.setAttribute("chineseFirstName", mb.getChineseFirstName());
			} catch (Exception e) {
				errorMsg.put("memberId", "儲存資料時發生錯誤，請檢查，例外=" + e.getMessage());
				e.printStackTrace();
			}
		}

		// 5.依照 Business Logic 運算結果來挑選適當的畫面
		System.out.println("5.依照 Business Logic 運算結果來挑選適當的畫面");
		request.setAttribute("memberId", mb.getMemberId());
		System.out.println("errorMsg.isEmpty()="+errorMsg.isEmpty()
		+" go page->"+(errorMsg.isEmpty()?succPage:errPage));
		if (errorMsg.isEmpty()) {
			return succPage;
		} else {
			return errPage;
		}
	}
	
	 @RequestMapping(value = "/member/getPicture/{memberId}", method = RequestMethod.GET)
	 public ResponseEntity<byte[]> getPicture(HttpServletResponse resp,
	 @PathVariable String memberId) {
	 MemberBean bean = memberService.getMemberById(memberId);
	 HttpHeaders headers = new HttpHeaders();
	 Blob blob = bean.getMemberImage();
	 int len = 0;
	 byte[] media = null;
	 if (blob != null) {
	 try {
	 len = (int) blob.length();
	 media = blob.getBytes(1, len);
	 } catch (SQLException e) {
	 throw new RuntimeException("ProductController的getPicture()發生SQLException: " +
	 e.getMessage());
	 }
	 } else {
	 InputStream is =
	 context.getResourceAsStream("/WEB-INF/images/member/bigHead.png");
	 ByteArrayOutputStream baos = new ByteArrayOutputStream();
	 byte[] b = new byte[8192];
	 try {
	 while ((len = is.read(b)) != -1) {
	 baos.write(b, 0, len);
	 }
	 } catch (Exception e) {
	 throw new RuntimeException("ProductController的getPicture()發生IOException: "
	 + e.getMessage());
	 }
	 media = baos.toByteArray();
	 }
	 headers.setCacheControl(CacheControl.noCache().getHeaderValue());
	 headers.setContentType(MediaType.IMAGE_JPEG);
	 headers.setContentType(MediaType.IMAGE_GIF);
	 ResponseEntity<byte[]> responseEntity =
	 new ResponseEntity<>(media, headers, HttpStatus.OK);
	 return responseEntity;
	 }

}