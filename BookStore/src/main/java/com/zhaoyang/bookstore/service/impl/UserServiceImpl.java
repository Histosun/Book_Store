package com.zhaoyang.bookstore.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhaoyang.bookstore.bean.User;
import com.zhaoyang.bookstore.dao.UserDao;
import com.zhaoyang.bookstore.dao.impl.UserDaoImpl;
import com.zhaoyang.bookstore.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao ud;

	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		return ud.getUserByNameAndPassword(user);
	}

	@Override
	public boolean regist(User user) {
		// TODO Auto-generated method stub
		return ud.registUser(user);
	}
	
}
