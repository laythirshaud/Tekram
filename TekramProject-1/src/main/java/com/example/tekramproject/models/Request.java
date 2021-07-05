package com.example.tekramproject.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

@Entity
@Table(name = "requests")
public class Request {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String Status;
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id")
	private User user;
	
	@OneToMany(mappedBy = "request", fetch = FetchType.LAZY)
	private List<Water> water_requests;
	@OneToMany(mappedBy = "request", fetch = FetchType.LAZY)
	private List<Quittance> quittance_requests;
	@OneToMany(mappedBy = "request", fetch = FetchType.LAZY)
	private List<Tax> tax_requests;
	@OneToMany(mappedBy = "request", fetch = FetchType.LAZY)
	private List<Suggestion> sugesstion_requests;

	public Request() {

	}
	// create constructor to have(user_id,  sttaus)
	

	public Long getId() {
		return id;
	}

	public Request(User user) {
		Status = "pending";
		this.user = user;
	}
	
	
	
	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<Water> getWater_requests() {
		return water_requests;
	}

	public void setWater_requests(List<Water> water_requests) {
		this.water_requests = water_requests;
	}

	public List<Quittance> getQuittance_requests() {
		return quittance_requests;
	}

	public void setQuittance_requests(List<Quittance> quittance_requests) {
		this.quittance_requests = quittance_requests;
	}

	public List<Tax> getTax_requests() {
		return tax_requests;
	}

	public void setTax_requests(List<Tax> tax_requests) {
		this.tax_requests = tax_requests;
	}

	public List<Suggestion> getSugesstion_requests() {
		return sugesstion_requests;
	}

	public void setSugesstion_requests(List<Suggestion> sugesstion_requests) {
		this.sugesstion_requests = sugesstion_requests;
	}

	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}
	

}
