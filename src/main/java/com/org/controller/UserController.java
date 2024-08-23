package com.org.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.org.dao.UserDaoImpl;
import com.org.dto.Admin;
import com.org.dto.User;

@Controller
public class UserController {
	
	UserDaoImpl udi = new UserDaoImpl();
	
	@RequestMapping("/adduser")
	public ModelAndView addUser(@ModelAttribute User u) {
		ModelAndView mav = new ModelAndView("index.jsp");
		udi.addUser(u);
		mav.addObject("msg");
		return mav;
	}
	
	@RequestMapping("/fetchuser")
	public ModelAndView fetchAllUser(){
		ModelAndView mav = new ModelAndView("");
		mav.addObject("user" , udi.fetchAllUser());
		return mav;
	}
	
	@RequestMapping("/fetchuserbyemail")
	public ModelAndView fetchUserByEmail(@RequestParam String uemail) {
		ModelAndView mav = new ModelAndView("");
		mav.addObject("us" , udi.fetchUserByEmail(uemail));
		return mav;
	}
	
	@RequestMapping("/deleteuser")
	public ModelAndView deleteUser(@RequestParam int uid) {
		ModelAndView mav = new ModelAndView("adminviewusers.jsp");
		udi.deleteUserById(uid);
		return mav;
	}
	
	@RequestMapping("/edituser")
	public ModelAndView editUser(@RequestParam String uid) {
		ModelAndView mav = new ModelAndView("userupdate.jsp");
		User u = udi.fetchUserById(Integer.parseInt(uid));
		mav.addObject("us" , u);
		return mav;
	}
	
	@RequestMapping("/updateuser")
	public ModelAndView updateUser(@ModelAttribute User u) {
		ModelAndView mav = new ModelAndView("userhome.jsp");
		udi.updateUserById(u);
		return mav;
	}
	
	@RequestMapping("/loginuser")
	public ModelAndView loginUser(@RequestParam String uemail , @RequestParam String upwd,HttpSession session) {
		User u = udi.fetchUserByEmailPassword(uemail,upwd);
//		if(a != null && a.getApwd().equals(apwd)) {
//			return new ModelAndView("adminhome.jsp");
//		}else {
//			return new ModelAndView("adminlogin.jsp");
//		}
		session.setAttribute("user", u);
		
		if(u != null)
		{
			ModelAndView mav = new ModelAndView("userhome.jsp");
			mav.addObject("user",u);
			return mav;
		}
		return new ModelAndView("userlogin.jsp");
		
	}
	
}
