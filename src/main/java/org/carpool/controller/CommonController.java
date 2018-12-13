package org.carpool.controller;

import org.carpool.domain.AuthVO;
import org.carpool.domain.MemberVO;
import org.carpool.service.MemberService;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class CommonController {
	
	private MemberService service;

	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {

		log.info("access Denied : " + auth);

		model.addAttribute("msg", "Access Denied");
	}

	@GetMapping("/customLogin")
	public void loginInput(String error, String logout, Model model) {

		log.info("error: " + error);
		log.info("logout: " + logout);

		if (error != null) {
			model.addAttribute("error", "Login Error Check Your Account");
		}

		if (logout != null) {
			model.addAttribute("logout", "Logout!!");
		}
	}

	@GetMapping("/customLogout")
	public void logoutGET() {

		log.info("custom logout");
	}

	@PostMapping("/customLogout")
	public void logoutPost() {

		log.info("post custom logout");
	}
	
	@GetMapping("/customRegister")
	public void customRegister() {
		log.info("user register get-----");
	}
	
	@PostMapping("/customRegister")
	public String customRegister(MemberVO member,RedirectAttributes rttr,AuthVO auth) {
		log.info("user register post----"+member);
		log.info("user register post auth =="+auth);
		log.info("user count check=="+service.usercheck(member));
		if(member.getUserid() == null || member.getUserid().equals("") ||
		   member.getUserpw() == null || member.getUserpw().equals("") ||
		   member.getUserName()== null || member.getUserName().equals("") ||
		   member.getUserphone()==null || member.getUserphone().equals("")||
		   service.usercheck(member)!=0) {
			if(service.usercheck(member)!=0)
				log.info("아이디 중복");
			return "redirect:/customRegister";
		}
		
		
		
		service.uregister(member);
		service.authregister(auth);

		
		return "redirect:/customLogin";
	}
	
}
