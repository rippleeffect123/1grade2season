package kr.ac.kopo.HWLiquor.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.HWLiquor.model.Member;
import kr.ac.kopo.HWLiquor.model.Product;
import kr.ac.kopo.HWLiquor.pager.Pager;
import kr.ac.kopo.HWLiquor.service.MemberService;
import kr.ac.kopo.HWLiquor.service.ProductService;

@Controller
public class RootController {
	
	@Autowired
	MemberService service;
	
	@Autowired
	ProductService productService;

	@GetMapping("/header")
	String nav() {
		return "header";
	}
	
	@GetMapping("/")
	String index(Model model) {
		List<Product> wine = productService.wine(new Pager());
		model.addAttribute("wine", wine);
		
		List<Product> whiskey = productService.whiskey(new Pager());
		model.addAttribute("whiskey", whiskey);
		
		List<Product> brandy = productService.brandy(new Pager());
		model.addAttribute("brandy", brandy);
		
		List<Product> liquor = productService.liquor(new Pager());
		model.addAttribute("liquor", liquor);
		
		List<Product> gin = productService.gin(new Pager());
		model.addAttribute("gin", gin);
		
		
		return "index";
	}
	
	@GetMapping("/signup")
	String signup() {
		return "signup";
	}
	
	@PostMapping("/signup")
	String signup(Member item) { 
		item.setMail(item.getMail()+"@"+item.getAddress());
		
		System.out.println(item.getAddress());
		
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
	
	@GetMapping("/logout")
	String logut(HttpSession session) {
		session.invalidate();
		
		return "redirect:.";
	}
	
	@GetMapping("/admin")
	String admin() {
		return "/admin/admin";
	}

}
