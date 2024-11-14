package kr.ac.kopo.HWLiquor.service;

import java.util.List;

import kr.ac.kopo.HWLiquor.model.Member;
import kr.ac.kopo.HWLiquor.pager.Pager;

public interface MemberService {

	List<Member> list(Pager pager);

	void signup(Member item);

	void add(Member item);

	Member item(String id);

	void update(Member item);

	boolean isUnique(String id);

	void delete(String id);

	boolean login(Member item);

}
