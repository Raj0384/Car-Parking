package com.org.dao;

import java.util.List;

import com.org.dto.Admin;

public interface AdminDao {
	
	void addAdmin(Admin a);
	Admin fetchAdminById(int aid);
	List<Admin> fetchAllAdmin();
	void updateAdminById(Admin a);
	void deleteAdminById(int aid);
	Admin fetchAdminByEmail(String aemail,String apwd);
}
