package com.poly.controller.authen;

import java.security.SecureRandom;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.RoleDTO;
import com.poly.model.UserDTO;
import com.poly.service.UserService;

@Controller
public class RegisterController {
	@Autowired
	private UserService userService;

	@Autowired
	private MailSender mailSender;

	@GetMapping(value = "/register")
	public String register() {
		return "authen/register";
	}

	@PostMapping(value = "/register")
	public String register(HttpServletRequest request, @RequestParam(name = "email") String email,
			@RequestParam(name = "password") String password, @RequestParam(name = "repassword") String repassword) {
		String code = randomString(8);
		if (userService.findByEmail(email) != null) {
			UserDTO userDTO = userService.findByEmail(email);
			if (userDTO.isVerify() == true) {
				request.setAttribute("error", "Địa chỉ email đã tồn tại!");
				return "authen/register";
			} else {
				if (!password.equals(repassword)) {
					request.setAttribute("error", "Mật khẩu không khớp!");
					request.setAttribute("email", email);
					userDTO.setPassword(repassword);
					userDTO.setAvatar("themeforest.png");
					userService.update(userDTO);
					return "authen/register";
				} else {
					userDTO.setPassword(new BCryptPasswordEncoder().encode(password));
					userService.update(userDTO);
					sendEmail("havanminh20062001@gmail.com", "havanminh20062001@gmail.com",
							"chào mừng đến với MinhStore",
							"Hello, " + email.split("@")[0] 
									+ "! Vui Lòng xác minh tài khoản để đăng nhập "
									+ " Chào mừng bạn đã đến với cửa hàng của chúng tôi - hi vọng bạn có trải nghiệm mua sắm vui vẻ - đây là mã xác nhận của bạn  " + code);
				}
			}
		} else {
			if (!password.equals(repassword)) {
				request.setAttribute("error", "Mật khẩu không khớp!");
				request.setAttribute("email", email);
				return "authen/register";
			} else {
				UserDTO userDTO = new UserDTO();
				userDTO.setEmail(email);
				userDTO.setPassword(new BCryptPasswordEncoder().encode(password));
				userDTO.setAvatar("themeforest.png");
				RoleDTO roleDTO = new RoleDTO();
				roleDTO.setRoleId(3);
				userDTO.setRoleDTO(roleDTO);
				userService.insert(userDTO);
				sendEmail("havanminh20062001@gmail.com", "havanminh20062001@gmail.com",
						"Welcome to Shop MoBiPhone - GR 20",
						"Hello, " + email.split("@")[0]+ "! Please confirm that you can login in Shop MoBiPhone - GR 20!"
								+ "We'll get straight to the point: To bring free templates to you we spend tens of thousands of dollars, but 99% of our"
								+ "users don't pay; they simply look the other way. Try the template, if you are going to use the template for"
								+ "your or your client's project, Please consider Purchasing(donating for) the license of the template"
								+ "Help us run the show." + " Your confirmation code is: " + code);
			}
		}
		HttpSession session = request.getSession();
		session.setAttribute("emailRegister", email);
		session.setAttribute("codeVerify", code);
		return "authen/verify";
	}

	@GetMapping(value = "/resend-code")
	public String resendCode(HttpSession session, HttpServletRequest request) {
		String code = randomString(8);
		String email = (String) session.getAttribute("emailRegister");
		sendEmail("havanminh20062001@gmail.com", email, "Welcome to Shop MoBiPhone - GR 20!", "Hello, " + email.split("@")[0]+ "! Please confirm that you can login in Shop MoBiPhone - GR 20!"
				+ "We'll get straight to the point: To bring free templates to you we spend tens of thousands of dollars, but 99% of our"
				+ "users don't pay; they simply look the other way. Try the template, if you are going to use the template for"
				+ "your or your client's project, Please consider Purchasing(donating for) the license of the template"
				+ "Help us run the show." + " Your confirmation code is: " + code);
		request.setAttribute("resend", "resend");
		session.setAttribute("codeVerify", code);
		return "authen/verify";
	}

	@PostMapping(value = "/verify")
	public String verify(HttpServletRequest request, HttpSession session) {
		String code = request.getParameter("code");
		String codeVerify = (String) session.getAttribute("codeVerify");
		if (!code.equals(codeVerify)) {
			request.setAttribute("verifyFail", "Mã không hợp lệ, vui lòng thử lại!");
		} else {
			String email = (String) session.getAttribute("emailRegister");
			UserDTO userDTO = userService.findByEmail(email);
			userDTO.setVerify(true);
			request.setAttribute("verifySuccess", "Xác minh thành công!");
			request.setAttribute("active", "active");
			userService.update(userDTO);
		}
		return "authen/verify";
	}

	@PostMapping(value = "get-news")
	public String getNews(@RequestParam(name = "email") String email) {
		sendEmail("havanminh20062001@gmail.com", email, "Chào Mừng các bạn đến với  Linh Store",
				"Cảm ơn quý khách hàng đã quan tâm, chúng tôi sẽ gửi thông báo mới nhất nếu có. Hãy chú ý đến thư của bạn.");
		return "client/get_news";
	}

	public void sendEmail(String from, String to, String subject, String content) {
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setFrom(from);
		mailMessage.setTo(to);
		mailMessage.setSubject(subject);
		mailMessage.setText(content);

		mailSender.send(mailMessage);
	}

	static final String AB = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
	static SecureRandom rnd = new SecureRandom();

	String randomString(int len) {
		StringBuilder sb = new StringBuilder(len);
		for (int i = 0; i < len; i++)
			sb.append(AB.charAt(rnd.nextInt(AB.length())));
		return sb.toString();
	}
}
