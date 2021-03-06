package kr.co.service;

import java.util.List;

import kr.co.domain.FaqDTO;
import kr.co.domain.NoticeDTO;
import kr.co.domain.QnaDTO;
import kr.co.domain.ReviewDTO;

public interface ManageService {

	List<ReviewDTO> reviewBoardList(List<ReviewDTO> reviewDto);

	List<NoticeDTO> noticeBoardList(List<NoticeDTO> noticeDto);

	List<FaqDTO> faqBoardList(List<FaqDTO> faqDto);

	List<QnaDTO> qnaBoardList(List<QnaDTO> qnaDto);





}