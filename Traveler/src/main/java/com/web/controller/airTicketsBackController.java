package com.web.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resources;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.synth.SynthSpinnerUI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Conditional;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.itextpdf.text.DocumentException;
import com.web.model.airplain.ClickNumBean;
import com.web.model.airplain.ExtraPriceBean;
import com.web.model.airplain.GuestBean;
import com.web.model.airplain.OrderDetailsBean;
import com.web.model.member.MemberBean;
import com.web.service.airplain.BFMService;
import com.web.service.airplain.CountClickService;
import com.web.service.airplain.ExtraPriceService;
import com.web.service.airplain.GuestService;
import com.web.service.airplain.MemberSecuService;
import com.web.service.airplain.OrderService;
import com.web.service.airplain.PdfProduceService;
import com.web.service.airplain.SendEmailService;
import com.web.service.member.MemberService;

@Controller
@RequestMapping("/airTickets/back")
public class airTicketsBackController {

	@Autowired
	BFMService bfmService;
	@Autowired
	HttpSession session;
	@Autowired
	OrderService os;
	@Autowired
	GuestService gs;
	@Autowired
	ExtraPriceService eps;
	@Autowired
	PdfProduceService pdfService;
	@Autowired
	SendEmailService sendEmailService;
	@Autowired
	MemberService memberService;
	@Autowired
	CountClickService countClickService;
	@Autowired
	MemberSecuService memberSecuService;

	@RequestMapping("/list")
	public String backList() {
		return "airTickets/back/airBackList";
	}

	@RequestMapping("/searchAll")
	public String searchAll(Model model) {
		List<OrderDetailsBean> allOrder = os.getAllOrder();
		memberSecuService.modify(allOrder);
		// Date date = new Date();
		// boolean newOrder=false;
		// if((date.getTime()-bean.getOrderDay().getTime())<=(2*3600*24)) {
		// newOrder=true;
		// }
		System.out.println("測試");
		model.addAttribute("list", allOrder);
		// model.addAttribute("date", date);

		return "airTickets/back/airBackAllOrder2";
	}

	@RequestMapping(value = "/selectOne/{orderID}", method = RequestMethod.GET)
	public String selectOne(@PathVariable("orderID") String orderID, Model model) {
		OrderDetailsBean bean = os.selectOneByOrderId(orderID);
		model.addAttribute("bean", bean);
		System.out.println(bean);
		return "/airTickets/back/searchOrderList";
	}
	//給前台查詢
	@RequestMapping(value = "/member/selectOne/{orderID}", method = RequestMethod.GET)
	public String selectMemberOrder(@PathVariable("orderID") String orderID, Model model) {
		OrderDetailsBean bean = os.selectOneByOrderId(orderID);
		model.addAttribute("bean", bean);
		System.out.println(bean);
		return "/airTickets/memberOrderDetail";
	}

	@RequestMapping(value = "/selectOne/{orderID}", method = RequestMethod.POST)
	@ResponseBody
	public String updateGuestInfo(GuestBean guestBean, OrderDetailsBean orderBean, Model model) {
		System.out.println("前" + guestBean);
		guestBean.setId(orderBean.getGuestId());
		gs.update(guestBean);
		System.out.println("後" + guestBean);
		return "OK";
	}

	// 導向統計畫面
	@RequestMapping("/statistics")
	public String toStatistics(Model model) {
		List<ClickNumBean> list = countClickService.selectAll();
		String json = new Gson().toJson(list);
		model.addAttribute("json", json);
		return "/airTickets/back/statistics";
	}

	@RequestMapping("/here")
	public String selectOne() {
		System.out.println(eps.getExtraPrice("TPE", "HND"));
		return "/airTickets/back/here";
	}

	@RequestMapping(value = "/extra", method = RequestMethod.POST)
	@ResponseBody
	public Map getExtraPrice(@RequestParam("dept") String dept, @RequestParam("arrv") String arrv) {
		ExtraPriceBean extraPriceBean = eps.selectByidGetBean(dept, arrv);
		System.out.println(extraPriceBean);
		Map<String, Integer> map = new HashMap<>();
		map.put("pkId", extraPriceBean.getId());
		map.put("extraPrice", extraPriceBean.getExtraPrice());
		return map;
	}
	
	//顯示額外價格清單
	@RequestMapping("/extraShow")
	public String showExtraList(Model model) {
		List<ExtraPriceBean> list = eps.selectALl();
		model.addAttribute("list",list);
		return "/airTickets/back/extraPriceShow";
	}

	@RequestMapping(value = "/updateExtra", method = RequestMethod.POST)
	@ResponseBody
	public String updateExtraPrice(ExtraPriceBean epBean) {
		System.out.println(epBean);
		eps.updateExtraPrice(epBean);
		return "OK";

	}

	@RequestMapping(value = "/selectOne/PDF/sendPDF", method = RequestMethod.POST)
	@ResponseBody
	public String sendPDF(@RequestParam("orderId") String orderId) throws DocumentException, IOException {
		OrderDetailsBean odBean = os.selectOneByOrderId(orderId);
		// 取得此張訂單的會員EMAIL
		String memberEmail = odBean.getGuestBean().getContactEmail();
		System.out.println(memberEmail);
		pdfService.pdfProduce(odBean);
		sendEmailService.sendNewEmail(orderId, memberEmail);
		return "OK";

	}

	// 查詢是否有訂單
	@RequestMapping(value = "/selectOne/check", method = RequestMethod.POST)
	@ResponseBody
	public String selectOneCheck(@RequestParam("orderId") String orderID) {
		OrderDetailsBean bean = os.selectOneByOrderId(orderID);
		System.out.println(bean);
		if (bean == null) {
			return "noAnswer";
		}
		System.out.println(orderID);
		return "exist";
	}
	
	@RequestMapping(value = "/modifyExtraPrice", method = RequestMethod.POST)
	@ResponseBody
	public String modifyExtraPrice(@RequestParam("id") Integer id,
			@RequestParam("modifyExtraPrice") Integer modifyExtraPrice) {
		eps.updateExtraPrice(modifyExtraPrice, id);;
		return "Ok";
	}

}
