package com.snehil.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

	@GetMapping("/")
	public String showHome() {
		
		return "home";
	}
	
	// add request mapping for /leaders
	@GetMapping("/leaders")
	public String showLeaders() {
		
		return "leaders";
	}
	
	// add req map for /systems
	@GetMapping("/systems")
	public String showSystems() {
		
		return "systems";
	}
}