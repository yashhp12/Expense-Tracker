package com.ExpenseTrackerApplication.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ExpenseTrackerApplication.entity.Expense;
import com.ExpenseTrackerApplication.entity.User;
import com.ExpenseTrackerApplication.service.ExpenseService;
import com.ExpenseTrackerApplication.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller

public class ExpenseTrackerController {
	@Autowired
	private ExpenseService expenseService;

	@Autowired
	private UserService userService;

	@GetMapping("/")
	public String loginPage() {
		return "login.jsp";
	}

	@GetMapping("/register")
	public String register(Model model) {
		model.addAttribute("user", new User());
		return "register.jsp";
	}

	@GetMapping("/welcome")
	public String welcome() {
		return "welcomepage.jsp";
	}

	@GetMapping("/expenselist")
	public String expenseList(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		String username = (String) session.getAttribute("username");
		User user = userService.getUserByUsername(username);
		model.addAttribute("expenses", user.getExpenses());

		return "expenselist.jsp";
	}

	@GetMapping("/addexpense")
	public String addExpense(Model model) {
		model.addAttribute("expense", new Expense());
		return "addexpense.jsp";
	}

	@PostMapping("/login")
	public String login(HttpServletRequest req, Model model) {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		boolean validUser = userService.login(username, password);
		if (validUser) {
			HttpSession session = req.getSession(true);// Create a new session if one does not exist
			session.setAttribute("username", username);
			model.addAttribute("username", username);

			return "redirect:/welcome"; // Redirect to welcome page after successful login
		} else {
			model.addAttribute("message", "Invalid username or password");
			return "login.jsp";
		}

	}

	@PostMapping("/register")
	public String register(User user, Model model) {

		boolean saved = userService.save(user);
		if (saved) {
			model.addAttribute("message", "User registered successfully");
			return "login.jsp";
		} else {
			model.addAttribute("message", "Username already exists");
			return "register.jsp";
		}

	}

	@PostMapping("/addexpense")
	public String addExpense(Expense expense, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		String username = (String) session.getAttribute("username");
		User user = userService.getUserByUsername(username);

		expense.setUser(user);
		String message = expenseService.addExpense(expense, username);
		model.addAttribute("msg", message);

		return "welcomepage.jsp";
	}

	@GetMapping("/updateExpense")
	private String update(@RequestParam Integer eid, Model model) {
		Expense expense = expenseService.findById(eid);
		model.addAttribute("expense", expense);
		return "updateexpense.jsp";

	}
//
//	@GetMapping("/updateExpense/{eid}")
//	private String update(@PathVariable Integer eid, Model model) {
//		Expense expense = expenseService.findById(eid);
//		model.addAttribute("expense", expense);
//		return "updateexpense.jsp";
//	}

	@PostMapping("/updateExpense")
	private String updateExpense(Expense expense, Model model) {
		String message = expenseService.updateExpense(expense);
		model.addAttribute("msg", message);

		return "welcomepage.jsp";

	}

	@GetMapping("/deleteExpense")
	private String deleteExpense(@RequestParam Integer eid, Model model) {
		String message = expenseService.deleteExpense(eid);
		model.addAttribute("msg", message);

		return "welcomepage.jsp";
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate(); // Invalidate the session to log out
		}
		return "login.jsp";

	}

}