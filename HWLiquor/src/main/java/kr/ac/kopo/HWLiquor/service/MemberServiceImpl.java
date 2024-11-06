package kr.ac.kopo.HWLiquor.service;

import java.lang.reflect.Member;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.HWLiquor.dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> list() {
		return dao.list();
	}

}
