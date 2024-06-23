package com.example.productapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.annotation.security.RolesAllowed;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;

@SpringBootApplication
public class ProductAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProductAppApplication.class, args);
	}
}

@Controller
class ProductController {

	@GetMapping(path = "/employees")
	public String getEmployee(Model model){
		model.addAttribute("employees", Arrays.asList("Amit","Chetan","Nikhil","Srikanth"));
		return "employees";
	}

	@GetMapping(path = "/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		request.logout();
		return "/";
	}
}
