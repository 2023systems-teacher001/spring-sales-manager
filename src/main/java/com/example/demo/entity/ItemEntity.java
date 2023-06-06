package com.example.demo.entity;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "items")
public class ItemEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "category_id")
	private int categoryId;
	private String isbn;
	private int quantity;
	@Column(name = "sales_on")
	private LocalDate salesOn;
	
	public ItemEntity() {}

	public ItemEntity(int categoryId, String isbn, int quantity, LocalDate salesOn) {
		this.categoryId = categoryId;
		this.isbn = isbn;
		this.quantity = quantity;
		this.salesOn = salesOn;
	}

	public ItemEntity(int id, int categoryId, String isbn, int quantity, LocalDate salesOn) {
		this(categoryId, isbn, quantity, salesOn);
		this.id = id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
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

	public LocalDate getSalesOn() {
		return salesOn;
	}

	public void setSalesOn(LocalDate salesOn) {
		this.salesOn = salesOn;
	}
	
}
