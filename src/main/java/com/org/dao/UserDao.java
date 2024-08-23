package com.org.dao;

import java.util.List;

import com.org.dto.User;

public interface UserDao {
	
	void addUser(User u);
	User fetchUserById(int uid);
	User fetchUserByEmail(String uemail);
	List<User> fetchAllUser();
	void updateUserById(User u);
	void deleteUserById(int uid);
	User fetchUserByEmailPassword(String uemail, String upwd);

}
