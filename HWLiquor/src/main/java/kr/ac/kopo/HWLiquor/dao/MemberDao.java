package kr.ac.kopo.HWLiquor.dao;

import java.util.List;

import kr.ac.kopo.HWLiquor.model.Member;
import kr.ac.kopo.HWLiquor.pager.Pager;

public interface MemberDao {

	List<Member> list(Pager pager);

	void add(Member item);

	Member item(String id);

	void update(Member item);

	void delete(String id);

	int total(Pager pager);

}
