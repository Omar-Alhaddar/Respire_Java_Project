package com.Project.auth.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.Project.auth.models.UserTrip;

@Repository
public interface UserTripRepository extends CrudRepository<UserTrip, Long>{

}
