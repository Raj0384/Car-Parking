package com.org.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.org.dao.AdminDaoImpl;
import com.org.dto.Admin;
import com.org.dto.User;

@Controller
public class AdminController {
	
	AdminDaoImpl adi = new AdminDaoImpl();
	
	@RequestMapping("/fetchadmin")
	public ModelAndView fetchAllAdmin(){
		ModelAndView mav = new ModelAndView("");
		mav.addObject("admin" , adi.fetchAllAdmin());
		return mav;
	}
	
	@RequestMapping("/deleteadmin")
	public ModelAndView deleteAdmin(@RequestParam int aid) {
		ModelAndView mav = new ModelAndView("");
		adi.deleteAdminById(aid);
		return mav;
	}
	
	@RequestMapping("/editadmin")
	public ModelAndView editAdmin(@RequestParam String aid) {
		ModelAndView mav = new ModelAndView("adminupdate.jsp");
		Admin a = adi.fetchAdminById(Integer.parseInt(aid));
		mav.addObject("ad" , a);
		return mav;
	}
	
	@RequestMapping("/updateadmin")
	public ModelAndView updateAdmin(@ModelAttribute Admin a) {
		ModelAndView mav = new ModelAndView("adminhome.jsp");
		adi.updateAdminById(a);
		return mav;
	}
	
	@RequestMapping("/loginadmin")
	public ModelAndView loginAdmin(@RequestParam String aemail , @RequestParam String apwd) {
		Admin a = adi.fetchAdminByEmail(aemail,apwd);
//		if(a != null && a.getApwd().equals(apwd)) {
//			return new ModelAndView("adminhome.jsp");
//		}else {
//			return new ModelAndView("adminlogin.jsp");
//		}
		
		if(a != null)
			return new ModelAndView("adminhome.jsp");
		return new ModelAndView("adminlogin.jsp");
		
	}
	
	
}
