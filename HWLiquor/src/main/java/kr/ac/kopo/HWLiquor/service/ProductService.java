package kr.ac.kopo.HWLiquor.service;

import java.util.List;
import java.util.Set;

import kr.ac.kopo.HWLiquor.model.Photo;
import kr.ac.kopo.HWLiquor.model.Product;
import kr.ac.kopo.HWLiquor.pager.Pager;

public interface ProductService {

	List<Product> list(Pager pager);
	
	//index에서 보여주는 리스트
	List<Product> wine(Pager pager);
	
	List<Product> whiskey(Pager pager);

	List<Product> brandy(Pager pager);

	List<Product> liquor(Pager pager);
	
	List<Product> gin(Pager pager);

	void add(Product item);
	
	Photo itemPhoto(Long id);

	Product item(Long id);

	void update(Product item);

	void delete(Long id);

	void deletePhoto(Long id);
		
	//Category detail 부분
	List<Product> wineList(Pager pager);

	List<Product> whiskeyList(Pager pager);

	List<Product> brandyList(Pager pager);

	List<Product> vodkaList(Pager pager);

	List<Product> ginList(Pager pager);

	List<Product> search(Pager pager);

	List<Product> list(Set<Long> keySet);

	Product cartPhoto(Long id);





	

}
