package kr.co.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSession session;
	
	private final String NS = "m.e.m";
	
}