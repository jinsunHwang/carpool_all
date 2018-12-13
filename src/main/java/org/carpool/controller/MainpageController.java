package org.carpool.controller;



import org.carpool.domain.MainpageVO;
import org.carpool.domain.MemberVO;
import org.carpool.service.MainpageService;
import org.carpool.service.MemberService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/mainpage/*")
@Log4j
@AllArgsConstructor
public class MainpageController {

	private MainpageService service;
	private MemberService mservice;
	
	@GetMapping("/list")
	@PreAuthorize("isAuthenticated()")
	public void mainpage(Model model) {
		log.info("mainpage-------------");
		model.addAttribute("list",service.getList());
	}
	
	@GetMapping({"/carinfo","/modify"})
	public void carinfo(@RequestParam("pnum") Long pnum,Model model) {
		log.info("/get or /modify");
		
		model.addAttribute("board", service.get(pnum));
	}
	
	@PreAuthorize("principal.username == #board.writer")
	@PostMapping("/modify")
	public String modify(MainpageVO board, RedirectAttributes rttr) {
		log.info("modify:"+board);
		
		if(service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/mainpage/list";
	}
	
	@PreAuthorize("principal.username == #writer")
	@PostMapping("/remove")
	public String remove(@RequestParam("pnum") Long pnum,RedirectAttributes rttr , String writer) {
		log.info("remove..."+pnum);
		
		if(service.remove(pnum)) {
			rttr.addFlashAttribute("result","success");
		}
		
		return "redirect:/mainpage/list";
	}
	
	
	@GetMapping("/register")
	@PreAuthorize("isAuthenticated()")
	public void register() {
		log.info("register-------------");
	}
	
	@PostMapping("/register")
	@PreAuthorize("isAuthenticated()")
	public String register(MainpageVO board,RedirectAttributes rttr) {
		
		log.info("register:" + board);
		
		if(board.getTitle() ==null || board.getTitle().equals("") || 
		   board.getDestination() == null || board.getDestination().equals("") ||
		   board.getWriter()== null || board.getWriter().equals("")) {
			return "redirect:/mainpage/register";
		}
		else {
		service.register(board);
		
		rttr.addFlashAttribute("result", board.getPnum());
		
		return "redirect:/mainpage/list";
		}
	}
	
	
	
	@GetMapping("/chats")
	public void chats() {
		log.info("chats--------------");
	}
	
	@GetMapping("/chat")
	public void chat(@RequestParam("pnum") Long pnum,Model model) {
		log.info("chat--------------");
		
		model.addAttribute("board", service.get(pnum));

	}
	
	@GetMapping("/friend")
	public void friend() {
		log.info("friend--------------");
	}
	
	@GetMapping("/profile")
	public void profile() {
		log.info("profile--------------");
	}
}
