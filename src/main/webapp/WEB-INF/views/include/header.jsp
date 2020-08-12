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
<style type="text/css">
	.topheader {
		background-color: blue;
		color: white;
		font-size: 18px;
		padding: 15px;
	}
	
	.btn-none { 
		border: 0px;
 		background-color: white;
	}
	 .btn-blue {
	 	border: 0px;
	 	background-color: blue;
	 	color: white;
	 	font-size: 18px;	
	 }
 	.btn-blue:hover {
 		color: white;
 	}

</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row topheader">
			<div class="col-sm-2 dropdown">
				<button class="btn btn-blue dropdown-toggle" type="button" data-toggle="dropdown" data-hover="dropdown">
					SEND YOUR LOVE TO PETS<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
					<li><a href="#">KAKAO Chat</a></li>
					<li><a href="/customerservice/faq">FAQs</a></li>
					<li><a href="/customerservice/qna">Q&A</a></li>
					<li><a href="#">Membership(comming soon)</a></li>
				</ul>
			</div>
			<div class="col-sm-8"> 1644-9603 ( MON - FRI 9:30 - 17:00, lunch 11:50 - 13:00 )</div>
			<div class="col-sm-2">"Pets, Just Enjoy The Bathroom!</div>
		 </div>
	</div>
	<div class="container">
		<div class="row">
			<div class="row col-sm-1">
				홈버튼
			</div>
			<div class="row col-sm-11">
				<div class="row">
					<div class="col-sm-8">
					
						<div class="col-sm-2"></div>
						<div class="col-sm-2"></div>
						<div class="col-sm-2"></div>
						<div class="col-sm-2"></div>
						<div class="col-sm-2"></div>
					</div>
					<div class="col-sm-4">
						<div class="col-sm-3">로그인</div>
						<div class="col-sm-3">회원가입</div>
						<div class="col-sm-3">마이페이지</div>
						<div class="col-sm-3">주문관리</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-8">
						
						<div class="col-sm-2">ABOUT</div>
						<div class="col-sm-2">PRODUCT</div>
						<div class="col-sm-2"><a href="/review/main">REVIEW</a></div>
						<div class="col-sm-2"><a href="/customerservice/main">C/S CENTER</a></div>
						<div class="col-sm-2"><a href="/customerservice/inquiry">INQUIRY</a></div>
					</div>
					<div class="col-sm-4">
							<div class="col-sm-7">
								<input name="searchproductname">
							</div>
							<div class="col-sm-2">
								<button type="button" class="btn-none">검색</button>
							</div>
							<div class="col-sm-1">바구니</div>
							<div class="col-sm-1">목록</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>

	<script type="text/javascript">
	$(document).ready(function(){
		  $('.dropdown,.dropdown-menu').hover(function(){        
	            $(this).addClass('open').trigger('shown.bs.dropdown', relatedTarget)
	            return false;        
	        },function(){
	            $(this).removeClass('open').trigger('hidden.bs.dropdown', relatedTarget)
	            return false;   
	        });
	});
	</script>
</body>
</html>