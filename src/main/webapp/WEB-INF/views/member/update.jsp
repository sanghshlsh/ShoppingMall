<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
   
<div class="container">
  <div class="row text-center"></div>

  <div class="row">
   <h1>글 수정</h1>
    <form action="/member/update" method="post">
        <input type="text" name="memberNo" value="${to.memberNo}">
         <div class="form-group">
          <label for="memberId">아이디</label>
          <input value="${to.memberId}" name="memberId" id="memberId" class="form-control">
          
         </div>   
         
         <div class="form-group">
            <label for="memberName">이름</label>
            <input value="${to.memberName}" name="memberName" id="memberName" class="form-control">
         </div>
         
         <div class="form-group">
            <label for="memberEmail">이메일</label>
            <textarea class="form-control" id="memberEmail" rows="5" name="memberEmail">${to.memberEmail}</textarea>            
         </div>
         
    </form>
    <div class="form-group">
        <button class="btn btn-primary" id="updatebtn">수정</button>
        <button class="btn btn-primary" id="listbtn">목록</button>
    </div>
    </div>
</div>

<script type="text/javascript">

  $(document).ready(function(){
      $("#updatebtn").click(function(){
          $("form").submit();  
      });
      
      $("#listbtn").click(function(){
         location.assign("/member/list");
      });
   });
</script>

</body>
</html>