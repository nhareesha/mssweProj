/**
 * 
 */
package com.musicAnalyser.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.musicAnalyser.beans.RegistrationBean;
import com.musicAnalyser.dao.UserDAOImpl;

/**
 * The main purpose of this class is to map the RegistrationBean class of application to User class of
 * SpringSecurity module
 * @author Hareesha
 * Mar 10, 2017 2017
 */
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private UserDAOImpl userdao;
	
	@Override
	public UserDetails loadUserByUsername(String email)
			throws UsernameNotFoundException {
		
		  RegistrationBean user = userdao.getUser(email);
		  boolean enabled = true;
	      boolean accountNonExpired = true;
	      boolean credentialsNonExpired = true;
	      boolean accountNonLocked = true;
	      System.out.println("We are here in cust");
	      return new User(
	    		  user.getEmail(),
	    		  user.getPsw(),
	    		  enabled, 
	               accountNonExpired, 
	               credentialsNonExpired, 
	               accountNonLocked,
	               getGrantedAuthorities());
	}
	
	public static List<GrantedAuthority> getGrantedAuthorities() {
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
            authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
        return authorities;
    }
	
}
