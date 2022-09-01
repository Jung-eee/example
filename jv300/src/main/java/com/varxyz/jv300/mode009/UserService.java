package com.varxyz.jv300.mode009;

import com.varxyz.jv300.mod007.User;

public class UserService {
	private UserDao userDao;
	
	public void addUser(User user) {
		userDao.addUser(user);
	}
	public UserService(UserDao userDao) {
		this.userDao = userDao;
	}
	public boolean isValidUser(String userId, String passwd) {
		return false;
	}
	
	
	
}
