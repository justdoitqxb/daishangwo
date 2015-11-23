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
     * @param email
     */
	public User getUserByEmail(String email);
	/**
     * ������������-��½
     * @param email
     */
	public User loginVerify(String email, String password);	
}