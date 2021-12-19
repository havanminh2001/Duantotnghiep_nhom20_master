package com.poly.controller.client;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.service.ProductService;

@Controller
@RequestMapping(value = "/client")
public class ProductDetailsClientController {
	@Autowired
	private ProductService productService;
	
	
	@GetMapping(value = "/product-details")
	public String productDetails(HttpServletRequest request, @RequestParam(name = "productId") long productId) {
		request.setAttribute("product", productService.findById(productId));
		request.setAttribute("hotTwo", productService.hotProducts(1, 4));
		return "client/product_details";
	}
}
