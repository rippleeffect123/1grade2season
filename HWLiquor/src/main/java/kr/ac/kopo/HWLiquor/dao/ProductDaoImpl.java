package kr.ac.kopo.HWLiquor.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

}
