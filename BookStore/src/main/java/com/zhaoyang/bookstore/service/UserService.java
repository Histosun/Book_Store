package com.zhaoyang.bookstore.service;

import com.zhaoyang.bookstore.bean.User;

public interface UserService {
	public User login(User user);
	public boolean regist(User user);
}
