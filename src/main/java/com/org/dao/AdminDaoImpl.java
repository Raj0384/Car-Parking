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

public class AdminDaoImpl implements AdminDao {
	
	static EntityManagerFactory emf = Persistence.createEntityManagerFactory("error");
	
	@Override
	public void addAdmin(Admin a) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.persist(a);
		et.commit();
	}

	@Override
	public Admin fetchAdminById(int aid) {
		EntityManager em = emf.createEntityManager();
		Admin a = em.find(Admin.class, aid);
		return a;
	}
	
	@Override
	public Admin fetchAdminByEmail(String aemail,String apwd) {
		
		EntityManager em = emf.createEntityManager();
		String jpql = "SELECT a FROM Admin a where a.aemail=?1 and a.apwd=?2";
		Query q = em.createQuery(jpql);
		q.setParameter(1, aemail);
		q.setParameter(2, apwd);
		 List<Admin> list = q.getResultList();
		 if(list.size() != 0)
			 return list.get(0);
		 return null;
//		 Session currentSession = sessionFactory.getCurrentSession();
//	        CriteriaBuilder builder = currentSession.getCriteriaBuilder();
//	        CriteriaQuery<Admin> criteriaQuery = builder.createQuery(Admin.class);
//	        Root<Admin> root = criteriaQuery.from(Admin.class);
//	        criteriaQuery.select(root).where(builder.equal(root.get("aemail"), aemail));
//	        return currentSession.createQuery(criteriaQuery).uniqueResult();
		
		
	}

	@Override
	public void updateAdminById(Admin a) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.merge(a);
		et.commit();
	}

	@Override
	public void deleteAdminById(int aid) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.remove(aid);
		et.commit();
	}

	@Override
	public List<Admin> fetchAllAdmin() {
		EntityManager em = emf.createEntityManager();
		String jpql = "SELECT a FROM Admin a";
		Query q = em.createQuery(jpql);
		return q.getResultList();
	}
	
}
