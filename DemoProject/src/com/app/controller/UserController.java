package com.app.controller;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.jni.Local;
import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.pojos.Application;
import com.app.pojos.User;
import com.app.service.ApplicationService;
import com.app.service.UserService;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import com.sun.xml.internal.ws.api.pipe.Tube;

@Controller
public class UserController {
	@Autowired
	private UserService service;

	@Autowired
	private ApplicationService appService;

	@Autowired
	private JavaMailSender mailSender;

	public UserController() {
		System.out.println("Inside User Controller");
	}

	@GetMapping("/login")
	public String showLoginForm(User user) {
		// System.out.println("***///");
		return "login";
	}

	@PostMapping("/login")
	public String processLoginForm(User user, HttpSession hs, Model map) {
		User validUser= new User();
		try {
			validUser = service.validateUser(user.getEmail(), user.getPassword());
			byte[]imgContent = validUser.getUserImage();
		    	String url="data:image/jpeg;base64,"+Base64.encode(imgContent);
			hs.setAttribute("url",url);
			if (validUser != null) {
				hs.setAttribute("validUser", validUser);
				if((validUser.getUserRole().getRole()).equals("Admin"))
				return "admin/home";
				
				else
				return "redirect:dashboard";
			}
			else
			{
				return "redirect:login";
			}
		} catch (NoResultException e) {
			map.addAttribute("msg", "Invaid login credentials");
			e.printStackTrace();
		}
		return "login";
	}

	@GetMapping("/logout")
	public String logoutUser(HttpSession hs) {

		hs.invalidate();
		return "redirect:login";
	}

	@GetMapping("/register")
	public String showRegisterForm(User user, Model map) {
		List<String> roles = service.getRoles();
		map.addAttribute("roleList", roles);
		return "signup";
	}

	@PostMapping("/register")
	public String processRegisterForm(User user, RedirectAttributes flashMap, @RequestParam MultipartFile imageUpload)
			throws IOException {

		if (imageUpload != null) {
			System.out.println(imageUpload.getOriginalFilename());
			user.setUserImage(imageUpload.getBytes());
			flashMap.addFlashAttribute("msg",
					"Registration done with RegID : " + service.registerUser(user).getUserId());
		}
		return "redirect:login";
	}

	@GetMapping("/forgot")
	public String showForgotPassword() {
		return "forgotpassword";
	}

	@PostMapping("/forgot")
	public String processForgotPassword(HttpServletRequest request, Model map, HttpSession hs) {
		String em = request.getParameter("email");
		User user;
		try {
			user = service.findByEmail(em);
			hs.setAttribute("user", user);
			if (user != null) {
				int otp = service.generateOtp();
				hs.setAttribute("OTP", otp);
				String msg = "Your one time password for forgot password is = " + otp;
				SimpleMailMessage mailMessage = new SimpleMailMessage();
				mailMessage.setTo(user.getEmail());
				mailMessage.setSubject("One Time Password");
				mailMessage.setText(msg);
				try {
					mailSender.send(mailMessage);
				} catch (MailException e) {
					System.out.println("inside mail exception");
					e.printStackTrace();
				}
				return "otp";
			}
		} catch (NoResultException e) {
			map.addAttribute("msg", "Please enter valid email address");
			e.printStackTrace();
		}
		return "forgotpassword";

	}

	@PostMapping("/confirmOtp")
	public String confirmOtp(HttpServletRequest request, HttpSession hs) {
		int otp = (int) hs.getAttribute("OTP");
		int formOtp = Integer.parseInt(request.getParameter("otp"));
		if (otp == formOtp) {
			User user = (User) hs.getAttribute("user");
			String role = user.getUserRole().getRole();
			if (role.equals("BUYER"))
				return "buyer/dashboard";
			else if (role.equals("SELLER"))
				return "seller/dashboard";
			else
				return "admin/dashboard";
		} else
			hs.setAttribute("msg", "Enter valid one time password");
		return "otp";
	}

	@GetMapping("/changepass")
	public String showChangePasswordForm() {
		return "changePassword";
	}

	@PostMapping("/changepass")
	public String processChangePasswordForm(@RequestParam int id, HttpServletRequest request, HttpSession hs) {
		User userPojo = (User) hs.getAttribute("validUser");
		User user = service.getUserById(id);
		String pass = request.getParameter("confirmPass");
		user.setPassword(pass);
		service.updatePassword(user);
		return "redirect:/dashboard";
	}

	@GetMapping("/dashboard")
	public String showDashboard(HttpSession hs, Model map) {

		User userPojo = (User) hs.getAttribute("validUser");
		String role = userPojo.getUserRole().getRole();
		boolean ageStatus = false;
		// SimpleDateFormat sd=new SimpleDateFormat("yyyy-MM-dd");
		Date date1 = userPojo.getDob();
		Date date2 = new Date();
		long timediff = date2.getTime() - date1.getTime();
		long days = timediff / (1000 * 60 * 60 * 24);

		if ((days / 365) >= 18 && role.equals("User")) {
			int years = (int) (days / 365);
			ageStatus = true;
			map.addAttribute("status", ageStatus);
			return "home";

		} else if (days / 365 < 18 && role.equals("User")) {
			map.addAttribute("status", ageStatus);
			return "home";
		} else {
			role.equals("Admin");
			return "admin/home";
		}
	}

	@GetMapping("/apply")
	public String showApplicationForm(Application application) {

		return "apply";

	}

	@PostMapping("/apply")
	public String processAppForm(Application application, RedirectAttributes flashMap,
			@RequestParam MultipartFile imageUpload, HttpSession hs) throws IOException {
		User u = (User) hs.getAttribute("validUser");
		application.setUser(u);

		application.setApp_status(true);

		try {
			if (imageUpload != null) {
				// System.out.println(application.toString());
				// System.out.println(imageUpload.getOriginalFilename());
				application.setDoc(imageUpload.getBytes());
				flashMap.addFlashAttribute("msg", "Application Sent Successfully " + appService.sendApp(application));

			}
		} catch (HibernateException e) {

			e.printStackTrace();
		}
		return "redirect:processApp";
	}

	@GetMapping("/processApp")
	public String afterApply(Application application, HttpSession hs) {

		return "redirect:dashboard";
	}
	/*
	 * @GetMapping("/update") public String showUpdateForm(Model
	 * map,@RequestParam int id) { List<String> roles = service.getRoles(); User
	 * u=service.getUserById(id); map.addAttribute("roleList", roles);
	 * map.addAttribute("user",u); return "update";
	 * 
	 * }
	 * 
	 * @PostMapping("/update") public String processUpdateForm(User
	 * u,HttpSession hs,@RequestParam MultipartFile
	 * imageUpload,RedirectAttributes flashMap)throws IOException {
	 * if(imageUpload!=null) {
	 * System.out.println(imageUpload.getOriginalFilename());
	 * u.setUserImage(imageUpload.getBytes());
	 * flashMap.addFlashAttribute("up_status"+service.updateUser(u)); } return
	 * "redirect:dashboard";
	 * 
	 * }
	 */

	@GetMapping("/about")
	public String showAboutUs() {
		return "about";
	}

	@GetMapping("/voterid")
	public String showVoterId(Model map, User userPojo) {
		int vid = service.generateVid();
		map.addAttribute("vid", vid);
		return "voterid";
	}
}
