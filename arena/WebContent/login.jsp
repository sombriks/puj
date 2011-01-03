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
	</head>
	<body>
		<div id="abas" style="width:600px">
			<ul>
				<li><a href="#t1">Login</a></li>
				<li><a href="#t2">Registrar</a></li>
			</ul>
			<div id="t1">
				<fieldset>
					<legend>usuário</legend><input/>&nbsp;<span></span>
				</fieldset>
				<fieldset>
					<legend>senha</legend><input/>&nbsp;<span></span>
				</fieldset>
				<button>Enviar</button>
			</div>
			<div id="t2">
				<fieldset>
					<legend>usuário</legend><input/>&nbsp;<span></span>
				</fieldset>
				<fieldset>
					<legend>email</legend><input/>&nbsp;<span></span>
				</fieldset>
				<fieldset>
					<legend>senha</legend><input/>&nbsp;<span></span>
				</fieldset>
				<fieldset>
					<legend>confirma senha</legend><input/>&nbsp;<span></span>
				</fieldset>
				<button>Enviar</button>
			</div>
		</div>
		<script type="text/javascript" src="login.js"></script>
	</body>
</html>