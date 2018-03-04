package com.zzl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class pageController {
	
	@RequestMapping(value= {"/", "/home", "/index"})
	public ModelAndView index() {
		ModelAndView mv=new ModelAndView("page");
		/*mv.addObject("title","home");
		mv.addObject("userClickHome",true);*/
		return mv;
	}

}
