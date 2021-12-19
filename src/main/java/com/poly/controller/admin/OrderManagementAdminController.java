package com.poly.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.model.OrderDTO;
import com.poly.service.ItemService;
import com.poly.service.OrderService;

@Controller
@RequestMapping(value = "/admin")

public class OrderManagementAdminController {
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private ItemService itemService;
	
	@GetMapping(value = "/order-list")
	public String findAll(HttpServletRequest request) {
		
		int pageIndex = 0;
		int pageSize = 7;
		int totalPage = 0;
		if (request.getParameter("pageIndex") != null) {
			pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		}
		int count = orderService.count();
		if (count % 10 == 0) {
			totalPage = count / pageSize;
		} else {
			totalPage = count / pageSize + 1;
		}
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("pageIndex", pageIndex);
		request.setAttribute("orders", orderService.findAll(pageIndex, pageSize));
		return "admin/order/order_list";
	}
	
	
	@GetMapping(value = "/order-pending")
	public String findAllPending(HttpServletRequest request) {
		
		int pageIndex = 0;
		int pageSize = 7;
		int totalPage = 0;
		if (request.getParameter("pageIndex") != null) {
			pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		}
		int count = orderService.count();
		if (count % 10 == 0) {
			totalPage = count / pageSize;
		} else {
			totalPage = count / pageSize + 1;
		}
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("pageIndex", pageIndex);
		request.setAttribute("orders", orderService.findAll(pageIndex, pageSize));
		return "admin/order/order-pending";
	}
	
	@GetMapping(value = "/order-success")
	public String findAllSuccess(HttpServletRequest request) {
		
		int pageIndex = 0;
		int pageSize = 7;
		int totalPage = 0;
		if (request.getParameter("pageIndex") != null) {
			pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		}
		int count = orderService.count();
		if (count % 10 == 0) {
			totalPage = count / pageSize;
		} else {
			totalPage = count / pageSize + 1;
		}
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("pageIndex", pageIndex);
		request.setAttribute("orders", orderService.findAll(pageIndex, pageSize));
		return "admin/order/order-success";
	}
	
	@GetMapping(value = "/order-shipping")
	public String findAllShiping(HttpServletRequest request) {
		
		int pageIndex = 0;
		int pageSize = 7;
		int totalPage = 0;
		if (request.getParameter("pageIndex") != null) {
			pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		}
		int count = orderService.count();
		if (count % 10 == 0) {
			totalPage = count / pageSize;
		} else {
			totalPage = count / pageSize + 1;
		}
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("pageIndex", pageIndex);
		request.setAttribute("orders", orderService.findAll(pageIndex, pageSize));
		return "admin/order/order-shipping";
	}
	
	@GetMapping(value = "/order-ok")
	public String findAllOk(HttpServletRequest request) {
		
		int pageIndex = 0;
		int pageSize = 7;
		int totalPage = 0;
		if (request.getParameter("pageIndex") != null) {
			pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		}
		int count = orderService.count();
		if (count % 10 == 0) {
			totalPage = count / pageSize;
		} else {
			totalPage = count / pageSize + 1;
		}
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("pageIndex", pageIndex);
		request.setAttribute("orders", orderService.findAll(pageIndex, pageSize));
		return "admin/order/order-ok";
	}
	
	
	@GetMapping(value = "order-updateHome")
	public String orderUpdateHome(HttpServletRequest request) {
		long orderId = Long.parseLong(request.getParameter("orderId"));
		OrderDTO orderDTO = orderService.findById(orderId);
		orderDTO.setStatus("SUCCESS");
		orderService.update(orderDTO);
		return "redirect:/admin/home";
	}

	
	@GetMapping(value = "order-update")
	public String orderUpdate(HttpServletRequest request) {
		int pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		long orderId = Long.parseLong(request.getParameter("orderId"));
		OrderDTO orderDTO = orderService.findById(orderId);
		orderDTO.setStatus("SUCCESS");
		orderService.update(orderDTO);
		return "redirect:../admin/order-list?pageIndex=" + pageIndex;
	}
	
	@GetMapping(value = "/order-pending-update")
	public String orderpending(HttpServletRequest request) {
		int pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		long orderId = Long.parseLong(request.getParameter("orderId"));
		OrderDTO orderDTO = orderService.findById(orderId);
		orderDTO.setStatus("SUCCESS");
		orderService.update(orderDTO);
		return "redirect:../admin/order-pending?pageIndex=" + pageIndex;
	}
	
	
	
	@GetMapping(value = "/order-success-update")
	public String ordersuccess(HttpServletRequest request) {
		int pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		long orderId = Long.parseLong(request.getParameter("orderId"));
		OrderDTO orderDTO = orderService.findById(orderId);
		orderDTO.setStatus("SUCCESS");
		orderService.update(orderDTO);
		return "redirect:../admin/order-success?pageIndex=" + pageIndex;
	}
	
	@GetMapping(value = "order-details")
	public String orderDetails(HttpServletRequest request) {
		long orderId = Long.parseLong(request.getParameter("orderId"));
		request.setAttribute("items", itemService.findByOrderId(orderId));
		request.setAttribute("order", orderService.findById(orderId));
		return "admin/order/order_details";
	}
	

}
