package com.example.demo.entity;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "sales")
public class SalesEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "grade_id")
	private int gradeId;
	private String isbn;
	private int quantity;
	@Column(name = "sales_on")
	private LocalDate salesOn;
	
	public SalesEntity() {}

	public SalesEntity(int gradeId, String isbn, int quantity, LocalDate salesOn) {
		this.gradeId = gradeId;
		this.isbn = isbn;
		this.quantity = quantity;
		this.salesOn = salesOn;
	}

	public SalesEntity(int id, int gradeId, String isbn, int quantity, LocalDate salesOn) {
		this(gradeId, isbn, quantity, salesOn);
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

