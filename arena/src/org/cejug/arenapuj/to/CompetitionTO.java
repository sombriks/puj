package org.cejug.arenapuj.to;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.xml.bind.annotation.XmlRootElement;

@Entity(name="COMPETITION")
@XmlRootElement(name = "competition")
public class CompetitionTO {
	
	@Id
	@Column(name="ID")
	@GeneratedValue
	private long id;
	@Column(name="NOME")
	private String nome;

	public CompetitionTO() {
	}

	public CompetitionTO(String n) {
		nome = n;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
}
