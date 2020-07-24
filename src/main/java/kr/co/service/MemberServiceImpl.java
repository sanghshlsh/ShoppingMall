package kr.co.service;

<<<<<<< HEAD
import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.domain.MemberDTO;
import kr.co.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService{
	@Inject
	private MemberDAO memberDao;
	
	@Override
	public void insert(MemberDTO dto) {
		// TODO Auto-generated method stub
		
		memberDao.insert(dto);
		
	}

}
=======
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDao;

}
>>>>>>> fetch_head
