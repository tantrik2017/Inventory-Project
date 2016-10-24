package com.mill.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mill.entity.RegistrationEntity;
import com.mill.service.RegistrationService;

@Controller
public class LoginController {

	@Autowired
	private RegistrationService registerManager;
	
	public void setEmployeeManager(RegistrationService registerManager) {
		this.registerManager = registerManager;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String defaultPage(ModelMap map) {
		return "redirect:/list";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listEmployees(ModelMap map) {
		
		map.addAttribute("employee", new RegistrationEntity());
		map.addAttribute("employeeList", registerManager.getAllEmployees());

		return "editEmployeeList";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addEmployee(
			@ModelAttribute(value = "employee") RegistrationEntity employee,
			BindingResult result) {
		registerManager.addEmployee(employee);
		return "redirect:/list";
	}

	@RequestMapping(value = "/useradd", method = RequestMethod.POST)
	public String addUsers(
			@ModelAttribute(value = "employee") RegistrationEntity employee,
			BindingResult result) {
		registerManager.addEmployee(employee);
		return "redirect:/list";
	} 
	
	@RequestMapping("/delete/{employeeId}")
	public String deleteEmplyee(@PathVariable("employeeId") Integer employeeId) {
		registerManager.deleteEmployee(employeeId);
		return "redirect:/list";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		model.addAttribute("employee", new RegistrationEntity());
		return "login";
	}

	@RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
	public String loginerror(ModelMap model) {
		model.addAttribute("error", "true");
		return "denied";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(ModelMap model) {
		return "logout";
	}
}
