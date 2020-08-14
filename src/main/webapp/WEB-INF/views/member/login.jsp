<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
<script>
	$(document).ready(function(){
		$("#btnLogin").click(function(){
			// 태크.val() : 태그에 입력된 값
			// 태크.val("값") : 태그의 값을 변경 
			var memberId = $("#memberId").val();
			var memberPw = $("#memberPw").val();
			if(memberId == ""){
				alert("아이디를 입력하세요.");
				$("#memberId").focus(); // 입력포커스 이동
				return; // 함수 종료
			}
			if(memberPw == ""){
				alert("아이디를 입력하세요.");
				$("#memberPw").focus();
				return;
			}
			// 폼 내부의 데이터를 전송할 주소
			document.form1.action="/member/loginCheck.do"
			// 제출
			document.form1.submit();
		});
	});
</script>
<style type="text/css">
#tbl_login {
margin: auto;
text-align: center;
width: 60%;
font-size: 14px;
}
#memberId, #memberPw {
width: 160px;
height: 18px;

}
.padding_topbottom {
padding-top: 380px;
padding-bottom: 200px;
}
</style>
<title>Insert title here</title>
</head>
<%@ include file="../include/header.jsp"%>
<body>
	<%@ include file="../include/menu.jsp"%>
	<div class="container padding_topbottom">
		<div class="row">
			<form name="form1" method="post">
				<table id="tbl_login" border="1">
					<tr>
						
						<td><input name="memberId" id="memberId" placeholder="ID"></td>
					</tr>
					<tr>
						
						<td><input type="password" name="memberPw" id="memberPw" placeholder="PASSWORD"></td>
					</tr>
					
					<tr>
						<td>
							<button type="button" id="btnLogin">로그인</button>
						<c:if test="${msg == 'failure'}">
							<div style="color: red">
								아이디 또는 비밀번호가 일치하지 않습니다.
							</div>
						</c:if>
						<c:if test="${param.msg == 'nologin'}">
							<div style="color: red">
								로그인 후 사용이 가능합니다.
							</div>
						</c:if>
						<c:if test="${msg == 'logout'}">
							<div style="color: red">
								로그아웃되었습니다.
							</div>
						</c:if>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>