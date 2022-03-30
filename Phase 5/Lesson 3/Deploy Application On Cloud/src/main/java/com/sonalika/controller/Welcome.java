package com.sonalika.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Welcome {

	@RequestMapping("/welcome")
	public String index() {
		return "Deploy SpringBoot with Aws........!";
	}

}