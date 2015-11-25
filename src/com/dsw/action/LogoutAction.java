package com.dsw.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Scope("request")
@Controller("logoutAction")
public class LogoutAction extends ActionSupport{
	private static final long serialVersionUID = 199L;
	
	@Override
	public String execute(){
		ActionContext.getContext().getSession().remove("username");
		return SUCCESS;
	}
}
