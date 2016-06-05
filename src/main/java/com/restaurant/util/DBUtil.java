package com.restaurant.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class DBUtil {
	
	private SessionFactory getDBConnection() {
		SessionFactory sessionFactory;
		sessionFactory	=new Configuration()
		.setProperty("hibernate.dialect", "org.hibernate.dialect.OracleDialect")
		.setProperty("hibernate.connection.driver_class", "oracle.jdbc.driver.OracleDriver")
		.setProperty("hibernate.connection.url", "jdbc:oracle:thin:@localhost:1521:orcl")
		.setProperty("hibernate.connection.username", "hr")
		.setProperty("hibernate.connection.password", "hr")
		.configure()
		.buildSessionFactory();
		return sessionFactory;
	}
	
	public Session openSession(){
		Session session = getDBConnection().openSession();
		return session;
		
		
	}

}
