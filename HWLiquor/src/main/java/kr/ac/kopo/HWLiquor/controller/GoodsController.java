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
	
	@GetMapping("/wine")
	String wine(Model model, Pager pager) {
		
		List<Product> wineList = service.wineList(new Pager());
		
		model.addAttribute("wineList", wineList);
		
		return path + "wine";
	}
	
	
	@GetMapping("/wine/{originId}")
	String wine(@PathVariable Long originId,Model model, Pager pager) {
		pager.setOriginId(originId);
		List<Product> wineList = service.wineList(pager);
		
		model.addAttribute("wineList", wineList);
		
		return path + "list";
	}
	
	@GetMapping("/whisky")
	String whiskey(Model model, Pager pager) {
		
		List<Product> whiskeyList = service.whiskeyList(new Pager());
		
		model.addAttribute("whiskeyList", whiskeyList);
		
		return path + "whisky";
	}
	
	@GetMapping("/whisky/{originId}")
	String whisky(@PathVariable Long originId,Model model, Pager pager) {
		pager.setOriginId(originId);
		List<Product> whiskeyList = service.whiskeyList(pager);
		
		model.addAttribute("whiskeyList", whiskeyList);
		
		return path + "whiskeylist";
	}
	
	@GetMapping("/brandy")
	String brandy(Model model, Pager pager) {
		
		List<Product> brandyList = service.brandyList(new Pager());
		
		model.addAttribute("brandyList", brandyList);
		
		return path + "brandy";
		
	}
	
	@GetMapping("/brandy/{categoryId}")
	String brandy(@PathVariable Long categoryId,Model model, Pager pager) {
		pager.setCategoryId(categoryId);
		List<Product> brandyList = service.brandyList(pager);
		
		model.addAttribute("brandyList", brandyList);
		
		return path + "brandylist";
	}
	
	@GetMapping("/vodka")
	String vodka(Model model, Pager pager) {
		List<Product> vodkaList = service.vodkaList(new Pager());
		
		model.addAttribute("vodkaList", vodkaList);
		
		return path + "vodka";
	}
	
	@GetMapping("/vodka/{categoryId}")
	String vodka(@PathVariable Long categoryId,Model model, Pager pager) {
		pager.setCategoryId(categoryId);
		List<Product> vodkaList = service.vodkaList(pager);
		
		model.addAttribute("vodkaList", vodkaList);
		
		return path + "vodkalist";
	}
	
	@GetMapping("/gin")
	String gin(Model model, Pager pager) {
		List<Product> ginList = service.ginList(new Pager());
		
		model.addAttribute("ginList", ginList);
		
		return path + "gin";
	}
	
	@GetMapping("/gin/{categoryId}")
	String gin(@PathVariable Long categoryId,Model model, Pager pager) {
		pager.setCategoryId(categoryId);
		List<Product> ginList = service.ginList(pager);
		
		model.addAttribute("ginList", ginList);
		
		return path + "ginlist";
	}

}
