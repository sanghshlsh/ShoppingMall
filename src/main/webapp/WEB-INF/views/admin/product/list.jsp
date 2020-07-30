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
		<button class="btn btn-primary" id="product_insert_btn">제품 등록</button>
	</div>
	<div class="row">
		조건들~~
		<button class="btn btn-primary" id="product_search_btn">검색</button>
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


<script type="text/javascript">
	$(document).ready(function(){
		$('div').on("click","#product_insert_btn",function(){
			location.assign("/admin/product/insert")
		});
	});

</script>
</body>
</html>