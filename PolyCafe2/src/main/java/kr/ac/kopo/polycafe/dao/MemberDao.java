package kr.ac.kopo.polycafe.dao;

import java.util.List;

import kr.ac.kopo.polycafe.model.Member;

public interface MemberDao {

	List<Member> list();

	void add(Member item);

	Member item(String id);

	void update(Member item);

	void delete(String id);

}
