package com.restaurant.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.restaurant.bean.User;
import com.restaurant.util.DBUtil;

public class UserDAO {
	DBUtil dbUtil = new DBUtil();
	
	public User getUser(User user){
		Session session = dbUtil.openSession();
		Transaction tx = session.beginTransaction();
		try{
			session.get(User.class, user.getUsername());
			tx.commit();
		}catch(Throwable e)
		{
			return null;
		}
		return null;
	}

}
