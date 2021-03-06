package com.dsw.dao;

import java.util.List;

import com.dsw.bean.User;

public interface UserDao {
	public int insert(User user);
	public int updatePassword(User user);
	public int updatePhoto(User user);
	public int delete(User user);
	public List<User> selectAll();
	public User findbyUserName(String userName);	
	public int countAll();
}