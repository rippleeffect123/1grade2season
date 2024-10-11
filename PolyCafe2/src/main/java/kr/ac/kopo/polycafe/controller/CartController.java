package kr.ac.kopo.polycafe.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.polycafe.model.Cart;
import kr.ac.kopo.polycafe.model.Member;
import kr.ac.kopo.polycafe.model.Product;
import kr.ac.kopo.polycafe.service.ProductService;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	@Autowired
	ProductService service;
	
	@GetMapping
	String cart(@SessionAttribute Cart cart, Model model) {
		List<Product> list = service.list(cart.getCart().keySet());
		
		model.addAttribute("list",list);
		
		return "cart";
	}
	
	@ResponseBody
	@GetMapping("/{productId}/{amount}")
	Cart add(@PathVariable Long productId, @PathVariable int amount, 
			@SessionAttribute Member member,
			@SessionAttribute(required=false) Cart cart, 
			HttpSession session) {
		if(cart == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}
		
			cart.setCart(productId, amount);
			
			return cart;
	}

}
