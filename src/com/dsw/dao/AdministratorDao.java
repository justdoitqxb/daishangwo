package com.dsw.dao;

import java.util.List;

import com.dsw.bean.Administrator;

public interface AdministratorDao {
	public int insert(Administrator admin);
	public int update(Administrator admin);
	public int delete(Administrator admin);
	public Administrator check(Administrator admin);
	public List<Administrator> selectAll();
}
