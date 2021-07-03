package com.Project.auth.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.Project.auth.models.UserEvent;

@Repository
public interface UserEventRepository extends CrudRepository<UserEvent, Long> {

}
