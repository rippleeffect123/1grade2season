package kr.ac.kopo.HWLiquor.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.HWLiquor.model.Member;
import kr.ac.kopo.HWLiquor.pager.Pager;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Member> list(Pager pager) {
		return sql.selectList("member.list", pager);
	}

	@Override
	public void add(Member item) {
		sql.insert("member.add", item);
		
	}

	@Override
	public Member item(String id) {
		return sql.selectOne("member.item", id);
	}

	@Override
	public void update(Member item) {
		sql.update("member.update", item);
		
	}

	@Override
	public void delete(String id) {
		sql.delete("member.delete", id);
		
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("member.total", pager);
	}

}
