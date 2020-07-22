package kr.co.domain;

import java.io.Serializable;

public class CartDTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int cartNo; //no
	private int cartAmount; //수량
	
	public CartDTO() {
		// TODO Auto-generated constructor stub
	}

	public CartDTO(int cartNo, int cartAmount) {
		super();
		this.cartNo = cartNo;
		this.cartAmount = cartAmount;
	}

	public int getCartNo() {
		return cartNo;
	}

	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}

	public int getCartAmount() {
		return cartAmount;
	}

	public void setCartAmount(int cartAmount) {
		this.cartAmount = cartAmount;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	

}
