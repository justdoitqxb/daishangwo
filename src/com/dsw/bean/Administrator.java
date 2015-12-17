package com.dsw.bean;

import java.io.Serializable;
import java.sql.Timestamp;

public class Administrator implements Serializable {
	private static final long serialVersionUID = 1173594325495340692L;
	private int id;
	private String username;
	private String password;
	private Timestamp date_created;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
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
	public Timestamp getDate_created() {
		return date_created;
	}
	public void setDate_created(Timestamp date_created) {
		this.date_created = date_created;
	}
}