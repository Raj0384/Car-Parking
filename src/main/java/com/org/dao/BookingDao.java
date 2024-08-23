package com.org.dao;

import java.util.List;

import com.org.dto.Booking;

public interface BookingDao {
	
	void addBooking(Booking b);
	Booking fetchBookingById(int bid);
	List<Booking> fetchAllBooking();
	void updateBookingById(Booking b);
	void deleteBookingById(int bid);

}
