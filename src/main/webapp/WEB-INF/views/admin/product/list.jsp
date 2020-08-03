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
.div_search_option_outter {
	border : solid 1px black;
	
}
.div_search_option_inner {
	border-bottom : solid 1px black;
}
.div_search_option_inner_left {
	border-bottom : solid 1px black;
	border-right : solid 1px black;
	background-color: lightgray;
}
ul li {
	list-style:none;
}
.product_search_result_top {
	border-bottom: solid 1px gray;
	border-top: solid 1px gray;
	background-color: lightgray;
}
.li_product_search_result {
	border-right : solid 1px gray;
 
}
input[type=checkbox] {
	margin: 0px;
}
.div_search_option_result_inner {
	border-bottom : solid 1px gray;
}
</style>
</head>
<body>
<div class=container-fluid>
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
			<div class="div_search_option_outter">
				<form action="#" method="post" >
				<div class= "div_product_category">
					<div class="col-sm-2 div_search_option_inner_left div_product_category">
						카테고리
					</div>
					<div class="col-sm-10 div_search_option_inner div_product_category">
						박스<br><br><br><br>box
					</div>
				</div>
				<div class= "div_product_regDate">
					<div class="col-sm-2 div_search_option_inner_left div_product_regDate">
						기간
					</div>
					<div class="col-sm-10 div_search_option_inner div_product_regDate">
						박스<br><br><br><br>box
					</div>
				</div>
				<div class= "div_product_price">
					<div class="col-sm-2 div_search_option_inner_left div_product_price">
						가격
					</div>
					<div class="col-sm-10 div_search_option_inner div_product_price">
						박스<br>
					</div>
				</div>
				<div class= "div_product_sellStatus">
					<div class="col-sm-2 div_search_option_inner_left div_product_sellStatus">
						판매상태
					</div>
					<div class="col-sm-10 div_search_option_inner div_product_sellStatus">
						박스
					</div>
				</div>
				<div class= "div_product_isDelete">
					<div class="col-sm-2 div_search_option_inner_left div_product_isDelete">
						전시상태
					</div>
					<div class="col-sm-10 div_search_option_inner div_product_isDelete">
					<br><br>	박스
					</div>
				</div>
				<div class= "div_product_searchKeyword">
					<div class="col-sm-2 div_search_option_inner_left div_product_searchKeyword">
						검색어
					</div>
					<div class="col-sm-10 div_search_option_inner div_product_searchKeyword">
					<br><br><br>	박스<br>
					</div>
				</div>
				</form>
				
				<div style="text-align:center">
					<button class="btn btn-primary" id="product_search_btn">검색</button>
				</div>
			</div>
			<div class="row">
				<br><br>
				몇개/정렬순서/몇개출력/엑셀업다운?
				<br><br>
			</div>
			<div class="row">
				<div class="product_search_result">
					<div class="row product_search_result_top">
					<ul>
						<li class="col-sm-1">
							<input type="checkbox" id="checkAll">
						</li>
						<li class="col-sm-2">
							카테고리
						</li>
						<li class="col-sm-1">
							상품번호
						</li>
						<li class="col-sm-2">
							상품명
						</li>
						<li class="col-sm-1">
							판매가
						</li>
						<li class="col-sm-1">
							재고
						</li>
						<li class="col-sm-1">
							등록일
						</li>
						<li class="col-sm-1">
							판매상태
						</li>
						<li class="col-sm-1">
							전시상태
						</li>
						<li class="col-sm-1">
							관리
						</li>
					</ul>
					</div>
					<form id="form_product_search_result_list">
						
					</form>			
				</div>
					<div  id="product_list">				
						
				<!--
				 목록
				foreach 스크립트작업 덮어씌우기
				ajax 통신
				--> 
					
					</div>
				
			</div>
	
		</div>
	</div>
</div>


<script type="text/javascript">
	$(document).ready(function(){
		

		getList();
		equalHeights( $(".div_product_category"));
		equalHeights( $(".div_product_regDate"));
		equalHeights( $(".div_product_price"));
		equalHeights( $(".div_product_sellStatus"));
		equalHeights( $(".div_product_isDelete"));
		equalHeights( $(".div_product_searchKeyword"));

		$('div').on("click","#product_insert_btn",function(){
			location.assign("/admin/product/insert")
		});


		
	});

	function equalHeights($result){
	    var highest = 0;

	    $result.each(function() {
	        thisHeight = $(this).height();
	        if(thisHeight > highest) {
	            highest = thisHeight;
	        }
	    });

	    $result.height(highest);
	}

	function getList(){
		var StringBuffer = function() { 
			this.buffer = new Array(); 
		}; 
		StringBuffer.prototype.append = function(str) { 
			this.buffer[this.buffer.length] = str; 
		}; 
		StringBuffer.prototype.toString = function() { 
			return this.buffer.join(""); 
		};
		
		var str = new StringBuffer();			
		$.getJSON("/product_List", function(data){
			for(var i = 0 ; i < data.length ; i++){
				str.append('<div class="row div_search_option_result_inner">');
				str.append('<ul>');
				str.append('<li class="col-sm-1 li_product_search_result">');
				str.append('<input type="checkbox name='+data[i]["productNo"]+'">');
				str.append('</li>');
				str.append('<li class="col-sm-2 li_product_search_result">');
				str.append(getCategoryName(data[i]["categoryNo"]));
				str.append('</li>');
				str.append('<li class="col-sm-1 li_product_search_result">');
				str.append(data[i]["productNo"]);
				str.append('</li>');
				str.append('<li class="col-sm-2 li_product_search_result">');
				str.append(data[i]["productName]"]);
				str.append('</li>');
				str.append('<li class="col-sm-1 li_product_search_result">');
				str.append(data[i]["productPrice"]);
				str.append('</li>');
				str.append('<li class="col-sm-1 li_product_search_result">');
				str.append('재고');
				str.append('</li>');
				str.append('<li class="col-sm-1 li_product_search_result">');
				str.append(dateToString(data[i]["regDate"]));
				str.append('</li>');
				str.append('<li class="col-sm-1 li_product_search_result">');
				if(data[i]["sellStatus"]==0){
					str.append('판매대기');
				}else if(data[i]["sellStatus"]==1){
					str.append('판매중');
				}else{
					str.append('품절');
				}				
				str.append('</li>');
				str.append('<li class="col-sm-1 li_product_search_result">');
				if(data[i]["isDelete"]==0){
					str.append('전시');
				}else{
					str.append('미전시');
				}
				str.append('</li>');
				str.append('<li class="col-sm-1">');
				str.append('수정버튼');
				str.append('</li>');
				str.append('</ul>');
				str.append('</div>');	
			}
			var resultstr = str.toString();
			
			$("#form_product_search_result_list").html(resultstr);				
		});
	};
	function getCategoryName(categoryNo){
		$.ajax({
			type : 'get',
			url : '/getCategoryName',
			dataType : 'text',
			data : {
				categoryNo : categoryNo
			},			
			success : function(result){
			console.log(result);
			}
		});
	};
	function dateToString(date){
	    function pad(num) {
	        num = num + '';
	        return num.length < 2 ? '0' + num : num;
	    }
	    return date.getFullYear() + '-' + pad(date.getMonth()+1) + '-' + pad(date.getDate());
	}

	
	
</script>
</body>
</html>