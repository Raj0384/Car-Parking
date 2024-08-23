package com.org.controller;

import java.util.List;

import javax.persistence.Query;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.org.dao.BookingDaoImpl;
import com.org.dto.Admin;
import com.org.dto.Booking;

@Controller
public class BookingController {
	
	BookingDaoImpl bdi = new BookingDaoImpl();
	
	@RequestMapping("/addbooking")
	public ModelAndView addBooking(@ModelAttribute Booking b) {
		ModelAndView mav = new ModelAndView("userhome.jsp");
		bdi.addBooking(b);
	
		mav.addObject("msg");
		return mav;
	}
	
	@RequestMapping("/fetchbooking")
	public ModelAndView fetchAllBooking(@RequestParam String uname){
		ModelAndView mav = new ModelAndView("userbookings.jsp");
		List<Booking> list = bdi.fetchBookingByName(uname);
		mav.addObject("bookingList", list);
		return mav;
	}
	
	@RequestMapping("/deletebooking")
	public ModelAndView deleteBooking(@RequestParam int bid) {
		ModelAndView mav = new ModelAndView("adminviewbookings.jsp");
		bdi.deleteBookingById(bid);
		return mav;
	}
	
	@RequestMapping("/editbooking")
	public ModelAndView editBooking(@RequestParam int bid) {
		ModelAndView mav = new ModelAndView("");
		Booking b = bdi.fetchBookingById(bid);
		mav.addObject("bo" , b);
		return mav;
	}
	
	@RequestMapping("/updatebooking")
	public ModelAndView updateBooking(@RequestParam int bid,@RequestParam int cost) {
		ModelAndView mav = new ModelAndView("adminhome.jsp");
		System.out.println(bid);
//		bdi.updateBookingById(b);
		bdi.updatePriceById(bid, cost);
		return mav;
	}
}
