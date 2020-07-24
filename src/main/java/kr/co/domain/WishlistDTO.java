package kr.co.domain;

import java.io.Serializable;

public class WishlistDTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int wishNo; //no
	
	public WishlistDTO() {
		// TODO Auto-generated constructor stub
	}

	public WishlistDTO(int wishNo) {
		super();
		this.wishNo = wishNo;
	}

	public int getWishNo() {
		return wishNo;
	}

	public void setWishNo(int wishNo) {
		this.wishNo = wishNo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
