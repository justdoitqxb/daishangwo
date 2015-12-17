package com.dsw.service;

import com.dsw.bean.Administrator;
import com.dsw.bean.User;

public interface AdministratorService {
	/**
     * 添加用户
     * @param User
     */
	public void addAdministrator(Administrator admin);
	/**
     * 根据用户名获取用户
     * @param email
     */
	public Administrator getByUsername(String username);
	/**
     * 根据用户名密码-登陆
     * @param email
     */
	public Administrator loginVerify(String username, String password);	
	/**
     * 修改密码
     * @param User
     */
	public boolean modifyPassword(String username, String oldPassword, String newPassword);
}