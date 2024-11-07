package kr.ac.kopo.HWLiquor.dao;

import java.util.List;

import kr.ac.kopo.HWLiquor.model.Photo;
import kr.ac.kopo.HWLiquor.model.Product;
import kr.ac.kopo.HWLiquor.pager.Pager;

public interface ProductDao {

	List<Product> list(Pager pager);

	int total(Pager pager);

	void add(Product item);
	
	void addPhoto(Photo photo);

	Photo itemPhoto(Long id);

	Product item(Long id);

	void update(Product item);
	
	void delete(Long id);
	
	void deletePhotos(Long id);

	void deletePhoto(Long id);



}
