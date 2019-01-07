<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Fishers N Farmers</title>
<!-- Font awesome -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">
<!-- SmartMenus jQuery Bootstrap Addon CSS -->
<link href="css/jquery.smartmenus.bootstrap.css"
	rel="stylesheet">
<!-- Product view slider -->
<link rel="stylesheet" type="text/css"
	href="css/jquery.simpleLens.css">
<!-- slick slider -->
<link rel="stylesheet" type="text/css" href="css/slick.css">
<!-- price picker slider -->
<link rel="stylesheet" type="text/css"
	href="css/nouislider.css">
<!-- Theme color -->
<link id="switcher" href="css/theme.css" rel="stylesheet">
<!-- Top Slider CSS -->
<link href="css/slide.css" rel="stylesheet" media="all">

<!-- Main style sheet -->
<link href="css/style2.css" rel="stylesheet">

<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>
<link href="css/sidebar.css" rel="stylesheet">
<script src="js/jquery.min.js"></script>

<script>
var page = null;
$(document).ready(function(){
	$.ajax({
		url : "/admin/recomm/1",
		dataType : "json",
		method : "POST",
		success : function(data){
			display(data);
		},
		error : function(err){
			console.log("Error 발생 : " + err);
		}
	});
	
	$("#result").on("click",".recomm1Tr .btnRecomm",function(){
		 var id = $(this).parent().parent().attr("id");
		$.ajax({
			url : "/admin/recomm1/" + id,
			method : "PUT",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"pcode" : id
			}),
			success : function(data){
				if(data.code){
					alert("추천상품에 등록되었습니다.");
					location.href = "/admin/recomm";
				}
			},
			error : function(err) {
				console.log("Error 발생 : " + err);
			}
		});
	});
	
	$.ajax({
		url : "/admin/recomm1",
		dataType : "json",
		method : "GET",
		success : function(data){
			var str = "";
			var data = data.data;
			var count = data.length;
			if(count == 0) {
				str = "<tr>";  
				str += "<td colspan='6' align='center'>";
				str += "추천상품이 없습니다.</td>";
				str += "</tr>";
			}else if(count > 0){
				for (var i = 0; i < data.length; i++) {
					str += "<tr id=" + data[i].pcode + " class='recommTr'>";
					str += "<td>" + data[i].pcode + "</td><td>" + data[i].pname + "</td><td>"
							+ data[i].category + "</td><td>" + data[i].category2 + "</td><td>" 
							+ data[i].sell_num + "</td><td>"
							+ "<button type='button' class='btnCancel btn btn-success btn-sm'>취소</button></td>";
					str += "</tr>";
				}
			}
			console.log(count);
			$("#recomm").html(str);
		},
		error : function(err){
			console.log("Error 발생 : " + err);
		}
	});
	
	
	$("#recomm").on("click",".recommTr .btnCancel",function(){
		 var id = $(this).parent().parent().attr("id");
		$.ajax({
			url : "/admin/recomm/" + id,
			method : "PUT",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"pcode" : id
			}),
			success : function(data){
				if(data.code){
					alert("추천상품에서 제외 되었습니다.");
					location.href = "/admin/recomm";
				}
			},
			error : function(err) {
				console.log("Error 발생 : " + err);
			}
		});

	});
	
	
});
	
	function goPage(pge){
		page = pge;
		$.ajax({
			url : "/admin/recomm/" + pge,
			dataType : "json",
			method : "POST",
			success : function(result){
				display(result);
			}
		});
	}
	
	
	function display(result){
		var startPage = result.startPage;
		var endPage = result.endPage;
		var totalPage = result.totalPage;
		var pageSize = result.pageSize;
		page = result.page;  //current Page
		var data = result.data;
		var count = data.length;
		var str = null;
		if(count == 0) {
			str = "<tr>";
			str += "<td colspan='6' align='center'>";
			str += "등록된 상품이 없습니다.</td>";
			str += "</tr>";
		}else if(count > 0){
			for (var i = 0; i < count; i++) {
				str += "<tr id=" + data[i].pcode + " class='recomm1Tr'>";
				str += "<td>" + data[i].pcode + "</td><td>" + data[i].pname + "</td><td>"
						+ data[i].category + "</td><td>" + data[i].category2 + "</td><td>" 
						+ data[i].sell_num + "</td><td>"
						+ "<button type='button' class='btnRecomm btn btn-primary btn-sm'>등록</button></td>";
				str += "</tr>";

			}
		}
		$("#result").html(str);
		$("#paging").empty();
		$("#paging").attr("style", "text-align:center");
		var pageStr = "<nav><div class='text-center'><ul class='pagination'>";
		pageStr += "<li><a href='javascript:goPage(1)' aria-label='Previous'>";
		pageStr += "<span aria-hidden='true'>&lt;&lt;</span></a></li>";
		
		if(page == 1) {
			pageStr += "<li><a aria-label='Previous'>";
			pageStr += "<span aria-hidden='true'>&lt;</span></a></li>";
		}else if(page != 1) {
			pageStr += "<li><a href='javascript:goPage(" + (page - 1) 
					+")' aria-label='Previous'>";
			pageStr += "<span aria-hidden='true'>&lt;</span></a></li>";
		}
		

		
		for(var k = startPage ; k <= endPage ; k++){
			if(page == k) pageStr += "<li><a href='#'>" +
			k + "</a></li>";
			else pageStr += "<li><a href='javascript:goPage(" + k + ")'>" + k +
			"</a></li>";
		}
		
		if(page == totalPage) {
			pageStr += "<li><a href='#' aria-label='Next'> ";
			pageStr += "<span aria-hidden='true'>&gt;</span></a></li>";
			pageStr += "<li><a href='#' aria-label='Next'> ";
			pageStr += "<span aria-hidden='true'>&gt;&gt;</span></a></li></ul></div></nav>";
		}else if(page != totalPage){
			pageStr += "<li><a href='javascript:goPage(" + (page + 1) + ")'aria-label='Next'> ";
			pageStr += "<span aria-hidden='true'>&gt;</span></a></li>";
			pageStr += "<li><a href='javascript:goPage(" + totalPage + ")'aria-label='Next'> ";
			pageStr += "<span aria-hidden='true'>&gt;&gt;</span></a></li></ul></div></nav>";
		}
		
		$("#paging").html(pageStr);
	} 
	
	
