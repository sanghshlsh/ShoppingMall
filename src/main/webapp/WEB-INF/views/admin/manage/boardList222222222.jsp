<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<title>Admin Management</title>
<%@ include file="../include/head.jsp"%>
<style>
.col-fixed {
	position: relative;
	min-height: 1px;
	padding-right: 15px;
	padding-left: 15px;
	float: left;
	width: 100%;
}

.col-fluid {
	position: relative;
	min-height: 1px;
	padding-right: 15px;
	padding-left: 15px;
	float: left;
	width: 100%;
}

@media ( min-width : 768px) and (max-width: 991px) {
	.col-fixed {
		width: 300px;
	}
	.col-fluid {
		width: calc(100% - 300px);
	}
}

@media ( min-width : 992px) and (max-width: 1199px) {
	.col-fixed {
		width: 300px;
	}
	.col-fluid {
		width: calc(100% - 300px);
	}
}

@media ( min-width : 1200px) {
	.col-fixed {
		width: 300px;
	}
	.col-fluid {
		width: calc(100% - 300px);
	}
}

/* footer */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}
</style>
</head>
<body>
	<%@ include file="../include/navbar.jsp"%>

	<div class="container-fluid">
		<div class="row">

			<div class="sidenav col-fixed">
				<h2>Management</h2>
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a href="/admin/manage/boardList">게시판 리스트</a></li>
					<li><a href="/admin/manage/SavemoneyHistory">적립금 관리</a></li>
					<li><a href="/admin/manage/PointHistory">포인트 관리</a></li>
					<li><a href="/admin/manage/SmsSendMain">SMS 발송</a></li>
					<li><a href="/admin/manage/EmailSendMain">Email 발송</a></li>
					<li><a href="/admin/manage/BannedList">금칙어 관리</a></li>
				</ul>
				<br>
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search.."> <span class="input-group-btn">
						<button class="btn btn-default" type="button">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
				</div>
			</div>

			<div class="main-content col-fluid">
				<div class="container-fluid">
					<h2>게시판 리스트</h2>
					<p>게시판을 검색하거나 관리할 수 있는 페이지입니다.</p>
					<div class="row" style="background-color: lavender; border: 1px; black;">
						<div class="col-md-3"></div>
						<div class="col-md-4">사용자권한</div>
						<div class="col-md-5"></div>
					</div>
					<div class="row" style="background-color: lavender;">
						<div class="col-md-1">번호</div>
						<div class="col-md-1">게시판아이디</div>
						<div class="col-md-1">게시판명</div>
						<div class="col-md-2">읽기</div>
						<div class="col-md-2">쓰기</div>
						<div class="col-md-1">사용여부</div>
						<div class="col-md-1">새글/총게시글</div>
						<div class="col-md-1">종류</div>
						<div class="col-md-1">게시글관리</div>
						<div class="col-md-1">관리</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<%@ include file="../include/footer.jsp"%>
</body>
</html>