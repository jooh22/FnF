<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:foreach var="row" items=${list}>
		<li>
			<figure>
				<a class="aa-product-img" href="#"><img src="img/farm/farm.jpg"
					alt="polo shirt img"></a>
				<a class="aa-add-card-btn" href="#"><span class="fa fa-search"></span>View
					Detail</a>
			</figure>
			<figcaption>
				<h4 class="aa-product-title">
					<a href="#">${row.pname}</a>
				</h4>
				<span class="aa-product-price"><del>￦가격</del></span><span
					class="aa-product-price">&nbsp;&nbsp;￦할인 가격</span>
			</figcaption> <span class="aa-badge aa-sale" href="#">SALE</span>
		</li>
	</c:foreach>
</body>
</html>