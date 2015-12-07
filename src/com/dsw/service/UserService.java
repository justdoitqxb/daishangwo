package com.dsw.service;

import com.dsw.bean.User;

public interface UserService {
    /**
     * ����û�
     * @param User
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
	/**
     * �޸�����
     * @param User
     */
	public boolean modifyPassword(String email,String oldPassword, String newPassword);
	/**
     * �޸�ͷ��
     * @param User
     */
	public boolean modifyPhoto(String email,String Password, String newPhoto);
}