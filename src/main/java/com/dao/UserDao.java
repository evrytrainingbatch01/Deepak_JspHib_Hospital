package com.dao;

import java.util.List;

import com.evry.User;

public interface UserDao {

	public void saveUser(User user);
	public List<User> showUsers();
}
