package com.dsw.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dsw.bean.User;
import com.dsw.dao.UserDao;
import com.dsw.service.UserService;
@Service("userServiceImpl")
@Transactional
public class UserServiceImpl implements UserService {
	/**
    * ʹ��@Autowiredע���עuserDao������
    * ����Ҫʹ��UserDaoʱ��Spring�ͻ��Զ�ע��UserDao
    */
    @Autowired
    private UserDao userDao;	//ע��dao
    public UserDao getUserDao(){
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
    public User getUserByEmail(String email) {
        return userDao.findbyUserName(email);
    }
    @Override
    public User loginVerify(String email, String password){
    	User user = userDao.findbyUserName(email);
    	if(user != null){
    		if(user.getPassword().equals(password)){
    			return user;
    		}
    	}
    	return null;
    }
    @Override
    public boolean modifyPassword(String email, String oldPassword, String newPassword){
    	User user = getUserByEmail(email);
    	if(user.getPassword().equals(oldPassword)){
    		user.setPassword(newPassword);
    		userDao.updatePassword(user);
    	}else{
    		//throw new RuntimeException("ԭ�������");
    		return false;
    	}
    	return true;
    }
    public boolean modifyPhoto(String email,String Password, String newPhoto){
    	User user = getUserByEmail(email);
    	if(user.getPassword().equals(Password)){
    		user.setPhoto(newPhoto);
    		userDao.updatePhoto(user);
    	}else{
    		return false;
    	}
    	return true;
    }
}