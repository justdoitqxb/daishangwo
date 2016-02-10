package com.dsw.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.dsw.form.AddCourseForm;
import com.dsw.service.CourseService;
import com.opensymphony.xwork2.ActionSupport;

@Scope("request")
@Controller("addCourseAction")
public class AddCourseAction extends ActionSupport{
	private static final long serialVersionUID = 7283716439846995916L;
	@Autowired
	@Qualifier("courseServiceImpl")
	private CourseService courseService;
	private AddCourseForm addCourseForm;

	public AddCourseForm getAddCourseForm() {
		return addCourseForm;
	}

	public void setAddCourseForm(AddCourseForm addCourseForm) {
		this.addCourseForm = addCourseForm;
	}

	@Override
	public String execute(){
		courseService.add(addCourseForm.mappeToCatlog());
		return SUCCESS;
	}
}