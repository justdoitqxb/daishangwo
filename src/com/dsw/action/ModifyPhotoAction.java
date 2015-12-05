package com.dsw.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.dsw.form.ModifyPhotoForm;
import com.dsw.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Scope("request")
@Controller("modifyPasswordAction")
public class ModifyPhotoAction extends ActionSupport{
	private static final long serialVersionUID = 45899L;
	
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	private ModifyPhotoForm modifyPhotoForm;
	
	public ModifyPhotoForm getModifyPhotoForm() {
		return modifyPhotoForm;
	}

	public void setModifyPhotoForm(ModifyPhotoForm modifyPhotoForm) {
		this.modifyPhotoForm = modifyPhotoForm;
	}

	@Override
	public String execute(){
		if(userService.loginVerify(modifyPhotoForm.getUsername(), modifyPhotoForm.getPassword()) != null){
			//�����޸�ͷ���߼�
		}else{
			ActionContext.getContext().getSession().put("errorMessage","�����µ�½");
			return ERROR;
		}
		return SUCCESS;
	}
}