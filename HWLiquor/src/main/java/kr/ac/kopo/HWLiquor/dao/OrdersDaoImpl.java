package kr.ac.kopo.HWLiquor.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.HWLiquor.model.Orders;
import kr.ac.kopo.HWLiquor.model.OrdersDetail;

@Repository
public class OrdersDaoImpl implements OrdersDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Orders item) {
		sql.insert("orders.add", item);
	}

	@Override
	public void addDetail(OrdersDetail detail) {
		sql.insert("orders.add_detail", detail);
	}

	@Override
	public Orders item(Long id) {
		return sql.selectOne("orders.item", id);
	}

	@Override
	public Orders item(Long id, String memberId) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("id", id);
		map.put("memberId", memberId);
		
		return sql.selectOne("orders.item_member", map);
	}

	@Override
	public List<Orders> list() {
		return sql.selectList("orders.list");
	}

	@Override
	public List<Orders> list(String memberId) {
		return sql.selectList("orders.list_member", memberId);
	}

}
