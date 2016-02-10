package com.dsw.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.dsw.bean.Course;
import com.dsw.dao.CourseDao;
import com.dsw.service.CourseService;

public class CourseServiceImpl implements CourseService{
	@Autowired
	private CourseDao courseDao;
	
	public CourseDao getCourseDao() {
		return courseDao;
	}

	public void setCourseDao(CourseDao courseDao) {
		this.courseDao = courseDao;
	}

	@Override
	public List<Course> getCourseList() {
		// TODO Auto-generated method stub
		return courseDao.selectAll();
	}

	@Override
	public void add(Course course) {
		// TODO Auto-generated method stub
		courseDao.insert(course);
	}

	@Override
	public boolean modify(Course course) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Course course) {
		// TODO Auto-generated method stub
		return false;
	}

}
