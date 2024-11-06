package kr.ac.kopo.HWLiquor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.HWLiquor.dao.ProductDao;
import kr.ac.kopo.HWLiquor.model.Product;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	ProductDao dao;

	@Override
	public List<Product> list() {
		return dao.list();
	}

}
