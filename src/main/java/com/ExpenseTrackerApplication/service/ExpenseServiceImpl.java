package com.ExpenseTrackerApplication.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ExpenseTrackerApplication.entity.Expense;
import com.ExpenseTrackerApplication.repository.ExpenseRepository;

@Service
public class ExpenseServiceImpl implements ExpenseService {

	@Autowired
	private ExpenseRepository expenseRepository;

	@Override
	public String addExpense(Expense expense, String username) {

		expenseRepository.save(expense);
		return "Expense added successfully for user: " + username;
	}

	@Override
	public Expense findById(Integer eid) {
		return expenseRepository.findById(eid).get();
	}

	@Override
	public String updateExpense(Expense expense) {
		Expense exp = findById(expense.getEid());
		exp.setAmount(expense.getAmount());
		exp.setDescription(expense.getDescription());
		exp.setName(expense.getName());

		expenseRepository.save(exp);
		return "updated successfully";
	}

	@Override
	public String deleteExpense(Integer eid) {
//		Expense expense = findById(eid);
		expenseRepository.deleteById(eid);

		return " deleted successfully";
	}

}
