package com.dsw.service;

import com.dsw.bean.User;

public interface UserService {
    /**
     * ����û�
     * @param user
     */
	public void addUser(User user);
	/**
     * �����û�����ȡ�û�
     * @param userName
     */
	public User getUserByUserName(String userName);
}