<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="seller" value="${data}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../css/bootstrap.css" rel="stylesheet">
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#txtEmail").val("${seller.email}");	
	});
</script>
<title>메일 보내기</title>
</head>
<body>
	<div class="container">
	
		<form action="/admin/mailSending" method="post">
			<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<h3>메일 보내기</h3>
				<p>
				<div align="center">
					<input type="text" name="tomail" size="60"
						class="form-control" id="txtEmail">
				</div>
				<p>
				<div align="center">
					<input type="text" name="title" size="120" value="판매자로 승인되지 않았습니다."
						class="form-control">
				</div>
				<p>
				<div align="center">
					<textarea name="content" cols="120" rows="12" style="resize: none"
						placeholder="거절 사유를 입력해주세요" class="form-control"></textarea>
				</div>
				<p>
				<div align="center">
					<input type="submit" value="메일 보내기" class="btn btn-warning">
				</div>
				</div>
				<div class="col-md-3"></div>
			</div>
		</form>
	</div>
</body>
</html>
