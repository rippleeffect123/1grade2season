package kr.ac.kopo.polycafe.service;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.polycafe.dao.ProductDao;
import kr.ac.kopo.polycafe.model.Photo;
import kr.ac.kopo.polycafe.model.Product;
import kr.ac.kopo.polycafe.pager.Pager;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	ProductDao dao;

	@Override
	public List<Product> list(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.list(pager);
	}

	@Transactional
	@Override
	public void add(Product item) {		
		dao.add(item);
		
		if(item.getPhoto() != null)
			for(Photo photo : item.getPhoto()) {
				photo.setProductId(item.getId());			
				dao.addPhoto(photo);
			}
	}

	@Override
	public Product item(Long id) {
		Product product = dao.item(id);		
		return product;
	}

	@Transactional
	@Override
	public void update(Product item) {
		dao.update(item);		
		
		if(item.getPhoto() != null)
			for(Photo photo : item.getPhoto()) {
				photo.setProductId(item.getId());			
				dao.addPhoto(photo);
			}
	}

	@Transactional
	@Override
	public void delete(Long id) {
		dao.deletePhotos(id);
		
		dao.delete(id);		
	}

	@Override
	public void dummy(String id) {
		for(int i=1; i < 100; i++) {
			Product item = new Product();
			
			item.setName("제품명 " + i);
			item.setNameEng("ProductName " + i);
			item.setBrand("브랜드 " + i);
			item.setPrice(1000 * i);
			
			
			dao.add(item);
		}
	}

	@Transactional
	@Override
	public void init() {
		Pager pager = new Pager();
		pager.setPerPage(0);
		
		List<Product> list = dao.list(pager);
		
		for(Product item : list)
			delete(item.getId());
	}

	@Override
	public void deletePhoto(Long id) {
		dao.deletePhoto(id);		
	}

	@Override
	public Photo itemPhoto(Long id) {
		return dao.itemPhoto(id);
	}

	@Override
	public List<Product> list(Set<Long> keySet) {
		return dao.list(keySet);
	}

}