</script>



</head>
<body>
	<jsp:include page="header.jsp" />
	<section id="aa-popular-category">
		<!-- 본문 -->
		<div id="wrapper">
			<!-- 사이드바 -->
			<div id="sidebar-wrapper">
				<div id="aa-sidebar-widget">
					<ul class="sidebar-nav">
						<h3>&nbsp;&nbsp;&nbsp;Category</h3>
						<li><a href="/admin/user">회원 관리</a></li>
						<li><a href="/admin/seller">판매자 관리</a></li>
						<li><a href="/admin/product">상품 관리</a></li>
						<li><a href="/admin/recomm">추천 상품 등록</a></li>
						<li><a href="/admin/board">게시판 관리</a></li>
					</ul>
				</div>
			</div>
			<!-- /사이드바 -->


			<div id="page-content-wrapper">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-9">
							<div class="panel panel-success">
								<div class="panel-heading">추천상품 목록</div>
								<table class="table">
									<thead>
										<tr>
											<th>상품코드</th>
											<th>상품명</th>
											<th>카테고리1</th>
											<th>카테고리2</th>
											<th>판매수</th>
											<th>관리</th>
										</tr>
									</thead>
									<tbody id="recomm">
									</tbody>
								</table>
							</div>
							<div>
								<div class="panel-body">
									<h3>추천상품 등록</h3>
									<hr />

									<div>
										<table class="table table-hover">
											<thead>
												<tr>
													<th>상품코드</th>
													<th>상품명</th>
													<th>카테고리1</th>
													<th>카테고리2</th>
													<th>판매수</th>
													<th>추천상품</th>
												</tr>
											</thead>
											<tbody id="result">
											<tbody>
											</tbody>
										</table>
										<div id="paging"></div>
									</div>
								</div>
							</div>



						</div>
					</div>

				</div>
			</div>
			<!-- /본문 -->
		</div>
	</section>

	<jsp:include page="footer.jsp" />
</body>
</html>