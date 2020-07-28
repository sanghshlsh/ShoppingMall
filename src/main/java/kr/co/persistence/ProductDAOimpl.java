package kr.co.persistence;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.domain.ProductDTO;

@Repository
public class ProductDAOimpl implements ProductDAO {

	@Autowired
	private SqlSession session;
	
	private final String NS = "p.r.o";

	@Override
	public void insert(ProductDTO pdto) {
		// TODO Auto-generated method stub
		session.insert(NS+".insert", pdto);
	}

	@Override
	public Map list() {
		// TODO Auto-generated method stub
		return session.selectOne(NS+".list");
	}

	
	
}