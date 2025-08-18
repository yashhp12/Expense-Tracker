package com.ExpenseTrackerApplication.service;

import com.ExpenseTrackerApplication.entity.User;

public interface UserService {

	boolean save(User user);

	boolean login(String username, String password);

	User getUserByUsername(String username);

}
