package kr.co.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.domain.PageTO;
import kr.co.domain.QnaDTO;

@Repository
public class CustomerServiceDAOImpl implements CustomerServiceDAO{

	@Autowired
	private SqlSession session;
	
	private final String NS = "c.u.s";

	@Override
	public void insert(QnaDTO qdto) {
		Integer qnaNo = session.selectOne(NS+".getQnaNo");
		if (qnaNo != null) {
			qnaNo += 1;
		} else {
			qnaNo = 1;
		}
		qdto.setQnaNo(qnaNo);
		
		session.insert(NS +".insert", qdto);
		
	}

	@Override
	public void addAttach(String fullName, int qnaNo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public PageTO<QnaDTO> list(PageTO<QnaDTO> to) {
		
		RowBounds rowBounds = new RowBounds(to.getStartNum() -1, to.getPerPage());
		
		List<QnaDTO> list = session.selectList(NS + ".list", null, rowBounds);
		
		Integer amount = session.selectOne(NS+".getAmount");
		if (amount != null) {
			to.setAmount(amount);
		} else {
			to.setAmount(0);
		}
		
		return to;
	}

	@Override
	public void increaseViewcnt(int qnaNo) {
		
		session.update(NS+".increaseViewcnt", qnaNo);
	}

	@Override
	public QnaDTO read(int qnaNo) {
		
		return session.selectOne(NS+".read", qnaNo);
	}

	@Override
	public void update(QnaDTO qdto) {
		
		session.update(NS+".update", qdto);
	}
	
	@Override
	public QnaDTO updateUi(int qnaNo) {
	
		return session.selectOne(NS+".updateUI", qnaNo);
	}

	@Override
	public void deleteByQnaNo(int qnaNo) {
		
		session.delete(NS+".deleteByBno", qnaNo);
	}

	@Override
	public void delete(int qnaNo) {
		
		session.delete(NS+".delete", qnaNo);
	}

	@Override
	public List<QnaDTO> searchlist(String searchType, String keyword) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchType", searchType);
		map.put("keyword", keyword);
		return session.selectList(NS+".searchlist", map);
	}

	@Override
	public void updateAttach(String fullName, int qnaNo) {
		Integer id = session.selectOne(NS+".getId");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("fullName", fullName);
		map.put("qnaNo", qnaNo);
		session.update(NS+"updateAttach", map);
	}

	@Override
	public List<QnaDTO> list() {
		
		return session.selectList(NS+".list");
	}

	@Override
	public List<String> getAttach(Integer qnaNo) {
		
		return session.selectList(NS+".getAttach", qnaNo);
	}

	@Override
	public void deleteAttachByFileName(String filename) {
		
		session.delete(NS+".deleteByFileName", filename);
	}

}
