<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
</head>
<body>
<%
	request.getSession().removeAttribute("user");
%>
<h1>Logout</h1>
<script type="text/javascript">
	setTimeout(function(){
		window.location.href="index.jsp";
	},2000);
</script>
</body>
</html>