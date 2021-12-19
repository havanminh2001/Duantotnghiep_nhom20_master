package com.poly.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.service.CategoryService;

@Controller
@RequestMapping(value = "/admin")
public class CategoyControler {
 
	@Autowired
	private CategoryService categoryService;

	@GetMapping(value = "/category-list")
	public String findAll(HttpServletRequest request, HttpSession session) {
		session.setAttribute("categories", categoryService.findAll());
		return "admin/product/listcategory";
	}

}
