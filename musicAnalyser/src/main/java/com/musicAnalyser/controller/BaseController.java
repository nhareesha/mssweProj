package com.musicAnalyser.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.musicAnalyser.beans.LoginBean;
import com.musicAnalyser.beans.RegistrationBean;

/**
 * @author Hareesha Feb 4, 2017
 */

@Controller
@RequestMapping(value = "/")
public class BaseController {

	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index() {

		// ModelAndView mv = new ModelAndView();
		System.out.println("login - jsp");
		// mv.setViewName("index");
		return "index";
	}
	
	/**
	 * This method handles to show the login display page
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public ModelAndView displayLogin(Model model) {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		mv.addObject("message_name", "actual_message");
		
		model.addAttribute("loginUser", new LoginBean());//This is required,in order to avoid Binding errors
		System.out.println("in login");
		return mv;

	}

	/**
	 * service method to handel login and display dash board
	 * 
	 * @param loginBean
	 * @param result
	 * @param map
	 * @return
	 */
	@RequestMapping(value = "handleLogin", method = RequestMethod.POST)
	public String handelLogin(@ModelAttribute("loginUser") LoginBean loginBean,
			BindingResult result, ModelMap map) {
		System.out.println("we are here" + loginBean.getUname());
		
		//Handle login code here
		
		return "listener";
	}
	
	/**
	 * This method displays the Registration page
	 * @return
	 */
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public ModelAndView dislayRegister(Model model) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("register");
		
		model.addAttribute("registerUser",new RegistrationBean());//this is required for binding
		return mv;
	}
	/**
	 * This method handles registration
	 * @param regBean
	 * @return
	 */
	@RequestMapping(value="handleRegistration", method=RequestMethod.POST)
	public String handleRegistration(@ModelAttribute("registerUser")RegistrationBean regBean,
			BindingResult result, ModelMap map){
		System.out.println("We are in handle registration method");
		//handle registration 
		return "listener";
	}
}
