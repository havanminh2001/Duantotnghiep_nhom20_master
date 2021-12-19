package com.poly.controller.client;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.model.RoleDTO;
import com.poly.model.UserDTO;
import com.poly.model.UserPrincipal;
import com.poly.service.RoleService;
import com.poly.service.UserService;

@Controller
@RequestMapping(value = "/client")
public class ProfileClientController {
	@Autowired
	private UserService userService;

	@Autowired
	private RoleService roleService;

	@GetMapping(value = "/profile")
	public String profile() {
		return "client/profile";
	}

	@GetMapping(value = "/profile-from-cart")
	public String profileFromCart(HttpServletRequest request) {
		request.setAttribute("messageError", "Vui Lòng Cập Nhật Lại Thông Tin Của Bạn.");
		return "client/profile";
	}

	@PostMapping(value = "/profile-update")
	public String profileUpdate(HttpServletRequest request,
			@RequestParam(name = "fullname", required = false) String fullname,
			@RequestParam(name = "phone") String phone, @RequestParam(name = "address") String address,
			@RequestParam(name = "avatarFile") MultipartFile avatarFile, @RequestParam(name = "avatar") String avatar) {
		UserPrincipal userPrincipal = (UserPrincipal) request.getSession().getAttribute("user");
		userPrincipal.setFullname(fullname);
		userPrincipal.setPhone(phone);
		userPrincipal.setAddress(address);
		RoleDTO roleDTO = new RoleDTO();
		roleDTO.setRoleId(userPrincipal.getRole().getRoleId());
		roleDTO.setRoleName(userPrincipal.getRole().getRoleName());

		UserDTO userDTO = new UserDTO();
		userDTO.setUserId(userPrincipal.getUserId());
		userDTO.setEmail(userPrincipal.getEmail());
		userDTO.setPhone(userPrincipal.getPhone());
		userDTO.setAddress(userPrincipal.getAddress());
		userDTO.setAvatar(userPrincipal.getAvatar());
		userDTO.setFullname(userPrincipal.getFullname());
		userDTO.setVerify(userPrincipal.isVerify());
		userDTO.setGender(userPrincipal.isGender());
		userDTO.setPassword(userPrincipal.getPassword());
		userDTO.setRoleDTO(roleDTO);

		if (avatarFile != null && avatarFile.getSize() > 0) {
			String originalFilename = avatarFile.getOriginalFilename();
			int lastIndex = originalFilename.lastIndexOf(".");
			String ext = originalFilename.substring(lastIndex);
			String avatarFilename = System.currentTimeMillis() + ext;
			File newfile = new File(
					"C:\\DATA\\DuAnTotNghiep_Javs\\Duantotnghiep_nhom20_master\\src\\main\\webapp\\WEB-INF\\resource\\admin\\assets\\imageUser\\"
							+ avatarFilename);
			FileOutputStream fileOutputStream;
			try {
				fileOutputStream = new FileOutputStream(newfile);
				fileOutputStream.write(avatarFile.getBytes());
				fileOutputStream.close();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			userDTO.setAvatar(avatarFilename);
		}
		userService.update(userDTO);
		request.setAttribute("messageSuccess", "Cập Nhật Thông Tin Thành Công. --> . "
				+ "Ảnh Đại Diện Của Bạn Sẽ Được Cập Nhật vào Phiên Đăng Nhập Mới ..");
		return "client/profile";
	}

	@PostMapping(value = "/change-password")
	public String changePassword(HttpServletRequest request, @RequestParam(name = "userId") long userId,
			@RequestParam(name = "password", required = false) String password,
			@RequestParam(name = "repassword", required = false) String repassword) {

		UserDTO userDTO = userService.findById(userId);
		RoleDTO roleDTO = new RoleDTO();

		if (password.equals(repassword) && password != null) {
			userDTO.setPassword(new BCryptPasswordEncoder().encode(repassword));
			userService.update(userDTO);
			return "redirect:../admin/user-list";
		} else {
			request.setAttribute("message", "Mật Khẩu Mới Không Khớp Nhau");
			request.setAttribute("roles", roleService.findAll());
			request.setAttribute("user", userService.findById(userId));
			return "client/profile";
		}
	}
}