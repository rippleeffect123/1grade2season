package kr.ac.kopo.HWLiquor.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.HWLiquor.model.Member;
import kr.ac.kopo.HWLiquor.service.MemberService;

@Controller
public class RootController {
	
	@Autowired
	MemberService service;

	@GetMapping("/header")
	String nav() {
		return "header";
	}
	
	@GetMapping("/")
	String index() {
		return "index";
	}
	
	@GetMapping("/signup")
	String signup() {
		return "signup";
	}
	
	@PostMapping("/signup")
	String signup(Member item) { 
		item.setMail(item.getMail()+"@"+item.getAddress());
		service.signup(item);
		
		return "redirect:.";
	}
	
	@ResponseBody
	@GetMapping("/id_check/{id}")
	String id_check(@PathVariable String id) {
		if(service.isUnique(id))
			return "OK";
		
		return "FAIL";
	}
	
	@GetMapping("/login")
	String login() {
		return "login";
	}
	
	@PostMapping("/login")
	String login(Member item, HttpSession session) {
		if(service.login(item)) {
			session.setAttribute("member", item);
			
			return "redirect:.";
		} else {
			return "redirect:login";
		}
	}
	
	@GetMapping("/admin")
	String admin() {
		return "/admin/admin";
	}

}
