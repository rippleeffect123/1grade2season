package kr.ac.kopo.polycafe.service;

import java.util.List;
import java.util.Set;

import kr.ac.kopo.polycafe.model.Photo;
import kr.ac.kopo.polycafe.model.Product;
import kr.ac.kopo.polycafe.pager.Pager;

public interface ProductService {

	List<Product> list(Pager pager);

	void add(Product item);

	Product item(Long id);

	void update(Product item);

	void delete(Long id);

	void dummy(String id);

	void init();

	void deletePhoto(Long id);

	Photo itemPhoto(Long id);

	List<Product> list(Set<Long> keySet);

}
