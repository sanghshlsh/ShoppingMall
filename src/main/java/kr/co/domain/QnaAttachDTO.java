package kr.co.domain;

import java.io.Serializable;

public class QnaAttachDTO implements Serializable{

	private static final long serialVersionUID = 1L;
	private int attachNo; //NOM
	private String attachFullName; //fullname
	private String attachRegDate; //regdate
	private int qnaNo; //게시판no
	
	public QnaAttachDTO() {
		// TODO Auto-generated constructor stub
	}

	public QnaAttachDTO(int attachNo, String attachFullName, String attachRegDate, int qnaNo) {
		super();
		this.attachNo = attachNo;
		this.attachFullName = attachFullName;
		this.attachRegDate = attachRegDate;
		this.qnaNo = qnaNo;
	}

	public int getAttachNo() {
		return attachNo;
	}

	public void setAttachNo(int attachNo) {
		this.attachNo = attachNo;
	}

	public String getAttachFullName() {
		return attachFullName;
	}

	public void setAttachFullName(String attachFullName) {
		this.attachFullName = attachFullName;
	}

	public String getAttachRegDate() {
		return attachRegDate;
	}

	public void setAttachRegDate(String attachRegDate) {
		this.attachRegDate = attachRegDate;
	}

	public int getQnaNo() {
		return qnaNo;
	}

	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	

}
