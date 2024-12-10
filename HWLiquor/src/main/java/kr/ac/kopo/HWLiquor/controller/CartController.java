package kr.ac.kopo.HWLiquor.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.HWLiquor.model.Cart;
import kr.ac.kopo.HWLiquor.model.Member;
import kr.ac.kopo.HWLiquor.model.Product;
import kr.ac.kopo.HWLiquor.service.ProductService;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	@Autowired
	ProductService service;
	
	@GetMapping
	String cart(@SessionAttribute(required=false) Cart cart, Model model) {
		if(cart == null)
			cart = new Cart();
		
		List<Product> list = new ArrayList<Product>();
		Map<Long, Integer> like = cart.getCart();
		
		for (Long productId : like.keySet()) {
			System.out.println("상품 번호 " + productId);
			Product item = service.item(productId);
			list.add(item);
		}
		
		model.addAttribute("list", list);
		
		return "cart";
		
	}
	
	@ResponseBody
	@GetMapping("/{productId}/{amount}")
	Cart add(@PathVariable Long productId, @PathVariable int amount, @SessionAttribute Member member, @SessionAttribute(required=false) Cart cart, HttpSession session) {
		if(cart == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
	}
		cart.setCart(productId, amount);
		
		return cart;
	}
	
	@ResponseBody
	@DeleteMapping("/{productId}")
	void delete(@PathVariable Long productId, @SessionAttribute Cart cart) {
		cart.delete(productId);
	}
}