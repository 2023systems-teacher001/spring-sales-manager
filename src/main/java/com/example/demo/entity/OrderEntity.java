package com.example.demo.entity;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "orders")
public class OrderEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "member_id")
	private int memberid;
	private String isbn;
	private int quantity;
	@Column(name = "order_on")
	private LocalDate orderOn;
	private int statusId;
	
	public OrderEntity() {}

	public OrderEntity(int memberid, String isbn, int quantity, LocalDate orderOn, int statusId) {
		this.memberid = memberid;
		this.isbn = isbn;
		this.quantity = quantity;
		this.orderOn = orderOn;
		this.statusId = statusId;
	}

	public OrderEntity(int id, int memberid, String isbn, int quantity, LocalDate orderOn, int statusId) {
		this(memberid, isbn, quantity, orderOn, statusId)
		this.id = id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMemberid() {
		return memberid;
	}

	public void setMemberid(int memberid) {
		this.memberid = memberid;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public LocalDate getOrderOn() {
		return orderOn;
	}

	public void setOrderOn(LocalDate orderOn) {
		this.orderOn = orderOn;
	}

	public int getStatusId() {
		return statusId;
	}

	public void setStatusId(int statusId) {
		this.statusId = statusId;
	}
	
}
