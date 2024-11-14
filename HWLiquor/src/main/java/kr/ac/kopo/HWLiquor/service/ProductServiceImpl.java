package kr.ac.kopo.HWLiquor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.HWLiquor.dao.ProductDao;
import kr.ac.kopo.HWLiquor.model.Photo;
import kr.ac.kopo.HWLiquor.model.Product;
import kr.ac.kopo.HWLiquor.pager.Pager;

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

		if (item.getPhoto() != null)
			for (Photo photo : item.getPhoto()) {
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

		if (item.getPhoto() != null)
			for (Photo photo : item.getPhoto()) {
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
	public void deletePhoto(Long id) {
		dao.deletePhoto(id);

	}

	@Override
	public Photo itemPhoto(Long id) {
		return dao.itemPhoto(id);
	}

	//인덱스에서 보여주는 상품리스트
	@Override
	public List<Product> wine(Pager pager) {
		int total = dao.total(pager);

		pager.setTotal(total);

		pager.setPerPage(0);

		return dao.wine(pager);
	}

	@Override
	public List<Product> whiskey(Pager pager) {
		int total = dao.total(pager);

		pager.setTotal(total);

		pager.setPerPage(0);

		return dao.whiskey(pager);
	}

	@Override
	public List<Product> brandy(Pager pager) {
		int total = dao.total(pager);

		pager.setTotal(total);

		pager.setPerPage(0);

		return dao.brandy(pager);
	}

	@Override
	public List<Product> liquor(Pager pager) {
		int total = dao.total(pager);

		pager.setTotal(total);

		pager.setPerPage(0);

		return dao.liquor(pager);
	}

	@Override
	public List<Product> gin(Pager pager) {
		int total = dao.total(pager);

		pager.setTotal(total);

		pager.setPerPage(0);
		
		return dao.gin(pager);
	}

	//카테고리 상세 페이지 부분	

	@Override
	public List<Product> wineList(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal(total);
		return dao.wineList(pager);
	}

}
