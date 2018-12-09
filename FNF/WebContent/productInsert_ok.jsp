<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:useBean id="ic" class="com.fnf.controller.InsertController" />
<jsp:useBean id="product" class="com.fnf.model.ProductVO" />
<fmt:requestEncoding value="utf-8" />

<%
	//String saveDirectory = application.getRealPath(".") + "/files";
	String sd = "C:/jsphome/FNF/WebContent/img";
	int maxPostSize = 1024 * 1024 * 10; //10MB
	MultipartRequest mr = new MultipartRequest(request, sd, maxPostSize, "utf-8",
			new DefaultFileRenamePolicy());
	
	product.setSellerid(mr.getParameter("sellerid"));//이전 페이지의 input tag name
	product.setPcode(mr.getParameter("pcode"));//상품코드
	product.setPname(mr.getParameter("pname"));//상품명
	product.setOrigin(mr.getParameter("origin"));//원산지
	product.setUnit(mr.getParameter("unit"));//단위
	product.setCategory(mr.getParameter("category"));//카테고리(상품종류)
	product.setStock(Integer.parseInt(mr.getParameter("stock")));//int형변환 재고
	product.setPrice(Integer.parseInt(mr.getParameter("price")));//판매가
	
	String pcontents = mr.getParameter("pcontents");//상품내용
	pcontents = pcontents.replace("<", "&lt;");
	pcontents = pcontents.replace(">", "&gt;");
	pcontents = pcontents.replace("'", "''");
	pcontents = pcontents.replace("\r\n", "<br />");
	product.setPcontents(pcontents);
	
	String filename = mr.getFilesystemName("filename");
	if(filename == null) filename = "";
	product.setFilename(filename);//파일명
%>
<c:set var="row" value="${ic.insert(product)}"/>
<c:if test="${row eq 1}"><!-- 성공 -->
	<script>
		//alert("Insert Success");
		location.href = "productList.jsp";
	</script>
</c:if>
<c:if test="${row ne 1 }">
	<script>
		alert("Failure");
	</script>
</c:if>