package com.dsw.service;

import com.dsw.bean.User;

public interface UserService {
    /**
     * 添加用户
     * @param user
     */
	public void addUser(User user);
	/**
     * 根据用户名获取用户
     * @param email
     */
	public User getUserByEmail(String email);
	/**
     * 根据邮箱密码-登陆
     * @param email
     */
	public User loginVerify(String email, String password);	
}