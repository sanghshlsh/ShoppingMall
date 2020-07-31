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
<title>Insert title here</title>
</head>
<body>
   <div class="container">
      <div class="row text-center">
         <h1>회원 정보</h1>
      </div>
      <div class="row">
         <div class="form-group">
            <label for="title">아이디</label> <input readonly value="${to.memberId}"
               class="form-control">
         </div>

         <div class="form-group">
            <label for="title">이름</label> <input readonly value="${to.memberName}"
               class="form-control">
         </div>

         <div class="form-group">
            <label for="title">이메일</label>
            <textarea readonly rows="5" class="form-control">${to.memberEmail}</textarea>
         </div>
      </div>

      <div class="row">
         <div class="form-group">
            <button class="btn btn-warning" id="update">수정</button>
            <button class="btn btn-danger" id="delete">삭제</button>
            <button class="btn btn-primary" id="list">목록</button>
         </div>
      </div>

          
         </div>
 <script type="text/javascript">
		var memberno = ${to.memberNo}

		$("#update").click(function() {
			location.assign("/member/update/${to.memberNo}");
		});

		$("#delete").click(function() {
			location.assign("/member/delete/${to.memberNo}");
		});

		$("#list").click(function() {
			location.assign("/member/list");
		});
	
</script>
</body>
</html>