package com.dsw.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dsw.bean.Catlog;
import com.dsw.dao.CatlogDao;
import com.dsw.service.CatlogService;
@Service("catlogServiceImpl")
@Transactional
public class CatlogServiceImpl implements CatlogService {
	@Autowired
	private CatlogDao catlogDao;
	
	public CatlogDao getCatlogDao() {
		return catlogDao;
	}

	public void setCatlogDao(CatlogDao catlogDao) {
		this.catlogDao = catlogDao;
	}

	@Override
	public List<Catlog> getCatlogList() {
		return catlogDao.selectAll();
	}

	@Override
	public void add(Catlog catlog) {	
		
	}

	@Override
	public boolean modify(Catlog catlog) {
		
		return false;
	}

	@Override
	public boolean delete(Catlog catlog) {
		return false;
	}
}
