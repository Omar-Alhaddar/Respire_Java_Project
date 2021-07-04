package com.Project.auth.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.JoinColumn;
import javax.persistence.Transient;
import javax.validation.constraints.Size;
import javax.validation.constraints.Email;

@Entity
@Table(name="users")
public class User {
	  @Id
	    @GeneratedValue
	    private Long id;
	  @Size(min=3, message="Username must be greater than 3 characters")
	    private String username;
	  @Email(message="Email must be valid")
	  private String email;
	  @Size(min=5, message="Password must be greater than 5 characters")
	    private String password;
	    @Transient
	    private String passwordConfirmation;
	    @Column(updatable=false)
	    private Date createdAt;
	    private Date updatedAt;
//	    n:m relationship with Events
	    @ManyToMany(fetch = FetchType.LAZY)
	    @JoinTable(
	        name = "users_events", 
	        joinColumns = @JoinColumn(name = "user_id"), 
	        inverseJoinColumns = @JoinColumn(name = "event_id")
	    )
	    private List<Event> events;
	    
//	    n:m relationship with Trip
	    @ManyToMany(fetch = FetchType.LAZY)
	    @JoinTable(
	        name = "users_trips", 
	        joinColumns = @JoinColumn(name = "user_id"), 
	        inverseJoinColumns = @JoinColumn(name = "trip_id")
	    )
	    private List<Trip> trips;
	    
//	    1:m relationship with event
	    @OneToMany(mappedBy="host",fetch=FetchType.LAZY)
	    private List<Event> hosted_events;
	    
	    
	    //1:m relationship with trip
	    @OneToMany(mappedBy="host",fetch=FetchType.LAZY)
	    private List<Trip> hosted_trips;

	    
//	    **************
	    @ManyToMany(fetch = FetchType.EAGER)
	    @JoinTable(
	        name = "users_roles", 
	        joinColumns = @JoinColumn(name = "user_id"), 
	        inverseJoinColumns = @JoinColumn(name = "role_id"))
	    private List<Role> roles;
	    
	    public User() {
	    }
	    
	    
	    public String getEmail() {
			return email;
		}


		public void setEmail(String email) {
			this.email = email;
		}


		public List<Event> getEvents() {
			return events;
		}


		public void setEvents(List<Event> events) {
			this.events = events;
		}


		public List<Trip> getTrips() {
			return trips;
		}


		public void setTrips(List<Trip> trips) {
			this.trips = trips;
		}


		public List<Event> getHosted_events() {
			return hosted_events;
		}


		public void setHosted_events(List<Event> hosted_events) {
			this.hosted_events = hosted_events;
		}


		public List<Trip> getHosted_trips() {
			return hosted_trips;
		}


		public void setHosted_trips(List<Trip> hosted_trips) {
			this.hosted_trips = hosted_trips;
		}


		public Long getId() {
	        return id;
	    }
	    public void setId(Long id) {
	        this.id = id;
	    }
	    public String getUsername() {
	        return username;
	    }
	    public void setUsername(String username) {
	        this.username = username;
	    }
	    public String getPassword() {
	        return password;
	    }
	    public void setPassword(String password) {
	        this.password = password;
	    }
	    public String getPasswordConfirmation() {
	        return passwordConfirmation;
	    }
	    public void setPasswordConfirmation(String passwordConfirmation) {
	        this.passwordConfirmation = passwordConfirmation;
	    }
	    public Date getCreatedAt() {
	        return createdAt;
	    }
	    public void setCreatedAt(Date createdAt) {
	        this.createdAt = createdAt;
	    }
	    public Date getUpdatedAt() {
	        return updatedAt;
	    }
	    public void setUpdatedAt(Date updatedAt) {
	        this.updatedAt = updatedAt;
	    }
	    public List<Role> getRoles() {
	        return roles;
	    }
	    public void setRoles(List<Role> roles) {
	        this.roles = roles;
	    }
	    
	    @PrePersist
	    protected void onCreate(){
	        this.createdAt = new Date();
	    }
	    @PreUpdate
	    protected void onUpdate(){
	        this.updatedAt = new Date();
	    }
}
