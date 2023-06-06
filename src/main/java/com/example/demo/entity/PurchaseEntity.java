package com.example.demo.entity;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "purchases")
public class PurchaseEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "grade_id")
	private int gradeId;
	private String isbn;
	@Column(name = "category_id")
	private int categoryId;
	private int quantity;
	@Column(name = "purchase_on")
	private LocalDate purchaseOn;
	
	public PurchaseEntity() {}

	public PurchaseEntity(int gradeId, String isbn, int categoryId, int quantity, LocalDate purchaseOn) {
		this.gradeId = gradeId;
		this.isbn = isbn;
		this.categoryId = categoryId;
		this.quantity = quantity;
		this.purchaseOn = purchaseOn;
	}

	public PurchaseEntity(int id, int gradeId, String isbn, int categoryId, int quantity, LocalDate purchaseOn) {
		this(gradeId, isbn, categoryId, quantity, purchaseOn);
		this.id = id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getGradeId() {
		return gradeId;
	}

	public void setGradeId(int gradeId) {
		this.gradeId = gradeId;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public LocalDate getPurchaseOn() {
		return purchaseOn;
	}

	public void setPurchaseOn(LocalDate purchaseOn) {
		this.purchaseOn = purchaseOn;
	}
	
}
