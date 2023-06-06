package com.example.demo.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "stocks")
public class StockEntity {
	@Column(name = "grade_id")
	private int gradeId;
	private String isbn;
	private int quantity;
	@Column(name = "status_id")
	private int statusId;
	
	public StockEntity() {}

	public StockEntity(int gradeId, String isbn, int quantity, int statusId) {
		this.gradeId = gradeId;
		this.isbn = isbn;
		this.quantity = quantity;
		this.statusId = statusId;
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

	public int getStatusId() {
		return statusId;
	}

	public void setStatusId(int statusId) {
		this.statusId = statusId;
	}
	
}
