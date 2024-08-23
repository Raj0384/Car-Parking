package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.org.dto.Booking;

public class BookingDaoImpl implements BookingDao {
	
	static EntityManagerFactory emf = Persistence.createEntityManagerFactory("error");

	@Override
	public void addBooking(Booking b) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.persist(b);
		et.commit();
	}

	@Override
	public Booking fetchBookingById(int bid) {
		EntityManager em = emf.createEntityManager();
		Booking b =  em.find(Booking.class, bid);
		return b;
	}

	@Override
	public List<Booking> fetchAllBooking() {
		EntityManager em = emf.createEntityManager();
		String jpql = "SELECT b FROM Booking b";
		Query q = em.createQuery(jpql);
		return q.getResultList();
	}

	@Override
	public void updateBookingById(Booking b) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.merge(b);
		et.commit();
	}

	@Override
	public void deleteBookingById(int bid) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		Booking b = em.find(Booking.class, bid);
		
		et.begin();
		em.remove(b);
		et.commit();
	}
	public void updatePriceById(int id, int price)
	{

		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		
		String jpql = "UPDATE Booking b SET b.cost =?1 where b.bid=?2";
		Query q = em.createQuery(jpql);
	
		  q.setParameter(1, price);
		  q.setParameter(2, id); 
		  
		  List<Booking> list = q.getResultList();
		  Booking booking = list.get(0);
		  
		  et.begin();
		  em.merge(booking);
		  et.commit();
	}

	public List<Booking> fetchBookingByName(String uname) {
		EntityManager em = emf.createEntityManager();
		String jpql = "select b from Booking b where b.name=?1 ";
		Query q = em.createQuery(jpql);
		q.setParameter(1, uname);
		List<Booking> list = q.getResultList();
		return list;
	}
}
