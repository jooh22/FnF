<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="myheader.jsp"%>
<script type="text/javascript">
history.replaceState({}, null, location.pathname);
	$(document).ready(function(){
		var formObj = $("form");
		
		$('button').on("click", function(e){
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
				<li><a href='/myorder?user_id=<c:out value="${user_id}"/>'>주문 배송</a></li>
				<li><a href="mymessage.html">메세지</a></li>
				<li><a href="myrecentpage.html">최근 본 상품</a></li>
				<li><a href='/modifys?user_id=<c:out value="${user_id}"/>'>회원 정보 수정</a></li>
				<li><a href='/remove?user_id=<c:out value="${user_id}"/>'>회원 탈퇴</a></li>
			</ul>
		</div>
		<div class="col-md-12">
			<div class="aa-memberlogin-area">
				<div class="wrapper">
					<div class="col-md-10">
						<div class="aa-memberlogin-login">
							<h1 id="title">
								<strong>회원 정보 수정</strong>
							</h1>
							<hr width="100%">
							<form action="/modify" id="signupform" name="signupform" method="post">
								<label id="signid" name="signeid"
									class="col-md-offset-1 col-sm-3  control-label">ID</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" name='user_id'
										id='user_id' value='<c:out value="${member.user_id }"/>'
										readonly="readonly">
								</div>
								<br /> <br /> <br /> <label id="signupemail"
									name="signupemail"
									class="col-md-offset-1 col-sm-3 control-label">Email</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="email" name="email"
										value='<c:out value="${member.email }"/>' />
								</div>
								<br /> <br /> <br /> <label id="signuppswd" name="password"
									class="col-md-offset-1 col-sm-3 control-label">비밀번호</label>
								<div class="col-sm-5">
									<input type="password" class="form-control" id="signuppswd"
										name="password" value='<c:out value="${member.password }"/>' />
								</div>
								<br /> <br /> <br /> <label id="signupname" name="signupname"
									class="col-md-offset-1 col-sm-3 control-label">이름</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="signupname"
										name="user_name"
										value='<c:out value="${member.user_name }"/>'
										 />
								</div>
								<br /> <br /> <br /> <label id="signupnum" name="signupnum"
									class="col-md-offset-1 col-sm-3 control-label">휴대 전화</label>
								<div class="col-sm-5">
									<input type="phone number" class="form-control" id="signupnum"
										name="phone" value='<c:out value="${member.phone }"/>' />
								</div>
								<br /> <br /> <br /> <label id="signupname" name="signupbirth"
									class="col-md-offset-1 col-sm-3 control-label">생일</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="signupbirth"
										name="birth" value='<c:out value="${member.birth }"/>'
										readonly="readonly" />
								</div>
								<br /> <br /> <br /> <label id="signupquestion" name="signupquestion"
									class="col-md-offset-1 col-sm-3 control-label">비밀번호 찾기
									질문</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="signupquestion"
										name="question" value='<c:out value="${member.question }"/>' />
								</div>
								<br /> <br /> <br /> <label id="signupanswer" name="signupanswer"
									class="col-md-offset-1 col-sm-3 control-label">답변</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="signupanswer"
										name="answer" value='<c:out value="${member.answer }"/>' />
								</div>
								<br /><br />
								<hr width="100%">
								<br />
								 <button type="submit"  id="btnregister" data-oper='modify' class="btn btn-success col-md-offset-4">수정하기</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<%@include file="myfooter.jsp"%>