package kr.co.domain;

import java.io.Serializable;

public class AttachDTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int attachNo; //NOM
	private String attachFullName; //fullname
	private String attachRegDate; //regdate
	
	public AttachDTO() {
		// TODO Auto-generated constructor stub
	}

	public AttachDTO(int attachNo, String attachFullName, String attachRegDate) {
		super();
		this.attachNo = attachNo;
		this.attachFullName = attachFullName;
		this.attachRegDate = attachRegDate;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	

}
