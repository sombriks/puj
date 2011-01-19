<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="org.cejug.arenapuj.to.entity.UserTO"%>
<%
	UserTO user = (UserTO) request.getSession().getAttribute("user");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Participar do PUG</title>
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
		<script type="text/javascript" src="ui/jquery.ui.autocomplete.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.resizable.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.dialog.js"></script>
		<script type="text/javascript" src="ui/jquery.effects.core.js"></script>
		<!-- END jQuery support -->
		<link rel="stylesheet" href="puj.css"/>
		<script type="text/javascript" src="xsl.js"></script>
		<script type="text/javascript" src="xml.js"></script>
		<script type="text/javascript">
			//transcendendo o usuário entre as dimensões
			var usuario = "<user><id><%=user.getId()%></id><nome><%=user.getNome()%></nome></user>";
		</script>
	</head>
	<body>
		<div id="lado">
			<a href="#[resource/competition,templates/joinpug.xsl]">Inscrever-se</a>
			<a href="#[resource/competition,templates/addhomework.xsl]">Submeter trabalho</a>
			<a href="#[staticdata/lorenipsum.xml,templates/content.xsl]">Avaliar trabalhos</a>
			<a href="#[staticdata/lorenipsum.xml,templates/content.xsl]">Criar propaganda</a>
			<a href="logout.jsp">Logout(<%=user.getNome()%>)</a>
			<a href="index.jsp">Voltar</a>
		</div>
		<div id="centro" class="ui-widget-content ui-corner-all"></div>
		<script type="text/javascript" src="puj.js"></script>
	</body>
</html>