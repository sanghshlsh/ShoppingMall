package kr.co.service;

import java.util.List;

import kr.co.domain.PageTO;
import kr.co.domain.QnaDTO;

public interface CustomerService {
	void insert(QnaDTO qdto);

	PageTO<QnaDTO> list(PageTO<QnaDTO> to);

	QnaDTO read(int qnaNo);

	QnaDTO updateUI(int qnaNo);

	void update(QnaDTO qdto);

	void delete(int qnaNo);

	List<QnaDTO> searchlist(String searchType, String keyword);
	
	List<String> getAttach(Integer qnaNo);
	
	void deleteAttachByFileName(String filename);

}
