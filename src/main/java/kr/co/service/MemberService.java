package kr.co.service;

import java.util.List;


import kr.co.domain.MemberDTO;
import kr.co.domain.PageTO;

public interface MemberService {

    void insert(MemberDTO dto);

	PageTO<MemberDTO> list(PageTO<MemberDTO> mto);

    List<MemberDTO> list();

	MemberDTO read(int memberno);

	void update(MemberDTO to);

	MemberDTO updateUI(int bno);

	void delete(int memberno);

	List<MemberDTO> searchlist(String searchType, String keyword);

	int idcheck(MemberDTO dto);

	
}
