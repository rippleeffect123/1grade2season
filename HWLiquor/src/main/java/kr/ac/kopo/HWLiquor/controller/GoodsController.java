package kr.ac.kopo.HWLiquor.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.HWLiquor.model.Product;
import kr.ac.kopo.HWLiquor.pager.Pager;
import kr.ac.kopo.HWLiquor.service.ProductService;

@Controller
@RequestMapping("/goods")
public class GoodsController {
	final String path = "goods/";
	
	@Autowired
	ProductService service;
	
	@GetMapping("/wine/{originId}")
	String wine(Model model, Pager pager) {
//		pager.setOriginId(originId);
		System.out.println("처음값 " + pager.getOriginId());
		List<Product> wine = service.wine(pager);
		
		model.addAttribute("wine", wine);
		
		return path + "wine";
	}

}
