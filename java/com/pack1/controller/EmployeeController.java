package com.pack1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pack1.dao.EmployeeDAO;
import com.pack1.model.Employee;
@Controller
public class EmployeeController {
	@Autowired
	EmployeeDAO dao;
	
	@RequestMapping("/employeeform")
	public String showform(Model m) {
		m.addAttribute("command", new Employee());
		return "employeeform";
	}
	@RequestMapping(value = "/insertEmployee", method = RequestMethod.POST)
	public String insertemployee(@ModelAttribute("emp") Employee emp) {
		dao.insertEmployee(emp);
		return "redirect:/viewEmployee";
	}
	
	@RequestMapping("/viewEmployee")
	public String viewemployee(Model m) {
		List<Employee> list = dao.selectEmployees();
		m.addAttribute("employees", list);
		return "viewEmployee";
	}
	
	@RequestMapping(value="/editEmployee/{eid}")
	public String updatemployee(@PathVariable("eid") int eid,Model m) {
		Employee ei = dao.getEmpById(eid);
		m.addAttribute("command", ei);
		return "editEmployee";
	}
	
	@RequestMapping(value = "/updateEmployee", method = RequestMethod.POST)
	public String UpdateEmployee(@ModelAttribute("emp") Employee emp) {
		dao.updateEmployee(emp);
		return "redirect:/viewEmployee";
	}
	
	@RequestMapping(value = "/deleteEmployee/{eid}", method = RequestMethod.GET)
	public String deleteEmployee(@PathVariable("eid") int eid) {
		dao.deleteEmployee(eid);
		return "redirect:/viewEmployee";
	}
}
