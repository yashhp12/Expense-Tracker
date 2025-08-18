package com.ExpenseTrackerApplication.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ExpenseTrackerApplication.entity.Expense;

public interface ExpenseRepository extends JpaRepository<Expense, Integer> {

}
