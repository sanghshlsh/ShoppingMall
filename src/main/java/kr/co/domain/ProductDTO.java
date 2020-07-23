package kr.co.domain;

import java.io.Serializable;
import java.util.List;

public class ProductDTO implements Serializable {

	private static final long serialVersionUID = 1L;

	private int productNo; //상품번호
	private String productName; //상품이름
	private int productPrice; //가격
	private int productDiscountRate; //가격할인율
	private String productSet; //세트
	private int isDelete; //삭제 여부
	private int sellStatus; //판매상태
	private String[] files; //첨부파일
	private List<ProductOptionDTO> plist; //상품옥션


	public ProductDTO() {

	}
	
	public ProductDTO(int productNo, String productName, int productPrice, int productDiscountRate, String productSet,
			int isDelete, int sellStatus, String[] files, List<ProductOptionDTO> plist) {
		super();
		this.productNo = productNo;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productDiscountRate = productDiscountRate;
		this.productSet = productSet;
		this.isDelete = isDelete;
		this.sellStatus = sellStatus;
		this.files = files;
		this.plist = plist;
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

	public String[] getFiles() {
		return files;
	}

	public void setFiles(String[] files) {
		this.files = files;
	}

	public List<ProductOptionDTO> getPlist() {
		return plist;
	}

	public void setPlist(List<ProductOptionDTO> plist) {
		this.plist = plist;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}	
		
}

