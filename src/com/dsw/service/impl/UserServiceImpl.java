package com.dsw.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dsw.bean.User;
import com.dsw.dao.UserDao;
import com.dsw.service.UserService;
@Service
@Transactional
public class UserServiceImpl implements UserService {
	/**
    * ʹ��@Autowiredע���עuserDao������
    * ����Ҫʹ��UserDaoʱ��Spring�ͻ��Զ�ע��UserDao
    */
    @Autowired
    private UserDao userDao;	//ע��dao
    public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	@Override
    public void addUser(User user) {
		if(userDao.findbyUserName(user.getEmail()) != null){
			throw new RuntimeException("The count already exists!");
		}		
        userDao.insert(user);
    }
    @Override
    public User getUserByUserName(String userName) {
        return userDao.findbyUserName(userName);
    }
}