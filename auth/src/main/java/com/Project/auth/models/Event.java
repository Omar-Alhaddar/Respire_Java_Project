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
	public Event() {
		
	}
	
	
	
    public Long getId() {
		return id;
	}



	public void setId(Long id) {
		this.id = id;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public Double getPrice() {
		return price;
	}



	public void setPrice(Double price) {
		this.price = price;
	}



	public Integer getCapacity() {
		return capacity;
	}



	public void setCapacity(Integer capacity) {
		this.capacity = capacity;
	}



	public Date getDate() {
		return date;
	}



	public void setDate(Date date) {
		this.date = date;
	}



	public String getImg() {
		return img;
	}



	public void setImg(String img) {
		this.img = img;
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



	public List<User> getUsers() {
		return users;
	}



	public void setUsers(List<User> users) {
		this.users = users;
	}



	public User getHost() {
		return host;
	}



	public void setHost(User host) {
		this.host = host;
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