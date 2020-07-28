package kr.co.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.domain.MemberDTO;

@Repository
public class MemberDAOImpl  implements MemberDAO{

	@Autowired
	private SqlSession session;
	
	private final String NS = "m.e.m";

	@Override
	public void insert(MemberDTO dto) {
		session.insert(NS+ ".insert", dto);
		
	}
	


}

