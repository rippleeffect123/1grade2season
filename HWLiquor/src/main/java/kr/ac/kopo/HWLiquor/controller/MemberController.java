package kr.ac.kopo.HWLiquor.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.HWLiquor.model.Member;
import kr.ac.kopo.HWLiquor.pager.Pager;
import kr.ac.kopo.HWLiquor.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	final String path = "member/";
	
	@Autowired
	MemberService service;
	
	@GetMapping("/list")
	String list(Model model, Pager pager) {
		List<Member> list = service.list(pager);
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/add")
	String add() {
		return path + "add";
	}
	
	@PostMapping("/add")
	String add(Member item) {
		item.setMail(item.getMail()+"@"+item.getAddress());
		
		service.add(item);
		
		return "redirect:list";
	}
	
	@GetMapping("/update/{id}")
	String update(@PathVariable String id, Model model) {
		Member item = service.item(id);
		
		model.addAttribute("item", item);
		
		return path + "update";
	}
	
	@PostMapping("/update/{id}")
	String update(@PathVariable String id, Member item) {
		item.setId(id);
		
		service.update(item);
		
		return "redirect:../list";
	}
	
	@GetMapping("/delete/{id}")
	String delete(@PathVariable String id) {
		service.delete(id);
		
		return "redirect:../list";
	}

}
