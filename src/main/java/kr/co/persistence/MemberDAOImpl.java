package kr.co.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

<<<<<<< HEAD
import kr.co.domain.MemberDTO;

@Repository
public class MemberDAOImpl  implements MemberDAO{
=======
@Repository
public class MemberDAOImpl implements MemberDAO {
>>>>>>> fetch_head
	
	@Autowired
	private SqlSession session;
	
<<<<<<< HEAD
	private final String NS = "p.r.o";

	@Override
	public void insert(MemberDTO dto) {
		// TODO Auto-generated method stub
		session.insert(NS+ ".insert", dto);
		
	}
	


}
=======
	private final String NS = "m.e.m";
	
}
>>>>>>> fetch_head
