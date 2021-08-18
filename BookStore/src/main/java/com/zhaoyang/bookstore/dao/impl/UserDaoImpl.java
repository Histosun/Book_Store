package com.zhaoyang.bookstore.dao.impl;

import org.springframework.stereotype.Repository;

import com.zhaoyang.bookstore.bean.User;
import com.zhaoyang.bookstore.dao.BaseDao;
import com.zhaoyang.bookstore.dao.UserDao;

@Repository
public class UserDaoImpl extends BaseDao<User> implements UserDao{
	private String LOGIN_QUERY="SELECT * FROM cus_user WHERE username=? AND password=?";
	private String REGISTER_UPDATE="INSERT INTO cus_user(username,password,email)values(?,?,?)";

	@Override
	public boolean registUser(User user) {
		// TODO Auto-generated method stub
		return update(REGISTER_UPDATE, user.getUsername(),user.getPassword(),user.getEmail())>0;
	}

	@Override
	public User getUserByNameAndPassword(User user) {
		// TODO Auto-generated method stub
		User bean=getBean(LOGIN_QUERY, user.getUsername(),user.getPassword());
		return bean;
	}

}
