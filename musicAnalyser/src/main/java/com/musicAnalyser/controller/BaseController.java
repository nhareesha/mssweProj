package com.musicAnalyser.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 * @author Hareesha
 * Feb 4, 2017
 */

@Controller
@RequestMapping(value="/")
public class BaseController {

	@RequestMapping(value="login" , method = RequestMethod.GET)
	public String login(){
		
		//ModelAndView mv = new ModelAndView();
		System.out.println("login - jsp");
		//mv.setViewName("index");
		return "index";
	}
	
	@RequestMapping(value="index" , method = RequestMethod.GET)
	public String index(){
		
		//ModelAndView mv = new ModelAndView();
		System.out.println("index - html page");
		//mv.setViewName("index");
		return "redirect : /resources/static/index.html";
	}
}
