package com.web.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;


import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.web.model.commodity.CommodityBean;
import com.web.service.commodity.CommodityService;


@Controller
public class CommodityController {

	@Autowired
	HttpSession session;
	
	@Autowired
	CommodityService commodityservice;
	
	@Autowired
	ServletContext context; 
	
	
	
	@RequestMapping(value="/commlist")
	public String list(Model model) {
		List<CommodityBean>  list = commodityservice.getAllData();
		model.addAttribute("commlist", list);
		
		
		return "commodity/commlist";
	}
	

	//挑出類型
	@RequestMapping(value="/queryByKind")
	public String kindlist(Model model) {
		List<String> list=commodityservice.getAllKinds();
		model.addAttribute("kindlist",list);
		
		return "commodity/kinds";
	}
	
	//依類型顯示該類型商品
	@RequestMapping(value="/comm/{kinds}/{sort}")
	public String getCommodityByKind(@PathVariable("kinds") String kind,
			                         @PathVariable("sort") int sort ,Model model) {
		List<CommodityBean> list=commodityservice.getCommodityByKind(kind,sort);
		model.addAttribute("commlist", list);
		
		return "commodity/commlistfront2";
	}
	
	
	//new空白的bean給表單
	@RequestMapping(value="/tsuika")
	public String insertform(Model model) {
		CommodityBean cb=new CommodityBean();
		model.addAttribute("CommodityBean", cb);	
		return "commodity/addcomm";
	}
	
	//新增資料和圖片
	@RequestMapping(path= {"/add"} , method=RequestMethod.POST)
	public  String addCommodityForm(@ModelAttribute("CommodityBean") CommodityBean cb, 
			BindingResult result, HttpServletRequest request) {
		
		String[] suppressedFields = result.getSuppressedFields();
		if (suppressedFields.length > 0) {
			throw new RuntimeException("嘗試傳入不允許的欄位: " 
			+ StringUtils.arrayToCommaDelimitedString(suppressedFields));
		}
		
		MultipartFile productImage = cb.getProductImage();
		String originalFilename = productImage.getOriginalFilename();
		cb.setPicturename(originalFilename);
		
		String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		//  建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage != null && !productImage.isEmpty() ) {
			try {
				byte[] b = productImage.getBytes();
				Blob blob = new SerialBlob(b);
				cb.setPicture(blob);
				} catch(Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}
		commodityservice.addCommodity(cb);
		//  將上傳的檔案移到指定的資料夾
			try {
				File imageFolder = new File(rootDirectory, "images");
				if (!imageFolder.exists()) imageFolder.mkdirs();
				File file = new File(imageFolder, cb.getCommodityid() + ext);
				productImage.transferTo(file);
			} catch(Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
			
			
				return "redirect:/commlist";
		

	}
	
	//新增產品JSP中 列出種類清單的方法
	@ModelAttribute(value="kindList")
	public List<String> getkindList(){
		return commodityservice.getAllKinds();
	}
	
		
	//新增把圖片blob變為位元組
	@RequestMapping(value="/getPicture/{commodityid}" ,method=RequestMethod.GET)
	public ResponseEntity<byte[]> getPicture(HttpServletResponse resp ,@PathVariable Integer commodityid){
		CommodityBean bean=commodityservice.getCommodityById(commodityid);
		HttpHeaders headers=new HttpHeaders();  
		Blob blob=bean.getPicture();
		int  len = 0;
		
		byte[] media=null;
		if(blob!=null) {
			try {
				len=(int)blob.length();
				media=blob.getBytes(1, len);
			}catch(SQLException e) {
				throw new RuntimeException("這個getPicture()方法發生SQLException:"+e.getMessage());
			}
		}else {                                         //下面為 如果沒圖片從這個資料夾裡拿取  
			InputStream is=context.getResourceAsStream("/resources/images/NoImage.jpg");
			ByteArrayOutputStream baos=new ByteArrayOutputStream();
			byte[] b=new byte[8192];
			try {
				while((len=is.read(b))!=-1) {
					baos.write(b,0,len);
				}
			}catch (Exception e){
				throw new RuntimeException("這個getPicture()方法發生IOException:"+e.getMessage());
			}
			media=baos.toByteArray(); //轉換位元組陣列		
		}                      //CacheControl 不能上一頁
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		ResponseEntity<byte[]> responseEntity=
				new ResponseEntity<>(media,headers,HttpStatus.OK);
		return responseEntity;
	
	}

	
	@RequestMapping(value="/henkou")
	public String updateform(Model model,
			@ModelAttribute("CommodityBean") CommodityBean cb) {
		
		List<CommodityBean>  list = commodityservice.getAllData();
		model.addAttribute("commlist", list);
		return "commodity/update";		
		
	}
	
	//Cb2 原本資料庫裡的  cb是使用者輸入的
	@RequestMapping(path= "/update/{commodityid}" )
	public String update(@ModelAttribute("CommodityBean") CommodityBean cb,
			@PathVariable Integer commodityid
			) {

		commodityservice.update(cb);

		
		return "redirect:/commlist";
	}
	
	
	@RequestMapping(value="/commlistpoint/{kind}")
	public String listPoint(Model model,@PathVariable("kind") String kind) {
		
	List<CommodityBean>  list = commodityservice.getAllPoint(kind);
	model.addAttribute("commlist", list);
		
		return "commodity/commlistfront_point";
	}
	
	@RequestMapping(value="/commlistpointdesc/{kind}")
	public String listPointDesc(Model model,@PathVariable("kind") String kind) {
		
	List<CommodityBean>  list = commodityservice.getAllPointdesc(kind);
	model.addAttribute("commlist", list);
		
		return "commodity/commlistfront_point2";
	}
	
	
	
}	
