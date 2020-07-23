package kr.co.domain;

import java.io.Serializable;
import java.util.List;

public class ProductDTO implements Serializable {

	private static final long serialVersionUID = 1L;
	private int productNo; // 상품번호
	private String productName; // 상품이름
	private int productPrice; // 가격
	private int productDiscountRate; // 가격할인율
	private String productSet; // 세트
	private int isDelete; // 삭제 여부
	private int sellStatus; // 판매상태
	private List<ProductOptionDTO> optList;
	
	public ProductDTO() {

	}
	
	public ProductDTO(int productNo, String productName, int productPrice, int productDiscountRate, String productSet,
			int isDelete, int sellStatus, List<ProductOptionDTO> optList) {
		super();
		this.productNo = productNo;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productDiscountRate = productDiscountRate;
		this.productSet = productSet;
		this.isDelete = isDelete;
		this.sellStatus = sellStatus;
		this.optList = optList;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public int getProductDiscountRate() {
		return productDiscountRate;
	}

	public void setProductDiscountRate(int productDiscountRate) {
		this.productDiscountRate = productDiscountRate;
	}

	public String getProductSet() {
		return productSet;
	}

	public void setProductSet(String productSet) {
		this.productSet = productSet;
	}

	public int getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}

	public int getSellStatus() {
		return sellStatus;
	}

	public void setSellStatus(int sellStatus) {
		this.sellStatus = sellStatus;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public List<ProductOptionDTO> getOptList() {
		return optList;
	}

	public void setOptList(List<ProductOptionDTO> optList) {
		this.optList = optList;
	}
	
	

}