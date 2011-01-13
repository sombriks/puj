package org.cejug.arenapuj.to;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * isto representa um PUJ
 * 
 * @author sombriks
 * 
 */
@Entity(name = "COMPETITION")
@XmlRootElement(name = "competition")
public class CompetitionTO {

	@Id
	@Column(name = "ID")
	@GeneratedValue
	private long id;
	@Column(name = "NOME", unique = true)
	private String nome;
	@Column(name = "ATIVA")
	private boolean ativa;
	@Temporal(TemporalType.DATE)
	@Column(name = "DT_CADASTRO")
	private Date dtCadastro;

	public CompetitionTO() {
	}

	public CompetitionTO(long i, String n) {
		nome = n;
		id = i;
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

	public boolean isAtiva() {
		return ativa;
	}

	public void setAtiva(boolean ativa) {
		this.ativa = ativa;
	}

	public Date getDtCadastro() {
		return dtCadastro;
	}

	public void setDtCadastro(Date dtCadastro) {
		this.dtCadastro = dtCadastro;
	}
}
