package kr.ac.kopo.HWLiquor.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.HWLiquor.model.Photo;
import kr.ac.kopo.HWLiquor.model.Product;
import kr.ac.kopo.HWLiquor.pager.Pager;

@Repository
public class ProductDaoImpl implements ProductDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Product> list(Pager pager){
		return sql.selectList("product.list", pager);
	}



	@Override
	public int total(Pager pager) {
		return sql.selectOne("product.total", pager);
	}



	@Override
	public void add(Product item) {
		sql.insert("product.add", item);
		
	}



	@Override
	public void addPhoto(Photo photo) {
		sql.insert("product.add_photo", photo);
		
	}



	@Override
	public Photo itemPhoto(Long id) {
		return sql.selectOne("product.item_photo", id);
	}



	@Override
	public Product item(Long id) {
		return sql.selectOne("product.item", id);
	}



	@Override
	public void update(Product item) {
		sql.update("product.update", item);
		
	}



	@Override
	public void delete(Long id) {
		sql.delete("product.delete", id);
	}



	@Override
	public void deletePhotos(Long id) {
		sql.delete("product.delete_photos", id);
		
	}



	@Override
	public void deletePhoto(Long id) {
		sql.delete("product.delete_photo",id);
		
	}



	@Override
	public List<Product> wine(Pager pager) {
		return sql.selectList("product.wine", pager);
	}



	@Override
	public List<Product> whiskey(Pager pager) {
		return sql.selectList("product.whiskey", pager);
	}



	@Override
	public List<Product> brandy(Pager pager) {
		return sql.selectList("product.brandy", pager);
	}



	@Override
	public List<Product> liquor(Pager pager) {
		return sql.selectList("product.liquor", pager);
	}



	@Override
	public List<Product> gin(Pager pager) {
		return sql.selectList("product.gin", pager);
	}

	//카테고리 디테일 부분

	@Override
	public List<Product> wineList(Pager pager) {
		return sql.selectList("product.wine", pager);    
	}



	@Override
	public List<Product> whiskeyList(Pager pager) {
		return sql.selectList("product.whiskey", pager);
	}



	@Override
	public List<Product> brandyList(Pager pager) {
		return sql.selectList("product.brandy", pager);
	}



	@Override
	public List<Product> vodkaList(Pager pager) {
		return sql.selectList("product.liquor", pager);
	}



	@Override
	public List<Product> ginList(Pager pager) {
		return sql.selectList("product.gin", pager);
	}



	@Override
	public List<Product> search(Pager pager) {
		return sql.selectList("product.search-bar", pager);
	}




}
