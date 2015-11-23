package com.dsw.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.dsw.form.UserRegisterForm;
import com.dsw.service.UserService;
import com.dsw.util.RegexValidation;
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
		if(RegexValidation.checkEmail(userRegisterForm.getEmail()) && RegexValidation.checkPassword(userRegisterForm.getPassword(), userRegisterForm.getConformPassword())){
			userService.addUser(userRegisterForm.mappeToUser());
			ActionContext.getContext().getSession().put("username",userRegisterForm.getEmail());
		}else{
			ActionContext.getContext().getSession().put("errorMessage","邮箱格式错误或密码不一致！");
			return ERROR;
		}
		return SUCCESS;
	}
}