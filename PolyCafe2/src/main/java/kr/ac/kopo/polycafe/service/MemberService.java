package kr.ac.kopo.polycafe.service;

import java.util.List;

import kr.ac.kopo.polycafe.model.Member;

public interface MemberService {

	List<Member> list();

	void add(Member item);

	Member item(String id);

	void update(Member item);

	void delete(String id);

	boolean login(Member item);

	void signup(Member item);

	boolean isUnique(String id);

}
