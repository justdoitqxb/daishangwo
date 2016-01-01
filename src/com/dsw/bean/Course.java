package com.dsw.bean;

import java.io.Serializable;
import java.sql.Timestamp;

public class Course implements Serializable{
	private static final long serialVersionUID = -3329804586443730172L;
	private int id;
	private String course_name;
	private int category_id;
	private int author_id;
	private int limit_selection;
	private Timestamp class_time;
	private String class_place;
	private int pop_charge;
	private String pic_path;
	private String class_desc;
	private int click_time;
	private Timestamp post_time;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	public int getAuthor_id() {
		return author_id;
	}
	public void setAuthor_id(int author_id) {
		this.author_id = author_id;
	}
	public int getLimit_selection() {
		return limit_selection;
	}
	public void setLimit_selection(int limit_selection) {
		this.limit_selection = limit_selection;
	}
	public Timestamp getClass_time() {
		return class_time;
	}
	public void setClass_time(Timestamp class_time) {
		this.class_time = class_time;
	}
	public String getClass_place() {
		return class_place;
	}
	public void setClass_place(String class_place) {
		this.class_place = class_place;
	}
	public int getPop_charge() {
		return pop_charge;
	}
	public void setPop_charge(int pop_charge) {
		this.pop_charge = pop_charge;
	}
	public String getPic_path() {
		return pic_path;
	}
	public void setPic_path(String pic_path) {
		this.pic_path = pic_path;
	}
	public String getClass_desc() {
		return class_desc;
	}
	public void setClass_desc(String class_desc) {
		this.class_desc = class_desc;
	}
	public int getClick_time() {
		return click_time;
	}
	public void setClick_time(int click_time) {
		this.click_time = click_time;
	}
	public Timestamp getPost_time() {
		return post_time;
	}
	public void setPost_time(Timestamp post_time) {
		this.post_time = post_time;
	}
}