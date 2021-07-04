package com.Project.auth.controllers;

import java.security.Principal;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Project.auth.models.Event;
import com.Project.auth.models.Trip;
import com.Project.auth.models.User;
import com.Project.auth.services.EventService;
import com.Project.auth.services.TripService;
import com.Project.auth.services.UserService;
import com.Project.auth.validator.UserValidator;


@Controller
public class Users {
	@Autowired
	private TripService tripSer;
	@Autowired
	private EventService eventSer;
	 private UserService userService;
	 private UserValidator userValidator;
	    
	    
	 public Users(UserService userService, UserValidator userValidator) {
	        this.userService = userService;
	        this.userValidator = userValidator;
	    }
	    
	
	@RequestMapping("/registration")
    public String registerForm(@Valid @ModelAttribute("user") User user) {
        return "registrationPage.jsp";
    }
	
	
	 @PostMapping("/registration")
	    public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model) {
	       
	        userValidator.validate(user, result);
	        if (result.hasErrors()) {
	            return "registrationPage.jsp";
	        }
        userService.saveUserWithAdminRole(user);
//	        userService.saveWithUserRole(user);
	        return "redirect:/login";
	    }
	 @RequestMapping("/admin")
	    public String adminPage(Principal principal, Model model) {
	        String username = principal.getName();
	        model.addAttribute("currentUser", userService.findByUsername(username));
	        List<Event> events = eventSer.findAllEvents();
	        model.addAttribute("events", events);
	        
	        List<Trip> trips = tripSer.findAllTrips();
	        model.addAttribute("trips", trips);
	        
	        return "adminPage.jsp";
	    }
	 

	 @RequestMapping("/login")
	    public String login(@RequestParam(value="error", required=false) String error, @RequestParam(value="logout", required=false) String logout, Model model) {
	        if(error != null) {
	            model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
	        }
	        if(logout != null) {
	            model.addAttribute("logoutMessage", "Logout Successful!");
	        }
	        return "redirect:/registration";
	    }
    @RequestMapping(value = {"/", "/home"})
    public String home(Principal principal, Model model) {
        // 1
        String username = principal.getName();
        model.addAttribute("currentUser", userService.findByUsername(username));
        return "homePage.jsp";
    }
//    ******** Trip form ***********

  @RequestMapping("/trips")  
  public String tripForm(@ModelAttribute("trip")Trip trip) {
    return "createtrip.jsp";
  }
}
