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
	<script src="/resources/js/uploadfn.js" type="text/javascript"></script>
<title>Insert title here</title>
<style type="text/css">
.borderd_div {
	border: 1px solid black;
}
.borderd_div_left {
	border-left: 1px solid black;
}
.label_font {
    font-weight: 700;
    
}
.fileDrop {
	margin : auto;

}
	
.uploadedList {
	border: 1px solid black;
}

li {
	list-style : none;
}
.originalfilename {
	overflow : hidden;
	white-space : nowrap;
	text-overflow : ellipsis; 	
}
.link_product_category:link {
	color : black;
}
.link_product_category:visited {
	color : black;
 }
 .link_product_category:active {
 	color : black;
 }
 .link_product_category:hover {
 	color : black;
 }

 
 
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2">
				sidebar	
			</div>
			<div class="col-sm-10">
				<div class="row">
					<div class="col-sm-2"><button type="button" class="btn btn-primary" id="btn_product_list">상품리스트</button></div>
					<div class="col-sm-8"><h1>판매 상품 관리</h1></div>
					<div class="col-sm-2"><button type="button" class="btn btn-primary" id="btn_product_insert">저장하기</button></div>					
				</div>
				<div class="row">
					<table class="table table-bordered tbl_product_category">
						<thead>
							<tr>
								<th>1차 카테고리</th>
								<th>2차 카테고리</th>
								<th>3차 카테고리</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="col-sm-4">
									<ul id="ul_product_category_1">
										<li>1차 db불러오기</li>
									</ul>
								</td>
								<td class="col-sm-4">
									<ul id="ul_product_category_2">
										<li>2차 db불러오기</li>
									</ul>
								</td>
								<td class="col-sm-4">
									<ul id="ul_product_category_3">
										<li>3차 db불러오기</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="row"> 
					<div class="row text-center">
						<button type="button" class="btn btn-primary" id="btn_product_category_insert">카테고리 추가 버튼</button>
					</div>
					<div class="row borderd_div">
						<div class="col-sm-3">
							선택된 카테고리
						</div>
						<div class="col-sm-9">
							<div class="row borderd_div_left product_category_selected">${categoryNo }</div>
						</div>
					</div>
					<div class="row">
						상품 기본정보
					</div>
					<div class="row">
						<form action="/admin/product/insert" method="post" id="form_product_insert">
							<div class="form-group">
								<div class="col-sm-2">
									<label for="productName">상품명</label>
								</div>
								<div class="col-sm-10">
									<input name="productName" required id="productName" class="form-control" value="${productDTO.productName }">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-2">
									<label for="productCategory">카테고리</label>
								</div>
								<div class="col-sm-10">
									<input name="productCategory" readonly id="productCategory" class="form-control" value="${productDTO.categoryNo }">
								</div>
							</div>
							<div class="radio">
								<div class="col-sm-2 label_font">
								판매상태
								</div>
								<div class="col-sm-10">
									<label for="sellStatus1">
										<input  type="radio" name="sellStatus" id="sellStatus1" value="0" ${productDTO.sellStatus == 0 ? "checked" :"" }>판매대기
									</label>
									<label for="sellStatus2">
										<input  type="radio" name="sellStatus" id="sellStatus2" value="1" ${productDTO.sellStatus == 1 ? "checked" :"" }>판매중
									</label>
									<label for="sellStatus3">
										<input  type="radio" name="sellStatus" id="sellStatus3" value="2" ${productDTO.sellStatus == 2 ? "checked" :"" }>품절
									</label>
								</div>
							</div>
							<br>
							<div class="radio">
								<div class="col-sm-2 label_font">
									전시상태
								</div>
								<div class="col-sm-10">
									<label for="isDelete1">
										<input  type="radio" name="isDelete" id="isDelete1" value="0" ${productDTO.isDelete == 0 ? "checked" :"" }>전시
									</label>
									<label for="isDelete2">
										<input  type="radio" name="isDelete" id="isDelete2" value="1" ${productDTO.isDelete == 1 ? "checked" :"" }>미전시
									</label>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-2">
									<label for="productSet">세트설정</label>
								</div>
								<div class="col-sm-10">
									<input name="productSet" required id="productSet" class="form-control" value="${productDTO.productSet }">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-2">
									<label for="productPrice">가격</label>
								</div>
								<div class="col-sm-10">
									<input name="productPrice" required id="productPrice" class="form-control" value="${productDTO.productPrice }">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-2">
									<label for="productDiscountRate">할인율(%)</label>
								</div>
								<div class="col-sm-10">
									<input name="productDiscountRate" required id="productDiscountRate" class="form-control" value="${productDTO.productDiscountRate }">
								</div>
							</div>
							<div class="form_product_category_number">
							</div>
							<div class="row div_product_option">
								
							</div>
						</form>
					</div>
					<div class="row product_option">
						<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal_product_option_insert" id="btn_product_option">
  							옵션 추가
						</button>
					</div>
				
				</div>
				
				<div class="row">
					<div class="form-group">
						<div class="col-sm-2 label_font">상품사진</div>
						<div class="col-sm-10 div_product_file">
							<form action="/uploadajax" method="post" enctype="multipart/form-data" id="form_product_file">
								<div class="row">
									<div class="col-sm-8">
										<input type="file" id="input_product_file" name="file">
									</div>
									<div class="col-sm-4">
										<button class="btn btn-primary" id="btn_product_file">확인</button>
									</div>
								</div>								
							</form>
						</div>
						
					</div>
				</div>
				<div class="row">
					<div class="form-group">
						<div class="fileDrop">
							<ul class="uploadedList clearfix">
								<li class='col-xs-12'>업로드할 사진을 드랍시키세요.</li>			
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<div class="row">
		<div data-backdrop="static" class="modal fade" tabindex="-1" role="dialog" id="modal_product_option_insert">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-rno">옵션 추가</h4>
					</div>
					<div class="modal-body row  ">
						<div class="form-group">
							<div class="col-sm-2">
								<label for="modal_productColor">색상</label>
							</div>
							<div class="col-sm-10">
								<input class="form-control modal_productColor">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-2">
								<label for="modal_productSize">사이즈</label>
							</div>
							<div class="col-sm-10">
								<input class="form-control modal_productSize">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-2">
								<label for="modal_productQuantity">재고</label>
							</div>
							<div class="col-sm-10">
								<input required class="form-control modal_productQuantity">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-warning modal-insert" data-dismiss="modal">옵션 추가</button>
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
	var productNo = ${productDTO.productNo};
	$(document).ready(function(){
		getCategoryList();
		var countOption = 0;
		
		$('#productDiscountRate').on('keyup', function() {
		    if (/\D/.test(this.value)) {
		        this.value = this.value.replace(/\D/g, '')
		        alert('숫자만 입력가능합니다.');
		    }
		  if (this.value > 100) {
		      this.value = 100;
		      alert('100이하만 가능합니다.');
		  }
		});
		$('.modal_productQuantity').on('keyup', function() {
		    if (/\D/.test(this.value)) {
		        this.value = this.value.replace(/\D/g, '')
		        alert('숫자만 입력가능합니다.');
		    }
		
		});
		$('#productPrice').on('keyup', function() {
		    if (/\D/.test(this.value)) {
		        this.value = this.value.replace(/\D/g, '')
		        alert('숫자만 입력가능합니다.');
		    }
		});
		
		$('#btn_product_insert').click(function(event){
			event.preventDefault();
			var str = '<input type="hidden">';
			$(".deletefile").each(function(index){
				str += "<input type='hidden' value='"+$(this).attr("href")+"' name='files["+index+"]'>"
			});
			$("#form_product_insert").append(str);
			$("#form_product_insert").submit();
		});
		
		$('#btn_product_list').click(function(event){
			event.preventDefault();
			location.href="/admin/product/list";
		});
		
		$(".fileDrop").on("dragenter dragover", function(event){
			event.preventDefault();
		});

		$(".fileDrop").on("drop", function(event){
			event.preventDefault();		
			var files = event.originalEvent.dataTransfer.files;
			var file = files[0];			
			var formData = new FormData();
			formData.append("file",file);
			$.ajax({
				type : 'post',
				url : '/uploadajax',
				dataType : 'text',
				data : formData,
				processData : false,
				contentType : false,					
				success : function(result){						
					var str = "<li class='col-xs-4'><a href ='/displayfile?filename="+getImageLink(result)+"'>";
					if(checkImage(result)){
						str += "<img src = '/displayfile?filename="+result+"' />";
					} else{
						str += "<img src = '/resources/show.jpg'/>";
					}
					
					str += "</a><p class='originalfilename'><a class='deletefile' href='"+result+"'><span class='glyphicon glyphicon-trash'></span></a>";
					str += getOriginalName(result)+"</p></li>";
					$(".uploadedList").append(str);
				}
			});
		})
			
		$(".uploadedList").on("click", ".deletefile", function(event){
			event.preventDefault();
			var that = $(this);

			$.ajax({
				type : 'post',
				url : '/deletefile',
				dataType : 'text',
				data : {
					filename : that.attr("href")
				},
				success : function(result){						
						that.parent("p").parent("li").remove();
				}
			});
		});

		$(".tbl_product_category").on("click", ".link_product_category", function(event){
			event.preventDefault();
			var that = $(this);
			var str = '';
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
							str += '<li><a href="'+list[i].categoryNo+'" class="link_product_category'
							if(that.attr("data-degree")==2)
								 str +=' product_category_minimum'
							str += '" data-degree="'+list[i].categoryDegree+'" data-name="'+list[i].categoryName+'">'+list[i].categoryName+'</a></li>';
						}
						var id = "#ul_product_category_"+degree;
						$(id).html(str);		
					}
				});
		});
		$(".tbl_product_category").on("click", ".product_category_minimum", function(event){
			event.preventDefault();
			var that = $(this);
			var str = '';
			
			str += '<a href="'+that.attr("href")+'" class="link_product_category'
			str += '" data-degree="'+that.attr("data-degree")+'" data-name="'+that.attr("data-name")+'">'+that.attr("data-name")+'</a>';
			str += '<button type="button" class="btn btn-primary" id="btn_product_category_delete">삭제</button>';					
			$('.product_category_selected').html(str);		
		});
		$(".product_category_selected").on("click", ".link_product_category", function(event){
			event.preventDefault();
			var that = $(this);
			var productCategory = document.getElementById('productCategory');
			productCategory.setAttribute("value",that.attr("data-name"));
			$('.form_product_category_number').html('<input type="hidden" name="categoryNo" value="'+that.attr("href")+'">')
		});
		$(".product_category_selected").on("click", "#btn_product_category_delete", function(event){
			event.preventDefault();
			var that = $(this);
	
			$(".form_product_category_number").children().remove();
			$("#productCategory").removeAttr("value")
			that.parent().children().remove();
			
		});
		$(".div_product_file").on("click", "#btn_product_file", function(event){
			event.preventDefault();			
			if(document.getElementById("input_product_file").files[0]==null){
			alert("사진이 없습니다.");
			}else{
				var formData = new FormData(document.getElementById('form_product_file'));
				
				$.ajax({
					type : 'post',
					url : '/uploadajax',
					dataType : 'text',
					data : formData,
					processData : false,
					contentType : false,					
					success : function(result){						
						var str = "<li class='col-xs-4'><a href ='/displayfile?filename="+getImageLink(result)+"'>";
						if(checkImage(result)){
							str += "<img src = '/displayfile?filename="+result+"' />";
						} else{
							str += "<img src = '/resources/show.jpg'/>";
						}
						
						str += "</a><p class='originalfilename'><a class='deletefile' href='"+result+"'><span class='glyphicon glyphicon-trash'></span></a>";
						str += getOriginalName(result)+"</p></li>";
						$(".uploadedList").append(str);
						document.getElementById("form_product_file").reset();
					}
				});
			}
		});
		$(".modal-footer").on("click", ".modal-insert", function(){
			var productColor = $(".modal_productColor").val();
			var productSize = $(".modal_productSize").val();
			var productQuantity = $(".modal_productQuantity").val();
			var str = '';
			str += '<div class="col-sm-4 product_option_idx_'+countOption+'"><p>옵션 '+(countOption+1)+'<button type="button" class="btn btn-primary btn_product_option_delete" style="float:right">옵션 삭제 </button></p>';
			str += '<div class="row"><div class="col-sm-2"><label for="productOptionList['+countOption+'].productColor">색상</label></div><div class="col-sm-10"><input name="productOptionList['+countOption+'].productColor" value="'+productColor+'" class="form-control"></div></div>';
			str += '<div class="row"><div class="col-sm-2"><label for="productOptionList['+countOption+'].productSize">사이즈</label></div><div class="col-sm-10"><input name="productOptionList['+countOption+'].productSize" value="'+productSize+'" class="form-control"></div></div>';
			str += '<div class="row"><div class="col-sm-2"><label for="productOptionList['+countOption+'].productQuantity">수량</label></div><div class="col-sm-10"><input name="productOptionList['+countOption+'].productQuantity" required value="'+productQuantity+'" class="form-control"></div></div></div>'; 
			
			
			countOption++;
			$('.div_product_option').append(str);
		});
		$(".div_product_option").on("click", ".btn_product_option_delete", function(event){
			event.preventDefault();	
			var that = $(this);
			that.parent().parent().remove();
		});
		
		$.getJSON("/getAttach/" + productNo, function(arr) {
			console.log("getJson")
			for(var i = 0; i < arr.length; i++) {
			var str	= new StringBuffer();
			str.append('<li class="col-xs-4">');
			str.append('<a herf="/displayfile?filename=' + getImageLink(arr[i]) + '">');
			if(checkImage(arr[i])) {
				str.append('<img src="/displayfile?filename=' + arr[i] + '"/>');
			} else {
				str.append('<img src="/resources/show.png"/>');
			}						
			str.append('</a>');
			str.append('<p class="orifilename">');
			str.append('<a class="deletefile" href="' + arr[i] + '"><span class="glyphicon glyphicon-trash"></span></a>');
			str.append(getOriginalName(arr[i]));
			str.append('</p>');
			str.append('</li>');
		
			var resultstr = str.toString();
			$(".uploadedList").append(resultstr);
			}
			
		});
	});

		function getCategoryList(){
			var str = '';			
			$.getJSON("/product_Category", function(data){
				for(var i = 0 ; i < data.length ; i++){
					str += '<li><a href="'+data[i]["categoryNo"]+'" class="link_product_category" data-degree="'+data[i]["categoryDegree"]+'">'+data[i]["categoryName"]+'</a></li>';
				}
				$("#ul_product_category_1").html(str);				
			});
		};
	</script>
</body>
</html>