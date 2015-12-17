package com.dsw.form;

import com.dsw.bean.Administrator;
import com.dsw.bean.User;

public class LoginForm {
    private String email;
	private String password;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public User mappeToUser(){
		User user = new User();
		user.setEmail(email);
		user.setPassword(password);
		return user;
	}
	public Administrator mappeToAdministrator(){
		Administrator admin = new Administrator();
		admin.setUsername(email);
		admin.setPassword(password);
		return admin;
	}
}
