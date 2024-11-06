package kr.ac.kopo.HWLiquor.dao;

import java.lang.reflect.Member;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Member> list() {
		return sql.selectList("member.list");
	}

}
