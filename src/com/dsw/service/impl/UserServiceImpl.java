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
    * 使用@Autowired注解标注userDao变量，
    * 当需要使用UserDao时，Spring就会自动注入UserDao
    */
    @Autowired
    private UserDao userDao;	//注入dao
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