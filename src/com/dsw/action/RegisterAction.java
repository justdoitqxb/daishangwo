package com.dsw.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.dsw.form.RegisterForm;
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
	private RegisterForm registerForm;
	public RegisterForm getUserRegisterForm() {
		return registerForm;
	}
	public void setRegisterForm(RegisterForm registerForm) {
		this.registerForm = registerForm;
	}
	@Override
	public String execute(){
		if(RegexValidation.checkEmail(registerForm.getEmail()) && RegexValidation.checkPassword(registerForm.getPassword(), registerForm.getConformPassword())){
			userService.addUser(registerForm.mappeToUser());
			ActionContext.getContext().getSession().put("username",registerForm.getEmail());
		}else{
			ActionContext.getContext().getSession().put("errorMessage","�����ʽ��������벻һ�£�");
			return ERROR;
		}
		return SUCCESS;
	}
}