package kr.ac.kopo.HWLiquor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.HWLiquor.dao.OrdersDao;
import kr.ac.kopo.HWLiquor.model.Orders;
import kr.ac.kopo.HWLiquor.model.OrdersDetail;

@Service
public class OrdersServiceImpl implements OrdersService {
	
	@Autowired
	OrdersDao dao;
	
	@Override
	@Transactional
	public void order(Orders item) {
		dao.add(item);
		
		for(OrdersDetail detail : item.getDetails()) {
			detail.setOrdersId(item.getId());
			
			dao.addDetail(detail);
		}

	}

	@Override
	public Orders item(Long id) {
		return dao.item(id);
	}

	@Override
	public Orders item(Long id, String memberId) {
		return dao.item(id, memberId);
	}

	@Override
	public List<Orders> list() {
		return dao.list();
	}

	@Override
	public List<Orders> list(String memberId) {
		return dao.list(memberId);
	}

}
