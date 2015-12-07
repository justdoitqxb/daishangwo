package com.dsw.action;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.dsw.form.ModifyPhotoForm;
import com.dsw.service.UserService;
import com.dsw.util.ImageUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Scope("request")
@Controller("modifyPhotoAction")
public class ModifyPhotoAction extends ActionSupport{
	private static final long serialVersionUID = 449875899L;
	
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
		String photoName = ImageUtil.upload(modifyPhotoForm.getFile(), modifyPhotoForm.getFileFileName(), modifyPhotoForm.getUsername().replace('.', '_'), "/photo");
		System.out.println(photoName);
		System.out.println(modifyPhotoForm.getUsername());
		System.out.println(modifyPhotoForm.getFileFileName());
		System.out.println(modifyPhotoForm.getPassword());
		if(userService.modifyPhoto(modifyPhotoForm.getUsername(), modifyPhotoForm.getPassword(), photoName)){
			ActionContext.getContext().getSession().put("username",modifyPhotoForm.getUsername());
			String contextPath = ServletActionContext.getServletContext().getRealPath("/photo");
			ActionContext.getContext().getSession().put("photo",contextPath+"\\"+photoName);
		}else{
			ActionContext.getContext().getSession().put("errorMessage","用户名或密码错误");
			return ERROR;
		}
		return SUCCESS;
	}
}