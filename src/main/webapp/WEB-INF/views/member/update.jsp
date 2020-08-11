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
  <div class="row text-center">
    <h1>글 수정</h1>
  </div>
  <div class="row">
    <form action="/member/update" method="post">
        <input type="hidden" name="memberNo" value="${to.memberNo}">
        
        <table border="1" width="400px">
        
        <tr>
         <div class="form-group">
        <td><label for="memberId" >아이디</label></td>
          <td><input readonly value="${to.memberId}" name="memberId" id="memberId" class="form-control"></td>       
         </div>   
         </tr>
         
         
            <tr>
         <div class="form-group">
        <td><label for="memberName">이름</label></td>
          <td><input value="${to.memberName}" name="memberName" id="memberName" class="form-control"></td>       
         </div>   
         </tr>
         
            <tr>
         <div class="form-group">
        <td><label for="memberBirth">생년월일</label></td>
          <td><input value="${to.memberBirth}" name="memberBirth" id="memberBirth" class="form-control"></td>       
         </div>   
         </tr>
         
            <tr>
         <div class="form-group">
        <td><label for="memberEmail">이메일</label></td>
          <td><input value="${to.memberEmail}" name="memberEmail" id="memberEmail" class="form-control"></td>       
         </div>   
         </tr>
         
            <tr>
         <div class="form-group">
        <td><label for="memberTel">일반전화</label></td>
          <td><input value="${to.memberTel}" name="memberTel" id="memberTel" class="form-control"></td>       
         </div>   
         </tr>
            <tr>
         <div class="form-group">
        <td><label for="memberPhone">휴대전화</label></td>
          <td><input value="${to.memberPhone}" name="memberPhone" id="memberPhone" class="form-control"></td>       
         </div>   
         </tr>
         
            <tr>
         <div class="form-group">
        <td><label for="memberAddress_1">주소</label></td>
          <td><input value="${to.memberAddress_1}" name="memberAddress_1" id="memberAddress_1" class="form-control"></td>       
         </div>   
         </tr>
         
            <tr>
         <div class="form-group">
        <td><label for="memberAddress_2">상세주소</label></td>
          <td><input value="${to.memberAddress_2}" name="memberAddress_2" id="memberAddress_2" class="form-control"></td>       
         </div>   
         </tr>
         
            <tr>
         <div class="form-group">
        <td><label for="memberPetName">반려동물 이름</label></td>
          <td><input value="${to.memberPetName}" name="memberPetName" id="memberPetName" class="form-control"></td>       
         </div>   
         </tr>
            <tr>
         <div class="form-group">
        <td><label for="memberPetAge">반려동물 나이</label></td>
          <td><input value="${to.memberPetAge}" name="memberPetAge" id="memberPetAge" class="form-control"></td>       
         </div>   
         </tr>
         
            <tr>
         <div class="form-group">
        <td><label for="memberHolder">예금주</label></td>
          <td><input value="${to.memberHolder}" name="memberHolder" id="memberHolder" class="form-control"></td>       
         </div>   
         </tr>
         
         <tr>
         <div class="form-group">
        <td><label for="memberBank">은행명</label></td>
          <td><input value="${to.memberBank}" name="memberBank" id="memberBank" class="form-control"></td>       
         </div>   
         </tr>
         
         <tr>
         <div class="form-group">
        <td><label for="memberAccount">계좌번호</label></td>
          <td><input value="${to.memberAccount}" name="memberAccount" id="memberAccount" class="form-control"></td>       
         </div>   
         </tr>
         
   
         
         
         
         </table>        
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