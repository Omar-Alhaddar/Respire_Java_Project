package com.Project.auth.services;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.Project.auth.controllers.EmailController;

@Service
public class EmailService {
	
	@Autowired
	JavaMailSender javaMailSender;

	public String approvedTripEmail(HttpSession session) {
		SimpleMailMessage message = new SimpleMailMessage();
		
		message.setFrom("2021respire@gmail.com");
		message.setTo((String)session.getAttribute("email"));
		message.setSubject("Trip/Hike Status");
		message.setText("Your Trip/Hike Approved");
		
		javaMailSender.send(message);
		
		return "redirect:/admin";
	}
	
	EmailController x1= new EmailController();
	
	public String declinedTripEmail(HttpSession session) {
		SimpleMailMessage message = new SimpleMailMessage();
		
		message.setFrom("2021respire@gmail.com");
		message.setTo((String)session.getAttribute("email"));
		message.setSubject("Trip/Hike Status");
		message.setText("Your Trip/Hike Declined");
		
		javaMailSender.send(message);
		
		return "redirect:/admin";
	}
	
	public String approvedEventEmail(HttpSession session) {
		SimpleMailMessage message = new SimpleMailMessage();
		
		message.setFrom("2021respire@gmail.com");
		message.setTo((String)session.getAttribute("email"));
		message.setSubject("Event/Concert Status");
		message.setText("Your Event/Concert Approved");
		
		javaMailSender.send(message);
		
		return "redirect:/admin";
	}
	
	public String declinedEventEmail(HttpSession session) {
		SimpleMailMessage message = new SimpleMailMessage();
		
		message.setFrom("2021respire@gmail.com");
		message.setTo((String)session.getAttribute("email"));
		message.setSubject("Event/Concert Status");
		message.setText("Your Event/Concert Declined");
		
		javaMailSender.send(message);
		
		return "redirect:/admin";
	}
}
