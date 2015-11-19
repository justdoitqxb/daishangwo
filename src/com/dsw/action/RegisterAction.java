package com.dsw.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.dsw.dao.UserDao;
import com.opensymphony.xwork2.ActionSupport;

@Scope("request")
@Controller("registerAction")
public class RegisterAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	@Autowired
	private UserDao userDao;

	@Override
	public String execute(){
		System.out.println(userDao.findbyUserName("qxb").getPassword());
		return SUCCESS;
	}
}
