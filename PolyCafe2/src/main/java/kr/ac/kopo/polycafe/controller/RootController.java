package kr.ac.kopo.polycafe.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import kr.ac.kopo.polycafe.model.Member;
import kr.ac.kopo.polycafe.model.Product;
import kr.ac.kopo.polycafe.pager.Pager;
import kr.ac.kopo.polycafe.service.MemberService;
import kr.ac.kopo.polycafe.service.ProductService;

@Controller
public class RootController {
	
	@Autowired
	MemberService service;
	
	@Autowired
	ProductService productService;
	
	@GetMapping("/nav")
	String nav() {
		return "nav";
	}
	
	@GetMapping("/")
	String index(Model model) {
		List<Product> products = productService.list(new Pager());
		
		model.addAttribute("products", products);
		
		return "index";
	}

	@GetMapping("/login/{type}/popup")
	String loginPopup(@PathVariable String type) {
		return "login_popup";
	}
	
	@PostMapping("/login/{type}/popup")
	String loginPopup(@PathVariable String type, Member item, HttpSession session) {
		if(service.login(item)) {
			session.setAttribute("member", item);
			
			return "login_popup";
		} else {
			return "redirect:popup";
		}
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
	
	@GetMapping("/login")
	String login() {
		return "login";
	}
	
	@GetMapping("/logout")
	String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:.";
	}
	
	@GetMapping("/signup1")
	String signup1() {
		return "signup1";
	}
	
	@GetMapping("/signup2")
	String signup2() {
		return "signup2";
	}
	
	@GetMapping("/signup3")
	String signup3() {
		return "signup3";
	}
	
	@PostMapping("/signup")
	String signup(Member item) {
		service.signup(item);
		
		return "redirect:.";
	}
	
	@ResponseBody
	@GetMapping("/id_check/{id}")
	String idCheck(@PathVariable String id) {
		
		/*
		try {
			Thread.sleep(60 * 1000);
		} catch (InterruptedException e) {			
			e.printStackTrace();
		}
		*/
		
		if(service.isUnique(id))			
			return "OK";

		return "FAIL";
	}
}
