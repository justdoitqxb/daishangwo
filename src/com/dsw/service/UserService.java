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
     * @param userName
     */
	public User getUserByUserName(String userName);
}