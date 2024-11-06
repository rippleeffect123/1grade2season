package kr.ac.kopo.HWLiquor.controller;

import java.lang.reflect.Member;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.HWLiquor.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	final String path = "member/";
	
	@Autowired
	MemberService service;
	
	@GetMapping("/list")
	String list(Model model) {
		List<Member> list = service.list();
		
		model.addAttribute("list", list);
		
		return path + "list";
	}

}
