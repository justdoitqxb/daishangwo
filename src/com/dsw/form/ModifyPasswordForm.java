package com.dsw.form;

public class ModifyPasswordForm {
	private String oldPassword;
	private String newPassword;
	private String conformNewPassword;
	
	public String getOldPassword() {
		return oldPassword;
	}
	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}
	public String getNewPassword() {
		return newPassword;
	}
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	public String getConformNewPassword() {
		return conformNewPassword;
	}
	public void setConformNewPassword(String conformNewPassword) {
		this.conformNewPassword = conformNewPassword;
	}
}