package com.dsw.junit;

import static org.junit.Assert.*;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.dsw.dao.UserDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:applicationContext.xml")
@Transactional
public class BaseJunit4Test {
	@Resource
	private UserDao userDao;
	@Test
	public void quary(){
		String str = userDao.findbyUserName("qxb").getPassword();
		assertEquals(str,"123456");
	}
}