/**
 * 
 */
package com.musicAnalyser.dao;

import com.musicAnalyser.beans.LoginBean;
import com.musicAnalyser.beans.LoginResult;
import com.musicAnalyser.beans.RegistrationBean;

/**
 * @author Hareesha
 * Feb 9, 2017	
 */
public interface UserDAO {
	public void addUser(RegistrationBean obj);
	public LoginResult loginUser(LoginBean bean);
	public RegistrationBean getUser(String email);
}
