package kr.co.persistence;

import java.util.List;

import kr.co.domain.PageTO;
import kr.co.domain.QnaDTO;

public interface CustomerServiceDAO {

	void insert(QnaDTO qdto);

	void addAttach(String fullName, int qnaNo);
	
	void updateAttach(String fullName, int qnaNo);
	
	List<QnaDTO> list();

	QnaDTO read(int qnaNo);
	
	void increaseViewcnt(int qnaNo);

	QnaDTO updateUi(int qnaNo);

	void update(QnaDTO qdto);

	void delete(int qnaNo);

	PageTO<QnaDTO> list(PageTO<QnaDTO> to);

	List<QnaDTO> searchlist(String searchType, String keyword);

	List<String> getAttach(Integer qnaNo);

	void deleteAttachByFileName(String filename);

	void deleteByQnaNo(int qnaNo);

}
