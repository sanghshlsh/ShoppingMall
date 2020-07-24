package kr.co.domain;

import java.io.Serializable;

public class MemberDTO implements Serializable {

	private static final long serialVersionUID = 1L;
	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberZipcode; // 우편
	private String memberAddress_1; // 주소
	private String memberAddress_2; // 상세주소
	private String memberTel; // 일반전화
	private String memberPhone; // 핸드폰
	private String memberPetName;
	private int memberPetAge;
	private String memberHolder; // 예금주
	private String memberAccount; // 계좌번호
	private String memberBank; // 은행
	private String memberRegDate; // 가입일
	private String memberEmail; // 이메일
	private int memberAcceptedEmail; // 이메일수신동의
	private int memberAcceptedSns; // SNS수신동의
	private int isDelete; // 삭제여부
	private int memberGrade; // 등급

	public MemberDTO() {

	}

	public MemberDTO(String memberId, String memberPw, String memberName, String memberZipcode, String memberAddress_1,
			String memberAddress_2, String memberTel, String memberPhone, String memberPetName, int memberPetAge,
			String memberHolder, String memberAccount, String memberBank, String memberRegDate, String memberEmail,
			int memberAcceptedEmail, int memberAcceptedSns, int isDelete, int memberGrade) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		this.memberZipcode = memberZipcode;
		this.memberAddress_1 = memberAddress_1;
		this.memberAddress_2 = memberAddress_2;
		this.memberTel = memberTel;
		this.memberPhone = memberPhone;
		this.memberPetName = memberPetName;
		this.memberPetAge = memberPetAge;
		this.memberHolder = memberHolder;
		this.memberAccount = memberAccount;
		this.memberBank = memberBank;
		this.memberRegDate = memberRegDate;
		this.memberEmail = memberEmail;
		this.memberAcceptedEmail = memberAcceptedEmail;
		this.memberAcceptedSns = memberAcceptedSns;
		this.isDelete = isDelete;
		this.memberGrade = memberGrade;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPw() {
		return memberPw;
	}

	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberZipcode() {
		return memberZipcode;
	}

	public void setMemberZipcode(String memberZipcode) {
		this.memberZipcode = memberZipcode;
	}

	public String getMemberAddress_1() {
		return memberAddress_1;
	}

	public void setMemberAddress_1(String memberAddress_1) {
		this.memberAddress_1 = memberAddress_1;
	}

	public String getMemberAddress_2() {
		return memberAddress_2;
	}

	public void setMemberAddress_2(String memberAddress_2) {
		this.memberAddress_2 = memberAddress_2;
	}

	public String getMemberTel() {
		return memberTel;
	}

	public void setMemberTel(String memberTel) {
		this.memberTel = memberTel;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public String getMemberPetName() {
		return memberPetName;
	}

	public void setMemberPetName(String memberPetName) {
		this.memberPetName = memberPetName;
	}

	public int getMemberPetAge() {
		return memberPetAge;
	}

	public void setMemberPetAge(int memberPetAge) {
		this.memberPetAge = memberPetAge;
	}

	public String getMemberHolder() {
		return memberHolder;
	}

	public void setMemberHolder(String memberHolder) {
		this.memberHolder = memberHolder;
	}

	public String getMemberAccount() {
		return memberAccount;
	}

	public void setMemberAccount(String memberAccount) {
		this.memberAccount = memberAccount;
	}

	public String getMemberBank() {
		return memberBank;
	}

	public void setMemberBank(String memberBank) {
		this.memberBank = memberBank;
	}

	public String getMemberRegDate() {
		return memberRegDate;
	}

	public void setMemberRegDate(String memberRegDate) {
		this.memberRegDate = memberRegDate;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public int getMemberAcceptedEmail() {
		return memberAcceptedEmail;
	}

	public void setMemberAcceptedEmail(int memberAcceptedEmail) {
		this.memberAcceptedEmail = memberAcceptedEmail;
	}

	public int getMemberAcceptedSns() {
		return memberAcceptedSns;
	}

	public void setMemberAcceptedSns(int memberAcceptedSns) {
		this.memberAcceptedSns = memberAcceptedSns;
	}

	public int getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}

	public int getMemberGrade() {
		return memberGrade;
	}

	public void setMemberGrade(int memberGrade) {
		this.memberGrade = memberGrade;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MemberDTO other = (MemberDTO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}

}