<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="org.cejug.arenapuj.to.UserTO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>=== Área Restrita ===</title>
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
		<link rel="stylesheet" href="soneca.css"/>
		<script type="text/javascript" src="xsl.js"></script>
	</head>
	<body>
		<div id="lado">
			<a href="#[resource/competition,templates/criapug.xsl]">Cria PUG</a>
			<a href="#[staticdata/lorenipsum.xml,templates/content.xsl]">Ver competições</a>
			<a href="#[staticdata/lorenipsum.xml,templates/content.xsl]">Propagandas pendentes</a>
			<a href="#[staticdata/lorenipsum.xml,templates/content.xsl]">Inscrições pendentes</a>
			<a href="index.jsp">Voltar</a>
		</div>
		<div id="centro" class="ui-widget-content ui-corner-all"></div>
		<script type="text/javascript" src="soneca.js"></script>
	</body>
</html>