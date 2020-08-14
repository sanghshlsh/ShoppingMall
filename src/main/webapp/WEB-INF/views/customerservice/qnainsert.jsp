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
<script src="/resources/ckeditor/ckeditor.js"></script>
<style>
.inputArea {
	margin: 10px 0;
}

select {
	width: 100px;
}

label {
	display: inline-block;
	width: 70px;
	padding: 5px;
}

label[for='gdsDes'] {
	display: block;
}

input {
	width: 150px;
}

textarea#gdsDes {
	width: 400px;
	height: 180px;
}
</style>
</head>
<body>
	<jsp:include page="../include/header.jsp" flush="false" />

	<div class="titleArea">
		<h2>
			<font color="">Q&amp;A</font>
		</h2>
		<p>상품 Q&amp;A입니다.</p>
	</div>
	<div class="container">
		<form role="form" method="post" autocomplete="off">

			<div class="inputArea">
				<label for="productName">상품이름</label> <input type="text"
					id="productName" name="productName" />
			</div>
			<div class="inputArea">
				<label for="qnaContent"></label>
				<textarea rows="5" cols="50" id="qnaContent" name="gdsDes"></textarea>
			</div>
			<div class="inputArea">
				<button type="submit" id="qnainsertbtn" class="btn btn-primary">등록</button>
				<button id="qnabtn" class="btn btn-danger">목록</button>
			</div>

		</form>
	</div>

	<script>
		$("#qnainsertbtn").click(function(event) {
		event.preventDefault();
		var str = '';
		});
	
		var ckeditor_config = {
			resize_enaleb : false,
			enterMode : CKEDITOR.ENTER_BR,
			shiftEnterMode : CKEDITOR.ENTER_P,
			filebrowserUploadUrl : "/admin/goods/ckUpload"
		};

		CKEDITOR.replace("gdsDes", ckeditor_config);
	</script>
</body>
</html>















