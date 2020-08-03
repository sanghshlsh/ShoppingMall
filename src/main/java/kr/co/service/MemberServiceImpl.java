package kr.co.service;


import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.domain.MemberDTO;
import kr.co.domain.PageTO;
import kr.co.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService{
	@Inject
	private MemberDAO memberDao;
	
	@Autowired
	private MemberDAO mDao;
	
	@Override
	public void insert(MemberDTO dto) {
		// TODO Auto-generated method stub
		
		memberDao.insert(dto);
		
	}

	@Override
	public PageTO<MemberDTO> list(PageTO<MemberDTO> mto) {
		// TODO Auto-generated method stub
		return mDao.list(mto);
	}

	@Override
	public List<MemberDTO> list() {
		// TODO Auto-generated method stub
		return mDao.list();
	}

	@Override
	public MemberDTO read(int memberno) {
		// TODO Auto-generated method stub
		return mDao.read(memberno);
	}

	@Override
	public void update(MemberDTO to) {
		// TODO Auto-generated method stub
		mDao.update(to);
	}

	@Override
	public MemberDTO updateUI(int memberno) {
		// TODO Auto-generated method stub
		return mDao.updateUI(memberno);
	}

	@Override
	public void delete(int memberno) {
		// TODO Auto-generated method stub	
		mDao.delete(memberno);
	}

	@Override
	public List<MemberDTO> searchlist(String searchType, String keyword) {
		// TODO Auto-generated method stub
		return mDao.searchlist(searchType, keyword);
	}

}