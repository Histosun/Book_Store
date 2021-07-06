package com.zhaoyang.bookstore.dao;

import com.zhaoyang.bookstore.bean.User;

public interface UserDao {
	
	boolean registUser(User user);
	User getUserByNameAndPassword(User user) ;
}
