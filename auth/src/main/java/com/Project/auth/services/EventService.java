package com.Project.auth.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Project.auth.repositories.EventRepository;
import com.Project.auth.repositories.UserEventRepository;

import com.Project.auth.models.Event;
import com.Project.auth.models.User;

@Service
public class EventService {
	private final EventRepository eveRepo;
	public EventService(EventRepository eveRepo) {
		this.eveRepo = eveRepo;
		}
@Autowired
private UserEventRepository usereventRepo;

public List<Event> findAllEvents(){
	return eveRepo.findAll();
	}
public Event FindEventById(Long id) {
	Event event=eveRepo.findById(id).orElse(null);
	return event;
}
public Event creatEvent(Event e) {
	return eveRepo.save(e);
}

public void deleteEvent(Long id) {
	eveRepo.deleteById(id); 
}
//***Join****
public void joinEvent(User user,Event event) {
	List<User> users=event.getUsers();
	users.add(user);
	eveRepo.save(event);
}
public void unJoinEvent(User user,Event event) {
	List<User> users=event.getUsers();
	users.remove(user);
	eveRepo.save(event);
}





}
