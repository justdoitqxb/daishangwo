package com.dsw.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.dsw.form.LoginForm;
import com.dsw.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Scope("request")
@Controller("loginAction")
public class LoginAction extends ActionSupport{
	private static final long serialVersionUID = 3226322524537948363L;
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	private LoginForm loginForm;
	
	public LoginForm getLoginForm() {
		return loginForm;
	}

	public void setLoginForm(LoginForm loginForm) {
		this.loginForm = loginForm;
	}

	@Override
	public String execute(){
		if(userService.loginVerify(loginForm.getEmail(), loginForm.getPassword())!=null){
			ActionContext.getContext().getSession().put("username",loginForm.getEmail());
		}else{
			ActionContext.getContext().getSession().put("errorMessage","用户不存在或密码错误！");
			return ERROR;
		}
		return SUCCESS;
	}
}
