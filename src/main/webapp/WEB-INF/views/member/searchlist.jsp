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
 <div class="row">
     <h1>검색 결과</h1>
     <p>검색 조건: ${searchType}, 키워드: ${keyword}</p>
     
          <div class="row">
         <table class="table">
            <thead>
               <tr>
                  <th class="th-center">회원번호</th>
                  <th class="th-center">아이디</th>
                  <th class="th-center">이름</th>
                  <th class="th-center">전화번호</th>
                  <th class="th-center">이메일</th>
               </tr>
            </thead>
            <tbody>
               <c:forEach items="${list}" var="dto">
                  <tr>
                      <td>${dto.memberNo}</td>   
                     <td><a href="/member/read/${dto.memberNo}">${dto.memberId}</a></td>    
                     <td>${dto.memberName}</td>
                     <td>${dto.memberPhone}</td>
                     <td>${dto.memberEmail}</td>
                  </tr>
               </c:forEach>
            </tbody>
         </table>
      </div> <!-- class = row -->
 </div>
</div>
</body>
</html>