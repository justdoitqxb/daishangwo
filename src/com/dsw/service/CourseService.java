package com.dsw.service;

import java.util.List;

import com.dsw.bean.Course;

public interface CourseService {
	/**
     * �γ��б�
     */
	public List<Course> getCourseList();
	/**
     * ��ӿγ�
     * @param Course
     */
	public void add(Course course);
	/**
     * �޸Ŀγ���Ϣ
     * @param Course
     */
	public boolean modify(Course course);
	/**
     * ɾ���γ�
     * @param Catlog
     */
	public boolean delete(Course course);
}