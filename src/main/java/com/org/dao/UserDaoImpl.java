package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.org.dto.Admin;
import com.org.dto.User;

public class UserDaoImpl implements UserDao {
	
	static EntityManagerFactory emf = Persistence.createEntityManagerFactory("error");

	@Override
	public void addUser(User u) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.persist(u);
		et.commit();
	}

	@Override
	public User fetchUserById(int uid) {
		EntityManager em = emf.createEntityManager();
		User u = em.find(User.class, uid);
		return u;
	}
	
	@Override
	public User fetchUserByEmail(String uemail) {
		EntityManager em = emf.createEntityManager();
		String jpql = "SELECT u FROM User u WHERE u.uemail=?1";
		Query q = em.createQuery(jpql);
		q.setParameter(1, uemail);
		return (User) q.getResultList();
	}
	
	@Override
	public User fetchUserByEmailPassword(String uemail, String upwd) {
		EntityManager em = emf.createEntityManager();
		String jpql = "SELECT u FROM User u where u.uemail=?1 and u.upwd=?2";
		Query q = em.createQuery(jpql);
		q.setParameter(1, uemail);
		q.setParameter(2, upwd);
		 List<User> list = q.getResultList();
		 if(list.size() != 0)
			 return list.get(0);
		 return null;
	}

	@Override
	public List<User> fetchAllUser() {
		EntityManager em = emf.createEntityManager();
		String jpql = "SELECT u FROM User u";
		Query q = em.createQuery(jpql);
		return q.getResultList();
	}

	@Override
	public void updateUserById(User u) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.merge(u);
		et.commit();
	}

	@Override
	public void deleteUserById(int uid) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		User user = em.find(User.class, uid);
		
		et.begin();
		em.remove(user);
		et.commit();
	}

}
