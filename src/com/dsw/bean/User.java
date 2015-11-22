package com.dsw.bean;
import java.sql.Timestamp;
import java.io.Serializable;

public class User implements Serializable{
	private static final long serialVersionUID = -4415990281535582810L;
	private int id;
	private String email;
    private String password;
    private String telephone;
    private String address;
	private Timestamp date_created;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

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
	
	public Timestamp getDate_created() {
		return date_created;
	}

	public void setDateCreated(Timestamp dateCreated) {
		this.date_created = dateCreated;
	}
    
	@Override
	public String toString(){
		return "User [userName=" + email +", password=]";
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		return true;
	}
}
