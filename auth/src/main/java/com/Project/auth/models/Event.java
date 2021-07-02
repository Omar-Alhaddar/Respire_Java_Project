package com.Project.auth.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.Future;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="events")
public class Event {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	@NotNull
	@Size(min = 5, max = 100)
    private String name;
	@NotNull
	@Size(min = 5, max = 200)
    private String description;
	@NotNull
	@Min(30)
    private Double price;
	@NotNull
	@Min(10)
    private Integer capacity;
    @Future
	@DateTimeFormat(pattern="yyyy-MM-dd")  
    private Date date;
    @NotNull
    private String img;
    @Column(updatable=false)
    private Date createdAt;
    private Date updatedAt;
//    n:m relationship with user
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "users_events", 
        joinColumns = @JoinColumn(name = "event_id"), 
        inverseJoinColumns = @JoinColumn(name = "user_id")
    )     
    private List<User> users;
//    many to one

	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="host_id")
     private User host;
    
//    ************************
    @PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
}
