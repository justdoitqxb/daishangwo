package com.dsw.form;

import com.dsw.bean.Catlog;

public class AddCatlogForm {
	private String firstLevel;
	private String secondLevel;
	private String thirdLevel;
	
	public String getFirstLevel() {
		return firstLevel;
	}
	public void setFirstLevel(String firstLevel) {
		this.firstLevel = firstLevel;
	}
	public String getSecondLevel() {
		return secondLevel;
	}
	public void setSecondLevel(String secondLevel) {
		this.secondLevel = secondLevel;
	}
	public String getThirdLevel() {
		return thirdLevel;
	}
	public void setThirdLevel(String thirdLevel) {
		this.thirdLevel = thirdLevel;
	}
	
	public Catlog mappeToCatlog(){
		Catlog catlog = new Catlog();
		if(this.getSecondLevel() == null){
			catlog.setCategory(this.getFirstLevel());
			catlog.setParent_id(0);
		}else if(this.getThirdLevel() == null){
			catlog.setCategory(this.getSecondLevel());
			catlog.setParent_id(Integer.parseInt(this.getFirstLevel()));
		}else{
			catlog.setParent_id(Integer.parseInt(this.getSecondLevel()));
			catlog.setCategory(this.getThirdLevel());
		}
		return catlog;
	}
}