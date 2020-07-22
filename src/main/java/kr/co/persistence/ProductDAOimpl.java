package kr.co.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAOimpl implements ProductDAO {

	@Autowired
	private SqlSession session;
	
	private final String NS = "p.r.o";
	
}
