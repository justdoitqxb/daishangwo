package com.dsw.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.dsw.form.ModifyPasswordForm;
import com.dsw.service.UserService;
import com.dsw.util.RegexValidation;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Scope("request")
@Controller("modifyPasswordAction")
public class ModifyPasswordAction extends ActionSupport{
	private static final long serialVersionUID = 3099L;
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	private ModifyPasswordForm modifyPasswordForm;
	
	public ModifyPasswordForm getModifyPasswordForm() {
		return modifyPasswordForm;
	}

	public void setModifyPasswordForm(ModifyPasswordForm modifyPasswordForm) {
		this.modifyPasswordForm = modifyPasswordForm;
	}

	@Override
	public String execute(){
		if(RegexValidation.checkPassword(modifyPasswordForm.getNewPassword(), modifyPasswordForm.getConformNewPassword())){
			String email = (String)ActionContext.getContext().getSession().get("username");
			if(!userService.modifyPassword(email, modifyPasswordForm.getOldPassword(), modifyPasswordForm.getNewPassword())){
				ActionContext.getContext().getSession().put("errorMessage","‘≠√‹¬Î ‰»Î¥ÌŒÛ£°");
				return ERROR;
			}
		}else{
			ActionContext.getContext().getSession().put("errorMessage","√‹¬Î≤ª“ª÷¬£°");
			return ERROR;
		}
		return SUCCESS;
	}
}
