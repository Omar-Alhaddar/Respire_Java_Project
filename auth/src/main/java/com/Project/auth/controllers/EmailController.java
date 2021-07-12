package com.Project.auth.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.Project.auth.models.Event;
import com.Project.auth.models.Trip;
import com.Project.auth.services.EmailService;
import com.Project.auth.services.EventService;
import com.Project.auth.services.TripService;

@Controller
public class EmailController {

	@Autowired
	EmailService emailService;
	@Autowired
	private EventService eventSer;
	@Autowired
	private TripService tripSer;
	
	
	public  String xo;


	public void sessionId(HttpSession session) {
		xo= (String) session.getAttribute("email");
	}
	
	
	@GetMapping("/approvedTripEmail/{id}")
	public String approvedTripEmail(@PathVariable("id")Long id, HttpSession session) {
		Trip trip = tripSer.findTripById(id);
		session.setAttribute("email",  trip.getHost().getEmail());
		xo= (String) session.getAttribute("email");
		return emailService.approvedTripEmail(session);
	}
	
	@GetMapping("/declinedTripEmail/{id}")
	public String declinedTripEmail(@PathVariable("id")Long id, HttpSession session) {
		Trip trip = tripSer.findTripById(id);
		session.setAttribute("email",  trip.getHost().getEmail());
		xo= (String) session.getAttribute("email");
		tripSer.deleteTrip(trip.getId());
		return emailService.declinedTripEmail(session);
	}
	
	
	@GetMapping("/approvedEventEmail/{id}")
	public String approvedEventEmail(@PathVariable("id")Long id, HttpSession session) {
		Event event = eventSer.findEventById(id);
	session.setAttribute("email",  event.getHost().getEmail());
	xo= (String) session.getAttribute("email");
	
		return emailService.approvedEventEmail(session);
	}
	
	
	

	
	@GetMapping("/declinedEventEmail/{id}")
	public String declinedEventEmail(@PathVariable("id")Long id, HttpSession session) {
		Event event = eventSer.findEventById(id);

		session.setAttribute("email",  event.getHost().getEmail());
		xo= (String) session.getAttribute("email");
		eventSer.deleteEvent(event.getId());
		return emailService.declinedEventEmail(session);
		
	}
	
}
