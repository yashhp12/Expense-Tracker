package com.ExpenseTrackerApplication.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ExpenseTrackerApplication.entity.User;
import com.ExpenseTrackerApplication.exception.UserNotFound;
import com.ExpenseTrackerApplication.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public boolean save(User user) {
		Optional<User> existingUser = userRepository.findByUsername(user.getUsername());
		if (existingUser.isPresent()) {
			return false; // User already exists
		}
		userRepository.save(user);
		return true; // User saved successfully
	}

	@Override
	public boolean login(String username, String password) {

		return userRepository.findByUsernameAndPassword(username, password).isPresent(); // Check if user exists with
																							// the given username and
																							// password
	}

	@Override
	public User getUserByUsername(String username) {
		return userRepository.findByUsername(username).orElseThrow(() -> new UserNotFound("User Not Registered"));// Return
																													// user
																													// if
																													// found,
																													// otherwise
																													// throw
																													// exception
	}

}
