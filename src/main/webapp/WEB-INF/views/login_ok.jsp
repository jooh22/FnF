<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String user_id = request.getParameter("user_id");

	
		
		session.setAttribute("user_id", user_id);
		response.sendRedirect("/login");        

%>
<%-- <td>${user_id}</td>  --%>
	

</body>
</html>