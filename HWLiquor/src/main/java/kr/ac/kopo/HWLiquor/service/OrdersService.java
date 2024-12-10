package kr.ac.kopo.HWLiquor.service;

import java.util.List;

import kr.ac.kopo.HWLiquor.model.Orders;

public interface OrdersService {

	void order(Orders item);
	
	Orders item(Long id);
	
	Orders item(Long id, String memberId);
	
	List<Orders> list();
	
	List<Orders> list(String memberId);

}
