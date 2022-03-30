package com.sonalika.application;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"com.sonalika.controller"})
public class SpringbootAws1Application {
	public static void main(String[] args) {
		SpringApplication.run(SpringbootAws1Application.class, args);
	}

}