package kr.ac.kopo.HWLiquor.dao;

import java.util.List;

import kr.ac.kopo.HWLiquor.model.Orders;
import kr.ac.kopo.HWLiquor.model.OrdersDetail;

public interface OrdersDao {

	void add(Orders item);

	void addDetail(OrdersDetail detail);

	Orders item(Long id);

	Orders item(Long id, String memberId);

	List<Orders> list();

	List<Orders> list(String memberId);

}
