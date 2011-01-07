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
		<script type="text/javascript" src="ui/jquery.ui.button.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.sortable.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.draggable.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.position.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.resizable.js"></script>
		<script type="text/javascript" src="ui/jquery.ui.dialog.js"></script>
		<script type="text/javascript" src="ui/jquery.effects.core.js"></script>
		<!-- END jQuery support -->
		<link rel="stylesheet" href="carregamento.css"/>
		<link rel="stylesheet" href="login.css"/>
		<script type="text/javascript" src="carregamento.js"></script>
	</head>
	<body>
		<div id="lado">
			<a id="inicio" href="index.jsp">Voltar</a>
		</div>
		<div id="centro">
			<ul>
				<li><a href="#t1">Login</a></li>
				<li><a href="#t2">Registrar</a></li>
			</ul>
			<div id="t1">
				<p></p>
				<fieldset class="ui-widget-content ui-corner-all">
					<legend class="ui-widget-header ui-corner-all">login</legend>
					<input/>
				</fieldset>
				<fieldset class="ui-widget-content ui-corner-all">
					<legend class="ui-widget-header ui-corner-all">senha</legend>
					<input type="password"/>
				</fieldset>
				<p>
					<button>Enviar</button>
				</p>
			</div>
			<div id="t2">
				<p></p>
				<fieldset class="ui-widget-content ui-corner-all">
					<legend class="ui-widget-header ui-corner-all">login</legend>
					<input/>
				</fieldset>
				<fieldset class="ui-widget-content ui-corner-all">
					<legend class="ui-widget-header ui-corner-all">email</legend>
					<input/>
				</fieldset>
				<fieldset class="ui-widget-content ui-corner-all">
					<legend class="ui-widget-header ui-corner-all">senha</legend>
					<input type="password"/>
				</fieldset>
				<fieldset class="ui-widget-content ui-corner-all">
					<legend class="ui-widget-header ui-corner-all">confirma senha</legend>
					<input type="password"/>
				</fieldset>
				<p>
					<button>Cadastrar</button>
				</p>
			</div>
		</div>
		<div style="display:none" id="showLoading"><!-- visual response for XHR --></div>
		<script type="text/javascript" src="login.js"></script>
	</body>
</html>