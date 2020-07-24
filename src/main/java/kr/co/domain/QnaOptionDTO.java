package kr.co.domain;

import java.io.Serializable;

public class QnaOptionDTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String qnaTitle;
	private String qnaContent;
	private int isDelete;
	
	public QnaOptionDTO() {
		// TODO Auto-generated constructor stub
	}

	public QnaOptionDTO(String qnaTitle, String qnaContent, int isDelete) {
		super();
		this.qnaTitle = qnaTitle; //제목
		this.qnaContent = qnaContent; //내용
		this.isDelete = isDelete; //삭제여부
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
