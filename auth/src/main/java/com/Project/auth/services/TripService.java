package com.Project.auth.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Project.auth.models.Event;
import com.Project.auth.models.Trip;
import com.Project.auth.models.User;
import com.Project.auth.repositories.TripRepository;
import com.Project.auth.repositories.UserTripRepository;

@Service
public class TripService {
@Autowired
private TripRepository triprepo;
@Autowired
private UserTripRepository userTripRepo;

public List<Trip> findAllTrips(){
	return triprepo.findAll();
	}

//public Optional<Trip> FindTripById(Long id) {
//	
//	return Optional.of(triprepo.findById(id).orElse(null));
//}
public Trip findTripById(Long id) {
    Trip trip=triprepo.findById(id).orElse(null);
    return trip;
}

public Trip creatTrip(Trip t) {
	return triprepo.save(t);
}

public void deleteTrip(Long id) {
	triprepo.deleteById(id); 
}
//****Join****
public void joinTrip(User user,Trip trip) {
	List<User>users =trip.getUsers();
	users.add(user);
	triprepo.save(trip);
}
public void unJoinTrip(User user,Trip trip) {
	List<User>users =trip.getUsers();
	users.remove(user);
	triprepo.save(trip);
}

}
