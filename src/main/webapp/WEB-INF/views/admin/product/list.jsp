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
a:link {
	color : black;
}
a:visited {
	color : black;
 }
a:active {
 	color : black;
 }
a:hover {
 	color : black;
 }
 .link_product_category_select {
 	font-size: 5px;
 	font-style: italic;
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
					<button class="btn btn-primary" id="btn_product_insert" style="float:right">상품 등록</button>
				</div>
			</div>
			<div class="row div_search_option_outter">
				<form action="#" method="post" >
				<div id="div_product_category">
					<div class="col-sm-2 div_search_option_inner_left div_product_category">
						카테고리
					</div>
					<div class="col-sm-10 div_search_option_inner div_product_category">
						<div class="row">
							<ul class="col-sm-4">
								<li>1차 카테고리</li>
							</ul>
							<ul class="col-sm-4">
								<li>2차 카테고리</li>
							</ul>
							<ul class="col-sm-4">
								<li>3차 카테고리</li>
							</ul>
							<ul id="ul_product_category_1" class="col-sm-4">
								<li>1차 db불러오기</li>
							</ul>
							<ul id="ul_product_category_2" class="col-sm-4">
								<li>2차 db불러오기</li>
							</ul>
							<ul id="ul_product_category_3" class="col-sm-4">
								<li>3차 db불러오기</li>
							</ul>
						</div>
					</div>
				</div>
				<div id= "div_product_regDate">
					<div class="col-sm-2 div_search_option_inner_left div_product_regDate">
						기간
					</div>
					<div class="col-sm-10 div_search_option_inner div_product_regDate">
						<div class="row">
						박스<br><br><br><br>box
						</div>						
					</div>
				</div>
				<div id="div_product_price">
					<div class="col-sm-2 div_search_option_inner_left div_product_price">
						가격
					</div>
					<div class="col-sm-10 div_search_option_inner div_product_price">
						<div class="row">
						박스<br>
						</div>
					</div>
				</div>
				<div id="div_product_sellStatus">
					<div class="col-sm-2 div_search_option_inner_left div_product_sellStatus">
						판매상태
					</div>
					<div class="col-sm-10 div_search_option_inner div_product_sellStatus">
						<div class="row">
						박스
						</div>
					</div>
				</div>
				<div id="div_product_isDelete">
					<div class="col-sm-2 div_search_option_inner_left div_product_isDelete">
						전시상태
					</div>
					<div class="col-sm-10 div_search_option_inner div_product_isDelete">
						<div class="row">
						<br><br>	박스
						</div>
					</div>
				</div>
				<div id="div_product_searchKeyword">
					<div class="col-sm-2 div_search_option_inner_left div_product_searchKeyword">
						검색어
					</div>
					<div class="col-sm-10 div_search_option_inner div_product_searchKeyword">
						<div class="row">
						<br><br><br>	박스<br>
						</div>
					</div>
				</div>
				</form>
				
				<div style="text-align:center">
					<button class="btn btn-primary" id="btn_product_search">검색</button>
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
				<div  class="row">				
					<button class="btn btn-danger" id="btn_product_checked_delete" style="float:left">삭제</button>
					<button class="btn btn-danger" id="btn_product_checked_update" style="float:right">수정사항 저장</button>
				</div>
				
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">
		var StringBuffer = function() { 
			this.buffer = new Array(); 
		}; 
		StringBuffer.prototype.append = function(str) { 
			this.buffer[this.buffer.length] = str; 
		}; 
		StringBuffer.prototype.toString = function() { 
			return this.buffer.join(""); 
		};
			$(document).ready(function(){
		
		

		getProductList();
		getCategoryList();
		equalHeights( $(".div_product_category"));
		equalHeights( $(".div_product_regDate"));
		equalHeights( $(".div_product_price"));
		equalHeights( $(".div_product_sellStatus"));
		equalHeights( $(".div_product_isDelete"));
		equalHeights( $(".div_product_searchKeyword"));

		$('div').on("click","#btn_product_insert",function(event){
			event.preventDefault();
			location.assign("/admin/product/insert");
		});
		$('.product_search_result').on("click", "#checkAll", function(){
		    if (!$('#checkAll').prop('checked')) {
		            $('.checkbox_product').prop('checked', false);
		    }else{
		        $('.checkbox_product').prop('checked', true);
		    }
		});
		$('.product_search_result').on("click", ".checkbox_product", function(){
		    $("#checkAll").prop('checked', false);
		});
		<%--수정할부분 --%>
		$('.product_search_result').on("click",".btn_product_update",function(event){
			event.preventDefault();
			var that = $(this);
			alert(that.attr("data-location"));
			location.assign("/admin/product/update/"+that.attr("data-location"));
			
		});
		
		$(".div_product_category").on("click", ".link_product_category", function(event){
			event.preventDefault();
			var that = $(this);
			var str = new StringBuffer();
			var degree = Number($(this).attr("data-degree"))+1;
				$.ajax({
					type : 'get',
					url : '/product_CategoryN',
					dataType : 'text',
					data : {
						categoryNoRef : that.attr("href"),
						categoryDegree : that.attr("data-degree")
					},
					success : function(data){
						var list = $.parseJSON(data);
						var listLen = list.length;
						for(var i = 0; i < listLen; i++){
							str.append('<li><a href="'+list[i].categoryNo+'" class="link_product_category" data-degree="'+list[i].categoryDegree+'" data-name="'+list[i].categoryName+'">');
							str.append(list[i].categoryName+'</a>');
							str.append('<a href="'+list[i].categoryNo+'" class="linkt_product_category_select">선택</a></li>');
						}
						var resultstr = str.toString();
						var id = "#ul_product_category_"+degree;
						$(id).html(resultstr);	
						childHeights( $(".div_search_option_inner.div_product_category"));	
					}
				});
				
			
		});
		<%--수정할 부분--%>
		$(".div_product_category").on("click", ".linkt_product_category_select", function(event){
			event.preventDefault();
			
			alert("ajax입력");
			
		});
	});

	function childHeights(that){
	   
		var height = that.children('div').height();
		that.prev().height(height);
	    that.height(height);
	}
	function equalHeights(that){
	    var highest = 0;

	    that.each(function() {
	        var thisHeight = $(this).height();
	        if(thisHeight > highest) {
	            highest = thisHeight;
	        }
	        thisHeight = $(this).children('div').height();

	        if(thisHeight > highest) {
	            highest = thisHeight;
	        }
	    });
	  
	    that.height(highest);
	}

	function getProductList(){
		var str = new StringBuffer();			
		$.getJSON("/product_List", function(data){
			for(var i = 0 ; i < data.length ; i++){
				var date = new Date(data[i]["regDate"]);
				str.append('<div class="row div_search_option_result_inner">');
				str.append('<ul>');
				str.append('<li class="col-sm-1 li_product_search_result">');
				str.append('<input type="checkbox" class="checkbox_product" name="checkbox_'+data[i]["productNo"]+'">');
				str.append('</li>');
				str.append('<li class="col-sm-2 li_product_search_result">');
				str.append((data[i]["categoryNo"]));
				str.append('</li>');
				str.append('<li class="col-sm-1 li_product_search_result">');
				str.append(data[i]["productNo"]);
				str.append('</li>');
				str.append('<li class="col-sm-2 li_product_search_result">');
				str.append(data[i]["productName"]);
				str.append('</li>');
				str.append('<li class="col-sm-1 li_product_search_result">');
				str.append(data[i]["productPrice"]);
				str.append('</li>');
				str.append('<li class="col-sm-1 li_product_search_result">');
				str.append('재고');
				str.append('</li>');
				str.append('<li class="col-sm-1 li_product_search_result">');
				str.append(getFormatDate(date));
				str.append('</li>');
				str.append('<li class="col-sm-1 li_product_search_result">');
				str.append('<select name="sellStatus_'+data[i]["productNo"]+'" ><option value="0"');
				if(data[i]["sellStatus"]==0){
					str.append(' selected="selected"');
				}
				str.append('>판매대기</option><option value="1"');
				if(data[i]["sellStatus"]==1){
					str.append(' selected="selected"');
				}
				str.append('>판매중</option><option value="2"');
				if(data[i]["sellStatus"]==2){
					str.append(' selected="selected"');
				}
				str.append('>품절</option></select>');								
				str.append('</li>');
				str.append('<li class="col-sm-1 li_product_search_result">');
				str.append('<select name="isDelete'+data[i]["productNo"]+'" ><option value="0"');
				if(data[i]["isDelete"]==0){
					str.append(' selected="selected"');
				}
				str.append('>전시</option><option value="1"');
				if(data[i]["isDelete"]==1){
					str.append(' selected="selected"');
				}
				str.append('>미전시</option></select>');	
				str.append('</li>');
				str.append('<li class="col-sm-1">');
				str.append('<button class="btn btn-primary btn_product_update" data-location="'+data[i]["productNo"]+'">수정</button>');			
				str.append('</li>');
				str.append('</ul>');
				str.append('</div>');
				
			}
			var resultstr = str.toString();
			
			$("#form_product_search_result_list").html(resultstr);				
		});
	};
	<%-- 미구현 
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
--%>
	function getFormatDate(date){
	    var year = date.getFullYear();              
	    var month = (1 + date.getMonth());          
	    month = month >= 10 ? month : '0' + month;  
	    var day = date.getDate();                  
	    day = day >= 10 ? day : '0' + day;          
	    return  month + '-' + day;     
	}
	
	function getCategoryList(){
		var str = '';			
		$.getJSON("/product_Category", function(data){
			for(var i = 0 ; i < data.length ; i++){
				str += '<li><a href="'+data[i]["categoryNo"]+'" class="link_product_category" data-degree="'+data[i]["categoryDegree"]+'">'+data[i]["categoryName"]+'</a><a href="'+data[i]["categoryNo"]+'" class="linkt_product_category_select">선택</a></li>';
			}
			$("#ul_product_category_1").html(str);
			childHeights( $(".div_search_option_inner.div_product_category"));
		});
	
	};
</script>
</body>
</html>