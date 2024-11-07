package kr.ac.kopo.HWLiquor.dao;

import java.util.List;

import kr.ac.kopo.HWLiquor.model.Member;

public interface MemberDao {

	List<Member> list();

	void add(Member item);

	Member item(String id);

	void update(Member item);

	void delete(String id);

}
