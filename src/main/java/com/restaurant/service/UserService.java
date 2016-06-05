package com.restaurant.service;

import com.restaurant.bean.User;
import com.restaurant.dao.UserDAO;

public class UserService {
	UserDAO userDao = new UserDAO();

	public User saveUser(User user) {
		
		User getUser=userDao.getUser(user);
		
		return getUser;
		
	}

}
