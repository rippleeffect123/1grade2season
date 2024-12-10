package kr.ac.kopo.HWLiquor.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.HWLiquor.model.Cart;
import kr.ac.kopo.HWLiquor.model.Member;
import kr.ac.kopo.HWLiquor.model.Orders;
import kr.ac.kopo.HWLiquor.model.OrdersDetail;
import kr.ac.kopo.HWLiquor.service.OrdersService;

@Controller
@RequestMapping("/orders")
public class OrdersController {
	final String path = "orders/";
	
	@Autowired
	OrdersService service;
	
	@GetMapping
	String order(@SessionAttribute Member member,@SessionAttribute Cart cart) {
		Orders item = new Orders();
		
		item.setMemberId(member.getId());
		
		Map<Long, Integer> map = cart.getCart();
		ArrayList<OrdersDetail> details = new ArrayList<OrdersDetail>();
		
		for(Long productId : map.keySet()) {
			OrdersDetail detail = new OrdersDetail();
			
			detail.setProductId(productId);
			detail.setAmount(map.get(productId));
			
			details.add(detail);
		}
		
		item.setDetails(details);
		
		service.order(item);
		
		return "redirect:/orders/" + item.getId();
	}
	
	@GetMapping("/{id}")
	String view(@PathVariable Long id, @SessionAttribute Member member, Model model) {
		Orders item = service.item(id, member.getId());
		
		model.addAttribute("item", item);
		
		return path + "view";
	}
	
	@GetMapping("/list")
	String list(@SessionAttribute Member member, Model model) {
		List<Orders> list = service.list(member.getId());
		
		model.addAttribute("list", list);
		
		return path + "list";
		
	}
}
