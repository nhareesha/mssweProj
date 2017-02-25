package com.musicAnalyser.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.musicAnalyser.beans.LoginBean;
import com.musicAnalyser.beans.LoginResult;
import com.musicAnalyser.beans.RegistrationBean;
import com.musicAnalyser.beans.SongDetails;
import com.musicAnalyser.dao.UserDAOImpl;
import com.musicAnalyser.services.SimilarSongsService;

/**
 * @author Hareesha Feb 4, 2017
 */

@Controller
@RequestMapping(value = "/")
public class BaseController {
	
	@Autowired
	private UserDAOImpl dao;
	
	
	
	@Autowired
	private SimilarSongsService simSongs;
	
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
	public ModelAndView handelLogin(@ModelAttribute("loginUser") LoginBean loginBean,
			BindingResult result, ModelMap map) {
		System.out.println("we are here" + loginBean.getUname());
		ModelAndView mv = new ModelAndView();
		//Handle login code here
		LoginResult res = dao.loginUser(loginBean);
		if(res.isResult() == true){
			String msg = res.getFname();
			mv.setViewName("dashboard");
			mv.addObject("successMsg",msg);
			map.addAttribute("songDetails", new SongDetails());//while loading dashboard, this is required to handle similar links page
																//need to change this to other page before intigrating with visualizer page
			return mv;
		}
		
		//some work is needed here , to show error message, need some script
		mv.setViewName("login");
		mv.addObject("errorMag","Username/Password is incorrect");
		return mv;
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
	public ModelAndView handleRegistration(@ModelAttribute("registerUser")RegistrationBean regBean,
			BindingResult result, ModelMap map){
		System.out.println("We are in handle registration method");
		//handle registration 
		dao.addUser(regBean);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("dashboard");
		mv.addObject("successMsg",regBean.getFname());
		return mv;
	}
	
	
	
 /**
  * Handle similar songs
  * @param songDtls
  * @param result
  * @param map
  * @return
  */
	@RequestMapping(value = "similarSongs", method = RequestMethod.POST)
	public ModelAndView submitForm(@ModelAttribute("songDetails")SongDetails songDtls,
			BindingResult result, ModelMap map) {
		System.out.println(songDtls.getTrack());
		
		//need code to return the list of similar songs 
		
		//call to service class for current song details
		SongDetails currentSong = simSongs.getCurrentSongDtls(songDtls.getTrack());
		
		//call to service class to get similar songs
		List<SongDetails> similarlist= simSongs.getSimilarSongsList(songDtls.getTrack());
		
		ModelAndView mv = new ModelAndView("dashboard");//after intigration need to change the view name
		
		//Add current playing song to ModelView
		mv.addObject("currentSong", currentSong);
		
		if(similarlist!=null && similarlist.size()>0){
			
			//ModelAndView puts the object in the request scope , which can be retrieved by using 
			//request.getAttribute() in the jsp
			mv.addObject("smlrsongList", similarlist);
		}else{
			mv.addObject("listEmpty","No matching Song found in the database");
		}
		return mv;
 
	}
	
	
	
	/*@RequestMapping(value = "similarSongs", method = RequestMethod.GET)
	public ModelAndView showDashboard(Model model) {
		// Add the command object to the modelview
		ModelAndView mv = new ModelAndView("dashboard");
		mv.addObject("songDetails", new SongDetails());
		System.out.println("In get request similar songs");
		return mv;
	}*/
	
	
	
/*	@RequestMapping(value="similarSongs" , method=RequestMethod.GET)
	public ModelAndView handleSimilarLinks(){
		System.out.println("we are here on click of link");
		ModelAndView mv = new ModelAndView();
	//	System.out.println(req.getParameter("sname"));
		mv.setViewName("dashboard");
		return mv;
		
	}
	*/
	
	/*@RequestMapping(value="similarSongs" , method=RequestMethod.POST)
	public String handleSimilarLinks(@ModelAttribute("similarSongs")SongDetails song,BindingResult result, ModelMap map){
		System.out.println(song.getSongName());
		return null;
	}*/
	
	
	/*@RequestMapping(value = "dashboard", method = RequestMethod.GET)
	public ModelAndView dislayDashBoard(Model model) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("dashboard");
		
		model.addAttribute("similarSongs",new SongDetails());//this is required for binding
		return mv;
	}
	*/
	
	/*@RequestMapping(value="similarSongs" , method=RequestMethod.GET)
	public String handleSimilarLinks(){
		return null;
	}*/
	
	
}
