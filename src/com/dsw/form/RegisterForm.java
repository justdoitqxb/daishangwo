package com.dsw.form;

import com.dsw.bean.User;

public class RegisterForm {
    private String email;
	private String password;
	private String conformPassword;
    private String telephone;
    private String address;
    
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
	public String getConformPassword() {
		return conformPassword;
	}
	public void setConformPassword(String conformPassword) {
		this.conformPassword = conformPassword;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public User mappeToUser(){
		User user = new User();
		user.setEmail(email);
		user.setPassword(password);
		user.setTelephone(telephone);
		user.setAddress(address);
		return user;
	}
}
