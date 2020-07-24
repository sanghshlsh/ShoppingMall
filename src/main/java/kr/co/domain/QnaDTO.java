package kr.co.domain;

import java.io.Serializable;

public class QnaDTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int qnaNo; //no
	private String qnaTitle; //제목
	private String qnaContent; //내용
	private String qnaRegDate; //작성일자
	private int qnaReadCnt; //조회수
	private int isDelete; //삭제여부

	public QnaDTO() {
		// TODO Auto-generated constructor stub
	}

	public QnaDTO(int qnaNo, String qnaTitle, String qnaContent, String qnaRegDate, int qnaReadCnt, int isDelete) {
		super();
		this.qnaNo = qnaNo;
		this.qnaTitle = qnaTitle;
		this.qnaContent = qnaContent;
		this.qnaRegDate = qnaRegDate;
		this.qnaReadCnt = qnaReadCnt;
		this.isDelete = isDelete;
	}

	public int getQnaNo() {
		return qnaNo;
	}

	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getQnaContent() {
		return qnaContent;
	}

	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}

	public String getQnaRegDate() {
		return qnaRegDate;
	}

	public void setQnaRegDate(String qnaRegDate) {
		this.qnaRegDate = qnaRegDate;
	}

	public int getQnaReadCnt() {
		return qnaReadCnt;
	}

	public void setQnaReadCnt(int qnaReadCnt) {
		this.qnaReadCnt = qnaReadCnt;
	}

	public int getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
