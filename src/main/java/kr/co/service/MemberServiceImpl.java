package kr.co.service;

import org.springframework.beans.factory.annotation.Autowired;

import kr.co.persistence.MemberDAO;

public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDao;

}