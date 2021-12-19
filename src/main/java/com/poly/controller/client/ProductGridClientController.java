package com.poly.controller.client;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.service.CategoryService;
import com.poly.service.ProductService;

@Controller
@RequestMapping(value = "/client")
public class ProductGridClientController {
	@Autowired
	private ProductService productService;
 
	@Autowired
	private CategoryService categoryService;

	@GetMapping(value = "/product-grid")
	public String productGrid(HttpServletRequest request, @RequestParam(name = "categoryId") long categoryId) {
		int pageIndex = 0;
		int pagesize = 6;
		int totalPage = 0;
		int count = productService.countByCategoryId(categoryId);
		if (request.getParameter("pageIndex") != null) {
			pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		}
		if (count % pagesize == 0) {
			totalPage = count / pagesize;
		} else {
			totalPage = count / pagesize + 1;
		}
		request.setAttribute("pageIndex", pageIndex);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("categoryId", categoryId);
		request.setAttribute("products", productService.findAllByCategoryId(categoryId, pageIndex, pagesize));
		return "client/product_grid";
	}

	@GetMapping(value = "/product-grid2")
	public String productGrid(HttpServletRequest request, HttpSession session) {
		request.setAttribute("hotOne", productService.hotProducts(0, 4));
		request.setAttribute("hotTwo", productService.hotProducts(1, 4));
		request.setAttribute("product", productService.findAll(0, 1000));
		session.setAttribute("categories", categoryService.findAll());
		return "client/product_grid2";
	}

}
