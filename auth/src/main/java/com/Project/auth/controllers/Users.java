package com.Project.auth.controllers;

import java.io.IOException;
import java.security.Principal;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;

import com.Project.auth.models.Event;
import com.Project.auth.models.Trip;
import com.Project.auth.models.User;
import com.Project.auth.repositories.TripRepository;
import com.Project.auth.repositories.UserRepository;
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
		@Autowired

	 private TripRepository repo;
	    
	    
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
  //      userService.saveUserWithAdminRole(user);
    userService.saveWithUserRole(user);
	        return "redirect:/login";
	    }
	 @RequestMapping("/admin")
	    public String adminPage(Principal principal, Model model,HttpSession session) {
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
    public String home(Principal principal, Model model,HttpSession session) {
        // 1
    	if (principal==null)
    		return "homePage.jsp";
        String username = principal.getName();
        model.addAttribute("currentUser", userService.findByUsername(username).getId());
        System.out.println(username);
        session.setAttribute("keko", userService.findByUsername(username).getId());
        session.setAttribute("user123", userService.findByUsername(username));
        
        System.out.println(session.getAttribute("user123"));
       
        return "homePage.jsp";
    }
//    ******** Trip form ***********

    @RequestMapping("/trips")
    public String test(@ModelAttribute("trip")Trip trip,Model model) {
        String[] city= {"Hebron","Ramallah","Bethlehem","Nablus","Salfit","Jerusalem","Gaza","Tubas","Tulkarem","Jenin","Albireh","Qalqilyah", "Jericho"};
        model.addAttribute("city",city);

      return "test.jsp";
    }
  @RequestMapping(value = "/createTrip", method = RequestMethod.POST)
  public String createTrip(@Valid @ModelAttribute("trip") Trip trip, BindingResult result, Model model) {
      Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

      if (principal instanceof UserDetails) {
          String username = ((UserDetails) principal).getUsername();
          model.addAttribute("username", username);

      }
      if (result.hasErrors()) {
          System.out.println(result.getAllErrors());
          System.out.println("loas;daskdask");
          return "test.jsp";

      }

      tripSer.creatTrip(trip);
      return "redirect:/showtrips";
  }
//******Join*******
@RequestMapping("/joinTrip/{id}")
public String joinTrip( Principal principal,@PathVariable("id") Long id,HttpSession session) {  	
	  String u =principal.getName();
	  User user = userService.findByUsername(u);
	  Long usrid = user.getId();
	  Long tripId=id;
	  Trip joined=tripSer.findTripById(tripId);
	  tripSer.joinTrip(user, joined);
	  
	  return "redirect:/showtrips";
}
//***** unjoinTrip********
@RequestMapping("/unjoinTrip/{id}")
public String unjoinTrip( Principal principal,@PathVariable("id") Long id,HttpSession session) { 

	  String u =principal.getName();
	  User user = userService.findByUsername(u);
	  Long usrid = user.getId();
	  Long tripId=id;
	  Trip joined=tripSer.findTripById(tripId);
	  tripSer.unJoinTrip(user, joined);
	  
	  return "redirect:/showtrips";
}
//******the end of trip***********
//*******Create Events***********************
@RequestMapping("/events")  
public String eventForm(@ModelAttribute("event")Event event,Model model) {
	String[] city= {"Hebron","Ramallah","Bethlehem","Nablus","Salfit","Jerusalem","Gaza","Tubas","Tulkarem","Jenin","Albireh","Qalqilyah", "Jericho"};
    model.addAttribute("city",city);
return "createEvent.jsp";
}
@RequestMapping(value = "/createEvent", method = RequestMethod.POST)
public String createEvent(@Valid @ModelAttribute("event") Event event, BindingResult result, Model model) {
  Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

  if (principal instanceof UserDetails) {
      String username = ((UserDetails) principal).getUsername();
      model.addAttribute("username", username);

  }
  if (result.hasErrors()) {
      return "create.jsp";

  }
eventSer.creatEvent(event);
return "redirect:/showevents";
}
//****join Event****
@RequestMapping("/joinevent/{id}")
public String joinEvent( Principal principal,@PathVariable("id") Long id,HttpSession session) {  	
  String u =principal.getName();
  User user = userService.findByUsername(u);
 
  Long eventId=id;
  Event joined=eventSer.findEventById(eventId);
  eventSer.joinEvent(user, joined);
  
  return "redirect:/showevents";
}
//****unjoinevent****
@RequestMapping("/unjoinevent/{id}")
public String unJoinEvent( Principal principal,@PathVariable("id") Long id,HttpSession session) {  	
  String u =principal.getName();
  User user = userService.findByUsername(u);
  Long usrid = user.getId();
  Long eventId=id;
  Event joined=eventSer.findEventById(eventId);
  eventSer.unJoinEvent(user, joined);
  
  return "redirect:/showevents";
}

//********************the end of Event***********


  @RequestMapping("/logout")  
  public String x1(HttpSession session) {
	  if(session.getAttribute("currentUser") != null) {
		  session.invalidate();
	  }
	  return "redirect:/registration";
  }
  //******************* Show Events******************
	@GetMapping("/event/{id}")
	public String Show1(@PathVariable("id") Long id, Model model, HttpSession session) {
		long user =(long) session.getAttribute("keko") ;
		Event event = eventSer.findEventById(id);
		if(session.getAttribute("keko") == null)
			return "redirect:/";
		if(event == null)
			return "redirect:/trips";
		model.addAttribute("event", event);
		model.addAttribute("userId", user);
		return "/ShowEvent.jsp";
	}
	
//	@RequestMapping("/trip/{id}")
//	public String viewTrip(@PathVariable("id") Long id, @Valid @ModelAttribute("tripobj") Event trip1, BindingResult result, Model model, HttpSession session) {
//		session.setAttribute("currentUser", 1);
//		if(session.getAttribute("keko") == null) {
//			System.out.println(session.getAttribute("currentUser"));
//			return "redirect:/";
//		}
//		System.out.println(session.getAttribute("keko"));
//		long user =(long) session.getAttribute("keko") ;
//		
//		Trip trip = tripSer.FindTripById(id).orElse(null);
//		
//		model.addAttribute("event", trip);
//		model.addAttribute("user", user);
//		model.addAttribute("attendees", trip.getUsers());
//		System.out.println(model.getAttribute("event"));
//		
//		return "ShowTrip.jsp";
//	}
	@GetMapping("/trip/{id}")
	public String Show(@PathVariable("id") Long id, Model model, HttpSession session) {
		long user =(long) session.getAttribute("keko") ;
		Trip trip = tripSer.findTripById(id);
		if(session.getAttribute("keko") == null)
			return "redirect:/";
		if(trip == null)
			return "redirect:/trips";
		model.addAttribute("trip", trip);
		model.addAttribute("userId", user);
		return "/ShowTrip.jsp";
	}
	
//	  @PostMapping("/addall")
//	    public RedirectView saveUser(Trip trip1, @RequestParam("image") MultipartFile multipartFile, @ModelAttribute("trip") Trip trip) throws IOException {
//	         
//	        String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
//	        trip1.setImg(fileName);
//	         
//	        Trip savedUser = repo.save(trip1);
//	 
//	        String uploadDir = "user-photos/" + savedUser.getId();
//	 
//	        FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
//	        tripSer.creatTrip(trip);
//	         
//	        return new RedirectView("/trips", true);
//	    }
	  @PostMapping("/addall")
	    public RedirectView saveUser(Trip trip,
	            @RequestParam("image") MultipartFile multipartFile,@ModelAttribute("trip")Trip trip1) throws IOException {
	         
	        String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
	        trip.setImg(fileName);
	         
	        Trip savedUser = repo.save(trip);
	 
	        String uploadDir = "user-photos/" + savedUser.getId();
	 
	        FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
	         
	        return new RedirectView("/trips", true);
	    }
//	  @PostMapping("/addall1")
//	    public RedirectView saveUser1(Event event1, @RequestParam("image") MultipartFile multipartFile, @ModelAttribute("event") Event event) throws IOException {
//	         
//	        String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
//	       event1.setImg(fileName);
//	         
//	        Event savedUser = repo.save(event1);
//	 
//	        String uploadDir = "user-photos/" + savedUser.getId();
//	 
//	        FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
//	        eventSer.creatEvent(event);
//	         
//	        return new RedirectView("/events", true);
//	    }
	  

	//********************haitham's work***********


		@RequestMapping("/showevents")
		public String showevents(Model model,HttpSession session) {
		List<Event> eventList = eventSer.findAllEvents();
		Iterable<User> users = userService.findallusers();
		Long id=(Long) session.getAttribute("keko");
		User user=userService.findUserById(id);
				model.addAttribute(user);
				model.addAttribute("events", eventList);
				model.addAttribute( "users",users);
		
		return "eventsh.jsp";
	}
	

		@RequestMapping("/showtrips")
		public String showtrips(Model model,HttpSession session) {
		List<Trip> eventList = tripSer.findAllTrips();
		Iterable<User> users = userService.findallusers();
		Long id=(Long) session.getAttribute("keko");
		User user=userService.findUserById(id);
				model.addAttribute(user);
				model.addAttribute("events", eventList);
				model.addAttribute( "users",users);
		
		return "tripshs.jsp";
	}
	  
	  
  
}
