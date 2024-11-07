package kr.ac.kopo.HWLiquor.service;

import java.util.List;

import kr.ac.kopo.HWLiquor.model.Photo;
import kr.ac.kopo.HWLiquor.model.Product;
import kr.ac.kopo.HWLiquor.pager.Pager;

public interface ProductService {

	List<Product> list(Pager pager);

	void add(Product item);
	
	Photo itemPhoto(Long id);

	Product item(Long id);

	void update(Product item);

	void delete(Long id);

	void deletePhoto(Long id);

}
