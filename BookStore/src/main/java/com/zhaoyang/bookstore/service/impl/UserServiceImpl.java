package com.zhaoyang.bookstore.service.impl;

import com.zhaoyang.bookstore.bean.User;
import com.zhaoyang.bookstore.dao.UserDao;
import com.zhaoyang.bookstore.dao.impl.UserDaoImpl;
import com.zhaoyang.bookstore.service.UserService;

public class UserServiceImpl implements UserService{
	private UserDao ud=new UserDaoImpl();

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
