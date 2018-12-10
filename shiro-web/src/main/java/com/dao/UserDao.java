package com.dao;

import com.vo.User;

import java.util.List;

public interface UserDao {

	User getUserByUsername(String username);

	List<String> getRolesByUserName(String username);

}
