<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="org.cejug.arenapuj.to.UserTO,org.cejug.arenapuj.to.RoleTO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Arena PUJ - Prêmio Universitário Felipe Gaucho</title>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<!-- START jQuery support (the order is important!)-->
		<link rel="stylesheet" href="base/jquery.ui.all.css"/>
		<script type="text/javascript" src="jquery-1.4.4.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.core.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.widget.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.tabs.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.mouse.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.button.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.sortable.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.draggable.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.position.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.resizable.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.dialog.js"></script>
		<script type="text/javascript" src="ui/jquery.effects.core.js"></script>
		<!-- END jQuery support -->
		<link rel="stylesheet" href="index.css"/>
		<link rel="stylesheet" href="carregamento.css"/>
		<script type="text/javascript" src="xsl.js"></script>
		<script type="text/javascript" src="carregamento.js"></script>
	</head>
	<body>
		<div id="lado">
			<!-- subvertendo o uso dos href's -->
			<a href="#[staticdata/inicio.xml,templates/content.xsl]">Início</a><br/>
			<a href="#[resource/user,templates/users.xsl]">Participantes</a><br/>
			<a href="#[resource/competition,templates/listapug.xsl]">Competições</a><br/>
			<!-- auth -->
			<%UserTO user = (UserTO) request.getSession().getAttribute("user");
				if(user == null){%>
					<a href="login.jsp">Login/Register</a>
				<%}else{%>
					<a href="puj.jsp">Participar do PUG</a>
					<!-- finally -->					
					<a href="logout.jsp">Logout(<%=user.getNome()%>)</a>
				<%if("soneca".equals(user.getNome())){%>
					<a href="soneca.jsp">Área administrativa</a>
				<%}%>
			<%}%>
		</div>
		<div id="centro" class="ui-widget-content ui-corner-all"><!-- dynamic content goes here --></div>
		<div id="showLoading" style="display:none"><!-- visual response for XHR --></div>
		<script type="text/javascript" src="index.js"></script>
	</body>
</html>