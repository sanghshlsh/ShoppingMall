package kr.co.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.PageTO;
import kr.co.domain.QnaAttachDTO;
import kr.co.domain.QnaDTO;
import kr.co.persistence.CustomerServiceDAO;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	private CustomerServiceDAO pcDao;
	
	
	@Transactional
	@Override
	public void insert(QnaDTO qdto) {
		pcDao.insert(qdto);
		
		String[] files = qdto.getFiles();
		if (files!=null) {
			for(String fullName : files) {
				pcDao.addAttach(fullName, qdto.getQnaNo());
			}
		}
	}
	
	public List<QnaDTO> list() {
		
		return pcDao.list();
	}

	@Transactional
	@Override
	public QnaDTO read(int qnaNo) {
		pcDao.increaseViewcnt(qnaNo);
		return pcDao.read(qnaNo);
	}
	
	@Override
	public QnaDTO updateUI(int qnaNo) {
		
		return pcDao.updateUi(qnaNo);
	}

	@Transactional
	@Override
	public void update(QnaDTO qdto) {
		pcDao.update(qdto);
		
		pcDao.deleteByQnaNo(qdto.getQnaNo());
		
		String[] files = qdto.getFiles();
		if(files != null) {
			for(String fullName : files) {
				pcDao.addAttach(fullName, qdto.getQnaNo());
			}
		}
	}


	@Transactional
	@Override
	public void delete(int qnaNo) {
		
		pcDao.delete(qnaNo);
		pcDao.deleteByQnaNo(qnaNo);
	}

	@Override
	public PageTO<QnaDTO> list(PageTO<QnaDTO> to) {
		
		return pcDao.list(to);
	}
	@Override
	public List<QnaDTO> searchlist(String searchType, String keyword) {
		
		return pcDao.searchlist(searchType, keyword);
	}

	@Override
	public List<String> getAttach(Integer qnaNo) {
		
		return pcDao.getAttach(qnaNo);
	}

	@Override
	public void deleteAttachByFileName(String filename) {
		
		pcDao.deleteAttachByFileName(filename);
	}
}
