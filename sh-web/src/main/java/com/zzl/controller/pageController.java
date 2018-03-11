package com.zzl.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zzl.entity.employee;
import com.zzl.service.EmployeeService;

@Controller
public class pageController {

	@Autowired
	private EmployeeService employeeService;

	@RequestMapping("/home")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "home");
		mv.addObject("userClickHome", true);
		return mv;
	}

	@RequestMapping("/listall")
	public ModelAndView listall() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("userClicklistall", true);
		return mv;
	}

	@RequestMapping("/new")
	public ModelAndView newemployee() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("userClicknew", true);
		return mv;
	}

	@RequestMapping(value = "/employee/save", method = RequestMethod.POST)
	public ModelAndView saveEmployee(@ModelAttribute employee newEmployee) {
		employeeService.saveEmployee(newEmployee);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/listall");
		return mav;
	}

	@RequestMapping(value = "/json/data/allemployee", method = RequestMethod.GET)
	@ResponseBody
	public ArrayList<employee> showProducts() {
		return (ArrayList<employee>) employeeService.all();
	}

}
