package com.dsw.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.dsw.bean.User;
import com.dsw.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

@Scope("request")
@Controller("registerAction")
public class RegisterAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
//	@Autowired
//	private UserDao userDao;
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;

	@Override
	public String execute(){
		User u = userService.getUserByUserName("qxb@qq.com");
		System.out.println(u.getId());
		System.out.println(u.getEmail());
		System.out.println(u.getPassword());
		System.out.println(u.getTelephone());
		System.out.println(u.getAddress());
		System.out.println(u.getDate_created());
		return SUCCESS;
	}
}
