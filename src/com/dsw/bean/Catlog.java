package com.dsw.bean;

import java.io.Serializable;

public class Catlog implements Serializable {
	private static final long serialVersionUID = 9053667564345048551L;
	private int id;
	private String category;
	private int parent_id;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getParent_id() {
		return parent_id;
	}
	public void setParent_id(int parent_id) {
		this.parent_id = parent_id;
	}
}