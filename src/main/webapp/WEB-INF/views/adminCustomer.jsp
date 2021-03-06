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
		url : "/admin/user/1",
		dataType : "json",
		method : "POST",
		success : function(data){
			display(data);
		},
		error : function(err){
			console.log("Error 발생 : " + err);
		}
	});
	
	$("#result").on("click",".deleteTr .btnDelete",function(){
		 var id = $(this).parent().parent().attr("id");
		$.ajax({
			url : "/admin/user/" + id,
			method : "PUT",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"user_id" : id
			}),
			success : function(data){
				if(data.code){
					alert("Update Success");
					location.href = "/admin";
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
			url : "/admin/user/" + pge,
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
		page = result.page;
		var data = result.data;
		var count = data.length;
		var str = null;
		if(count == 0) {
			str = "<tr>";
			str += "<td colspan='6' align='center'>";
			str += "등록된 회원이 없습니다.</td>";
			str += "</tr>";
		}else if(count > 0){
			for (var i = 0; i < count; i++) {
				str += "<tr id=" + data[i].user_id + " class='deleteTr'>";
				str += "<td>" + data[i].user_id + "</td><td>" + data[i].user_name + "</td><td>"
						+ data[i].email + "</td><td>" + data[i].phone
						+ "</td>" + "<td>" + data[i].birth + "</td>" + 
						"<td><button type='button' class='btnDelete btn btn-danger btn-sm'>삭제</button></td>";
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
	
	function dataSearch(){
		var user_id = $("#user_id").val();
		var user_name = $("#user_name").val();
		var email = $("#email").val();
		var phone = $("#phone").val();
		if(user_id == "" && user_name == "" && email == "" && phone == "" ){
			alert("검색할 내용을 입력해주세요.");
			return;
		}else{
			$.ajax({
				 url : "/admin/user/search/1",
				 dataType : "json", 
				 method : "POST",
				 contentType : "application/json; charset=UTF-8",
				 data : JSON.stringify({
					 "user_id" :  user_id,
					 "user_name" : user_name,
					 "email" : email,
					 "phone" : phone
				 }),
				 success : function(result){
					 displySearch(result);
				 },
				 error : function(err){
					 console.log("err 발생 : " + err);
				 }
			 });
		}
	}
	
	function goSearchPage(pge) {
		page = pge;
		$.ajax({
			url : "/admin/user/search/"+ page,
			dataType : "json",
			method : "POST",
			success : function(result) {
				displySearch(result);
			}
		});
	}
	
	 function displySearch(result){
			var totalCount = result.totalCount;
		 	var startPage = result.startPage;
			var endPage = result.endPage;
			var totalPage = result.totalPage;
			var pageSize = result.pageSize;
			page = result.page; 
			var result = result.data;
			var count = result.length;

			var str = null;
			if (count == 0) {
				str +="<tr><td colspan='6' align='center'>등록된 회원이 없습니다.</td></tr>";
			} else if (count > 0) {
				for (var i = 0; i < count; i++) {
					str += "<tr id=" + result[i].user_id + " class='deleteTr'>";
					str += "<td>" + result[i].user_id + "</td><td>" + result[i].user_name + "</td><td>"
							+ result[i].email + "</td><td>" + result[i].phone
							+ "</td>" + "<td>" + result[i].birth + "</td>" + 
							"<td><button type='button' class='btnDelete btn btn-danger btn-sm'>삭제</button></td>";
					str += "</tr>";
				}
			}

			$("#result").html(str);
			$("#paging").empty();
			$("#paging").attr("style", "text-align:center");

			
			
			
			var pageStr = null;
			if (page == 1) { 
				pageStr = "<button type='button' class='btn btn-info btn-sm'>처음</button>&nbsp;&nbsp;&nbsp;";
				pageStr += "<button type='button' class='btn btn-default btn-sm'>이전</button>&nbsp;&nbsp;";
			} else if (page != 1) {
				pageStr = "<a href='javascript:goSearchPage(1)'><button type='button' class='btn btn-info btn-sm'>처음</button></a>&nbsp;&nbsp;&nbsp;";
				if((startPage - pageSize) <= 0){
					pageStr += "<a href='javascript:goSearchPage(" + 1 + ")'><button type='button' class='btn btn-default btn-sm'>이전</button></a>&nbsp;&nbsp;&nbsp;";
				}else{
					pageStr += "<a href='javascript:goSearchPage(" + (startPage - pageSize) 	+ ")'><button type='button' class='btn btn-default btn-sm'>이전</button></a>&nbsp;&nbsp;&nbsp;";
				}
			}

			if(endPage <=10){ 
				for (var k = 1; k <= endPage; k++) {
					if (page == k) 
						pageStr += "<button class='btn btn-default btn-sm active' type='button'>"+k+"</button>&nbsp;&nbsp;&nbsp;";
					else 
						pageStr += "<a href='javascript:goSearchPage(" + k + ")'><button class='btn btn-default btn-sm' type='button'>" + k + "</button></a>&nbsp;&nbsp;&nbsp;";
				}
			}else{
				for (var k = startPage; k <= endPage; k++) {
					if (page == k)
						pageStr += "<button class='btn btn-default btn-sm active' type='button'>"+k+"</button>&nbsp;&nbsp;&nbsp;";
					else  
						pageStr += "<a href='javascript:goSearchPage(" + k + ")'><button class='btn btn-default btn-sm' type='button'>" + k + "</button></a>&nbsp;&nbsp;&nbsp;";
				}
			}
			

			if (page == totalPage) {
				pageStr += "<button type='button' class='btn btn-default btn-sm'>다음</button>&nbsp;&nbsp;&nbsp;";
				pageStr += "<button type='button'  class='btn btn-info btn-sm'>끝</button>";
			} else if (page != totalPage) {
				pageStr += "<a href='javascript:goSearchPage(" + (startPage + pageSize) + ")'><button type='button' class='btn btn-default btn-sm'>다음</button></a>&nbsp;&nbsp;&nbsp;";
				pageStr += "<a href='javascript:goSearchPage(" + totalPage + ")'><button type='button'  class='btn btn-info btn-sm'>끝</button></a>";
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
							<!-- 회원검색 -->
							<div class="well well-lg">
								<h3>회원 검색</h3>
								<hr />
								<div>
										<div class="row">
											<div class="col-md-6">
												<label for="user_id">아이디</label> <input type="text"
													class="form-control" id="user_id" name="user_id" placeholder="아이디를 입력해주세요.">
											</div>
											<div class="col-md-6">
												<label for="user_name">이름</label> <input
													type="text" class="form-control" id="user_name" name="user_name"
													placeholder="이름을 입력해주세요.">
											</div>
										</div>
										<div class="form-group"></div>
										<div class="row">
											<div class="col-md-6">
												<label for="email">이메일</label> <input
													type="text" class="form-control" id="email" name="email"
													placeholder="이메일을 입력해주세요.">
											</div>
											<div class="col-md-6">
												<label for="phone">휴대전화</label> <input
													type="text" class="form-control" id="phone" name="phone"
													placeholder="전화번호를 입력해주세요.">
											</div>
										</div>
										<div class="form-group"></div>
								</div>
								<div class="form-group"></div>
								<div class="row">
									<div class="col-md-2"></div>
									<div class="col-md-8">
										<button type="button" onclick="dataSearch()" class="btn btn-primary btn-md btn-block">검색</button>
									</div>
									<div class="col-md-2"></div>
								</div>
							</div>
							<!-- /회원검색 -->
							<!-- 회원 목룍 -->


							<div>
								<div class="panel-body">
									<h3>회원 목록</h3>
									<hr />
									<div>
										<table class="table table-hover">
											<thead>
												<tr>
													<th>아이디</th>
													<th>이름</th>
													<th>이메일</th>
													<th>휴대전화</th>
													<th>생일</th>
													<th>관리</th>
												</tr>
											</thead>
											<tbody id="result">
											</tbody>
										</table>
										<div id="paging"></div>
									</div>
								</div>
							</div>

							<!-- /회원 목룍 -->
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