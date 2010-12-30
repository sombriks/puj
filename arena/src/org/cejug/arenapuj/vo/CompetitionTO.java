package org.cejug.arenapuj.vo;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "competition")
public class CompetitionTO {

	private String nome;

	public CompetitionTO() {
	}

	public CompetitionTO(String n) {
		nome=n;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
}
