package com.snehil.springsecurity.demo.controller;

import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.jsp.PageContext;
import javax.sound.sampled.*;
@Controller
public class LoginController {

	@GetMapping("/showMyLoginPage")
	public String showLoginPage() {
		
		return "fancy-login";
	
	}
	
	

	// add request mapping for /access-denied
	@GetMapping("/access-denied")
	public String showAccessDenied() {
		return "access-denied";
	}
	
}
