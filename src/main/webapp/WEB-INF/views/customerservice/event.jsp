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
	.btn-none { 
			border: 0px;
 			width: 100%;
 			height: 50px;
 			background-color: white;
	}
	.btn-event {
		border-bottom: 2px solid blue;
		color : blue;
	}
	.btn-winner {
		border-bottom: 2px solid gray;
		color : gray;
	}
	.pagination {
		text-align : center;
		display : block;
	}
	.pagination > li > a {
	 float : none;
	 margin-left : -5px;
	}
	#form-seach {
		text-align : center;
	}
</style>
</head>
<body>
<jsp:include page="../include/header.jsp" flush="false"/>
<div class="container">
		<div class="row">
			<div class="col-sm-10">
				<div class="row">
					<h1>event</h1>
				</div>
				<br><br>
				<div class="row">
					<div class="col-sm-2"></div>
					<div class="col-sm-4">
						<button class="btn-event btn-none">EVENT</button>
					</div>
					<div class="col-sm-4">
						<button class="btn-winner btn-none">WINNER ANNOUNCEMENT</button>
					</div>
					<div class="col-sm-2"></div>
				</div>
				<div class="row">
					리스트추가
				</div>
				<div class="row">
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="#">Previous</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">Next</a></li>
						</ul>
					</nav>
				</div>
				<div class="row">
					<form action="/customerservice/notice/search" method="post" id="form-seach">
						검색
						<select name="period">
							<option>기간</option>
						</select>
						<select name="condition">
							<option>검색조건</option>
						</select>
						<input type="text" name="keyWord">
						<button type="button" class="btn btn-primary" id="btn-search">찾기</button>
					</form>
				</div>
			</div>
			<div class="col-sm-2">
				sidebar
			</div>
		</div>
		<div class="row">
			footer
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#btn-search').click(function(){
				event.preventDefault();
				$("#form-seach").submit();
			});
			$('.btn-event').click(function(){
				event.preventDefault();
				location.assign("/customerservice/event");
			});
			$('.btn-winner').click(function(){
				event.preventDefault();
				location.assign("/customerservice/winner");
			});
		});
	</script>	
</body>
</html>