package kr.ac.kopo.HWLiquor.service;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.HWLiquor.dao.MemberDao;
import kr.ac.kopo.HWLiquor.model.Member;
import kr.ac.kopo.HWLiquor.pager.Pager;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> list(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.list(pager);
		
		
	}
	
	@Override
	public void add(Member item) {
		dao.add(item);
		
	}
	
	@Override
	public Member item(String id) {
		return dao.item(id);
	}

	@Override
	public void update(Member item) {
		dao.update(item);
	}

	@Override
	public void delete(String id) {
		dao.delete(id);
		
	}

	@Override
	public void signup(Member item) {
		item.setRole(1);
		item.setPoints(0);
		
		dao.add(item);
	}

	@Override
	public boolean isUnique(String id) {
		if(dao.item(id) == null)
			return true;
		
		return false;
	}

	@Override
	public boolean login(Member item) {
		Member member = dao.item(item.getId());
		
		if(member != null) {
			if(item.getPasswd().equals(member.getPasswd() )) {
				BeanUtils.copyProperties(member, item);
				item.setPasswd(null);
				
				return true;
			}
		}
		return false;
	}





	
}
