<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>
<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("form");

		$('button').on("click", function(e) {
			e.preventDefault();

			var operation = $(this).data("oper");

			console.log(operation);

			formObj.submit();
		});
	});
</script>
<section id="sd-ss">
	<!-- 본문 -->
	<div id="wrapper">
		<!-- 사이드바 -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<h3>&nbsp;&nbsp;&nbsp;Category</h3>
				<li><a href="mydelivery.html">주문 배송</a></li>
				<li><a href="mymessage.html">메세지</a></li>
				<li><a href="myrecentpage.html">최근 본 상품</a></li>
				<li><a href="myfix.html">회원 정보 수정</a></li>
				<li><a href="myout.html">회원 탈퇴</a></li>
			</ul>
		</div>
		<!-- /사이드바 -->
		<div class="col-md-12">
			<div class="aa-memberlogin-area">
				<div class="wrapper">
					<div class="col-md-10">
						<div class="aa-memberlogin-login">
							<h1 id="title">
								<strong>회원탈퇴</strong>
							</h1>
							<hr width="100%">
							<label id="signuppswd" name="signuppswd"
								class="col-md-offset-1 col-sm-3 control-label">비밀번호</label>
							<div class="col-sm-5">
								<input type="password" class="form-control" id="signuppswd"
									name="password" placeholder="비밀번호를 입력해 주세요." required />
							</div>
							<br /> <br /> <br />
							<button type="submit"  id="btnregister" data-oper='remove' class="btn btn-success col-md-offset-4">탈퇴하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<%@include file="../includes/footer.jsp"%>