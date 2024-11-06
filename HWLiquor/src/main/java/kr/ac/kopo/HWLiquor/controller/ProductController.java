package kr.ac.kopo.HWLiquor.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.HWLiquor.model.Product;
import kr.ac.kopo.HWLiquor.pager.Pager;
import kr.ac.kopo.HWLiquor.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	final String path = "product/";
	
	@Autowired
	ProductService service;
	
	@GetMapping("/list")
	String list(Model model, Pager pager) {
		List<Product> list = service.list(pager);
		
		model.addAttribute("list",list);
		
		return path + "list";
	}
	
}
