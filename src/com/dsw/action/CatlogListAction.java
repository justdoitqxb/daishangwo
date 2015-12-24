package com.dsw.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.dsw.bean.Catlog;
import com.dsw.service.CatlogService;
import com.opensymphony.xwork2.ActionSupport;

@Scope("request")
@Controller("catlogListAction")
public class CatlogListAction extends ActionSupport{
	private static final long serialVersionUID = 8942238386379347550L;
	@Autowired
	@Qualifier("catlogServiceImpl")
	private CatlogService catlogService;

	@Override
	public String execute(){
		for(Catlog c:catlogService.getCatlogList()){
			System.out.println(c.getCategory());
		}
		return SUCCESS;
	}
}
