package com.dsw.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.dsw.form.AddCatlogForm;
import com.dsw.service.CatlogService;
import com.opensymphony.xwork2.ActionSupport;

@Scope("request")
@Controller("addCatlogAction")
public class AddCatlogAction extends ActionSupport{
	private static final long serialVersionUID = -3769663435037348837L;
	@Autowired
	@Qualifier("catlogServiceImpl")
	private CatlogService catlogService;
	private AddCatlogForm addCatlogForm;
	
	public AddCatlogForm getAddCatlogForm() {
		return addCatlogForm;
	}

	public void setAddCatlogForm(AddCatlogForm addCatlogForm) {
		this.addCatlogForm = addCatlogForm;
	}

	@Override
	public String execute(){
		catlogService.add(addCatlogForm.mappeToCatlog());
		return SUCCESS;
	}
}
