package kr.ac.kopo.polycafe.dao;

import java.util.List;
import java.util.Set;

import kr.ac.kopo.polycafe.model.Photo;
import kr.ac.kopo.polycafe.model.Product;
import kr.ac.kopo.polycafe.pager.Pager;

public interface ProductDao {

	List<Product> list(Pager pager);

	void add(Product item);

	Product item(Long id);

	void update(Product item);

	void delete(Long id);

	int total(Pager pager);

	void addPhoto(Photo photo);

	List<Photo> getPhoto(Long id);

	void deletePhotos(Long id);

	void deletePhoto(Long id);

	Photo itemPhoto(Long id);

	List<Product> list(Set<Long> keySet);

}
