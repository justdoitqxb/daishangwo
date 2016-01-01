package com.dsw.dao;

import java.util.List;

import com.dsw.bean.Course;

public interface CourseDao {
	public int insert(Course course);
	public int updatePhoto(Course course);
	public int delete(Course course);
	public List<Course> selectAll();
	public Course findbyCourseName(String courseName);	
	public int countAll();
}
