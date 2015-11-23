package com.dsw.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.dsw.bean.User;
import com.dsw.form.UserRegisterForm;
import com.dsw.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Scope("request")
@Controller("registerAction")
public class RegisterAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	private UserRegisterForm userRegisterForm;
	public UserRegisterForm getUserRegisterForm() {
		return userRegisterForm;
	}
	public void setUserRegisterForm(UserRegisterForm userRegisterForm) {
		this.userRegisterForm = userRegisterForm;
	}
	@Override
	public String execute(){
		ActionContext.getContext().getSession().put("username",userRegisterForm.getEmail());
		System.out.println(userRegisterForm.getEmail());
		User u = userService.getUserByEmail("qxb@qq.com");
		System.out.println(u.getId());
		System.out.println(u.getEmail());
		System.out.println(u.getPassword());
		System.out.println(u.getTelephone());
		System.out.println(u.getAddress());
		System.out.println(u.getDate_created());
		return SUCCESS;
	}
}