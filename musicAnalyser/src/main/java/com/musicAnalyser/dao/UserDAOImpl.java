/**
 * 
 */
package com.musicAnalyser.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.musicAnalyser.beans.LoginBean;
import com.musicAnalyser.beans.RegistrationBean;

/**
 * @author Hareesha Feb 9, 2017
 */
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	private Session session;
	private Transaction tx;
	
	/**
	 * AddUser meth
	 */
	@Override
	public void addUser(RegistrationBean obj) {
		try {
			System.out.println("start of dao");
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			session.save(obj);
			tx.commit();
			System.out.println("end of dao");
		} catch (Exception ex) {
			ex.printStackTrace();
			tx.rollback();
		} finally {
			session.close();
		}
	}
	/**
	 * This methods verifies the login credentials
	 * @return
	 */
	public boolean loginUser(LoginBean bean){
		boolean result = false;
		String sql = "SELECT psw FROM USER WHERE email="+"\""+bean.getUname()+"\"";
		session = sessionFactory.openSession();
		Query query = session.createSQLQuery(sql);
		List<String> results = query.list();
		if(results.size()==1){
			if((results.get(0)).equals(bean.getPsw())){
			result = true;
			}
		}
		return result;
	}
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
}
