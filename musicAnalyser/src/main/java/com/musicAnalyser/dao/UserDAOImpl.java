/**
 * 
 */
package com.musicAnalyser.dao;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.musicAnalyser.beans.LoginBean;
import com.musicAnalyser.beans.LoginResult;
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
        
	public LoginResult loginUser(LoginBean bean){
		LoginResult res = new LoginResult();
		try {
		session = sessionFactory.openSession();
		Query q = session.createQuery("Select u.fname,u.psw from RegistrationBean u where u.email= :email");
		q.setParameter("email", bean.getUname());
		
		 List<Object[]> users =q.list();
		 
		 if(users.size() == 1){
			 Object[] first = users.get(0); //this gives the first list item
			 String uname =(String)first[0];
			 String psw =(String)first[1]; 
			 if(psw.equals(bean.getPsw())){
				 res.setFname(uname);
				 res.setResult(true);
			}
		 }
		}catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return res;
	}
	
	
	/**
	 * This is the that retrives the user from the database
	 * @param email
	 * @return
	 */
	public RegistrationBean getUser(String email){
		List<RegistrationBean> users = new ArrayList<RegistrationBean>();
		RegistrationBean usr = new RegistrationBean();
		try {
		session = sessionFactory.openSession();
		Query q = session.createQuery("from RegistrationBean u where u.email= :email");
		q.setParameter("email",email);
		users =q.list();
		 
		 if(users.size() > 0){
			 usr = users.get(0);
		 }else{
			 usr = null;
		 }
		}catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return usr;
	}
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
