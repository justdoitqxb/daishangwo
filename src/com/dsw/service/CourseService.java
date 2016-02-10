package com.dsw.service;

import java.util.List;

import com.dsw.bean.Course;

public interface CourseService {
	/**
     * 课程列表
     */
	public List<Course> getCourseList();
	/**
     * 添加课程
     * @param Course
     */
	public void add(Course course);
	/**
     * 修改课程信息
     * @param Course
     */
	public boolean modify(Course course);
	/**
     * 删除课程
     * @param Catlog
     */
	public boolean delete(Course course);
}