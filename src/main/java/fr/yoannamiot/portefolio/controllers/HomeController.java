package fr.yoannamiot.portefolio.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	//GET HOME PAGE//
	@GetMapping(path={"","/home"})
	public String showHome() {
		//Return the JSP
		return "home";
	}
}
