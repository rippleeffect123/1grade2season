package kr.ac.kopo.HWLiquor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
		service.signup(item);
		
		return "redirect:.";
	}
	

}
