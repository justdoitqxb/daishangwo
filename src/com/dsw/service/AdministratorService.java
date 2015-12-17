package com.dsw.service;

import com.dsw.bean.Administrator;
import com.dsw.bean.User;

public interface AdministratorService {
	/**
     * ����û�
     * @param User
     */
	public void addAdministrator(Administrator admin);
	/**
     * �����û�����ȡ�û�
     * @param email
     */
	public Administrator getByUsername(String username);
	/**
     * �����û�������-��½
     * @param email
     */
	public Administrator loginVerify(String username, String password);	
	/**
     * �޸�����
     * @param User
     */
	public boolean modifyPassword(String username, String oldPassword, String newPassword);
}