<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login</title>
		<!-- START jQuery support (the order is important!)-->
		<link rel="stylesheet" href="base/jquery.ui.all.css"/>
		<script type="text/javascript" src="jquery-1.4.4.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.core.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.widget.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.tabs.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.mouse.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.sortable.js"></script>
		<!-- END jQuery support -->
		<link rel="stylesheet" href="carregamento.css"/>
		<link rel="stylesheet" href="login.css"/>
		<script type="text/javascript" src="carregamento.js"></script>
	</head>
	<body>
		<a id="inicio" href="index.jsp">Início</a>
		<div id="abas" style="width:600px">
			<ul>
				<li><a href="#t1">Login</a></li>
				<li><a href="#t2">Registrar</a></li>
			</ul>
			<div id="t1">
				<fieldset class="ui-widget-content ui-corner-all">
					<legend class="ui-widget-header ui-corner-all">usuário</legend>
					<input/>&nbsp;<span></span>
				</fieldset>
				<fieldset class="ui-widget-content ui-corner-all">
					<legend class="ui-widget-header ui-corner-all">senha</legend>
					<input type="password"/>&nbsp;<span></span>
				</fieldset>
				<button>Enviar</button>
			</div>
			<div id="t2">
				<fieldset class="ui-widget-content ui-corner-all">
					<legend class="ui-widget-header ui-corner-all">usuário</legend>
					<input/>&nbsp;<span></span>
				</fieldset>
				<fieldset class="ui-widget-content ui-corner-all">
					<legend class="ui-widget-header ui-corner-all">email</legend>
					<input/>&nbsp;<span></span>
				</fieldset>
				<fieldset class="ui-widget-content ui-corner-all">
					<legend class="ui-widget-header ui-corner-all">senha</legend>
					<input type="password"/>&nbsp;<span></span>
				</fieldset>
				<fieldset class="ui-widget-content ui-corner-all">
					<legend class="ui-widget-header ui-corner-all">confirma senha</legend>
					<input type="password"/>&nbsp;<span></span>
				</fieldset>
				<button>Enviar</button>
			</div>
		</div>
		<div style="display:none" id="showLoading"><!-- visual response for XHR --></div>
		<script type="text/javascript" src="login.js"></script>
	</body>
</html>