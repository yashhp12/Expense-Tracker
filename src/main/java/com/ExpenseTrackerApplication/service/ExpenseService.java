package com.ExpenseTrackerApplication.service;

import com.ExpenseTrackerApplication.entity.Expense;

public interface ExpenseService {

	String addExpense(Expense expense, String username);

	Expense findById(Integer eid);

	String updateExpense(Expense expense);

	String deleteExpense(Integer eid);

}
