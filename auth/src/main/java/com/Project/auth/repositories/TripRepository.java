package com.Project.auth.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.Project.auth.models.Event;
import com.Project.auth.models.Trip;

@Repository
public interface TripRepository extends CrudRepository<Trip, Long>{
List<Trip>findAll();

<S extends Event> S save(S entity);
}
