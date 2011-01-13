<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="competition">
		<option value="{id}">
			<xsl:value-of select="nome"/>
		</option>
		<span/>
	</xsl:template>
	<!-- template -->
	<xsl:template match="/">
		<h1>Participar do PUG</h1>
		<div id="form">
			<p class="status"></p>
			<fieldset class="ui-corner-all ui-widget-content">
				<legend class="ui-widget-header ui-corner-all">Usuário</legend>
				<label id="lblusu"></label>
			</fieldset>
			<fieldset class="ui-corner-all ui-widget-content">
				<legend class="ui-widget-header ui-corner-all">Competição</legend>
				<select id="competicao">
					<!-- vide script, traremos as competições do serviço... -->
				</select>
			</fieldset>
			<fieldset class="ui-corner-all ui-widget-content">
				<legend class="ui-widget-header ui-corner-all">Papel desejado</legend>
				<select id="papel">
					<!-- vide script, traremos as roles do serviço... -->
				</select>
			</fieldset>
			<fieldset class="ui-corner-all ui-widget-content">
				<legend class="ui-widget-header ui-corner-all">Apelido do time</legend>
				<input id="nomeComp"/>
			</fieldset>
			<p>
				<button>Solicitar inscrição</button>
			</p>
		</div>
		<script type="text/javascript" src="templates/joinpug.js"></script>
	</xsl:template>
</xsl:stylesheet>