<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="myheader.jsp"%>
<script>
function popupOpen() {

	var popUrl = "http://www.deliverytracking.kr/"; 

	var popOption = "width=600, height=600, resizable=no, scrollbars=no, status=no;"; 

	window.open(popUrl, "", popOption);

}
$(document).ready(function(){
	var formObj = $("form");
	
	$("#btnbuy").bind("click", function(e){
		e.preventDefault();
		
		var operation = $(this).data("oper");
		
		console.log(operation);
		
		formObj.submit();
	});
});
</script>
<section id="aa-product-category">
	<!-- 본문 -->
	<div id="wrapper">
		<!-- 사이드바 -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<h3>&nbsp;&nbsp;&nbsp;Category</h3>
				<li><a
					href='/myorder?user_id=<c:out value="${user_id}"/>'>주문
						배송</a></li>
				<li><a href="mymessage.html">메세지</a></li>
				<li><a href="myrecentpage.html">최근 본 상품</a></li>
				<li><a
					href='/modifys?user_id=<c:out value="${user_id}"/>'>회원 정보
						수정</a></li>
				<li><a
					href='/remove?user_id=<c:out value="${user_id}"/>'>회원 탈퇴</a></li>
			</ul>
		</div>
		<div class="container">
			<h1>
				배송 현황
				<hr class="myhr">
			</h1>
			<table class="table">
				<thead>
					<tr>
						<th>운송장번호</th>
						<th>총금액</th>
						<th>주문상태</th>
						<th>수량</th>
						<th>상품정보</th>
						<th>배송조회</th>
						<th>구매확정</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${order }" var="order">
						<tr>
							<td><c:out value="${order.del_code}" /></td>
							<td><c:out value="${order.totalprice}" /></td>
							<td><c:out value="${order.status}" /></td>
							<td><c:out value="${order.product_count}" /></td>
							<td><img
								src='/resources/img/<c:out value="${product.filename}"/>'
								alt="afasgaw" />
							<c:out value="${order.pname}" /></td>
							<td>
								<button type="button" class="btn btn-success">
									<a href="javascript:popupOpen();">배송조회</a>
								</button>
							</td>
							<td>
								<button type="submit" id="btnbuy" data-oper='modifyorder' class="btn btn-success">구매확정</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</section>
<%@include file="myfooter.jsp"%>