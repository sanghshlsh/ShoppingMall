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
<div class=container>
	<div class="row">
		<%-- <jsp:include page="" flush="true">
		manager-header 액션태그로 삽입 --%>
	</div>
	<div class="row">
		<div class="col-sm-2">
				sidebar	
		</div>
		<div class="col-sm-10">
			<div class="row">
				<div class="col-sm-9">
					<h1>판매상품관리</h1>
				</div>
				<div class="col-sm-3">
					<button class="btn btn-primary" id="product_insert_btn" style="float:right">상품 등록</button>
				</div>
			</div>
			<div class="row">
				<div class= "row div_product_category">
					<div class="col-sm-2">
						카테고리
					</div>
					<div class="col-sm-10">
						박스
					</div>
				</div>
				<div class= "row div_product_category">
					<div class="col-sm-2">
						기간
					</div>
					<div class="col-sm-10">
						박스
					</div>
				</div>
				
				
				<div>
					<button class="btn btn-primary" id="product_search_btn">검색</button>
				</div>
			</div>
			<div class="row">
				아래div에 list출력
				<div id="product_list">
				목록
				foreach 스크립트작업 덮어씌우기
				ajax 통신
			</div>
			</div>
	
		</div>
	</div>
</div>


<script type="text/javascript">
	$(document).ready(function(){
		$('div').on("click","#product_insert_btn",function(){
			location.assign("/admin/product/insert")
		});
	});

</script>
</body>
</html>