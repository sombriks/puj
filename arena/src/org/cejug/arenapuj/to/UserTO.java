package org.cejug.arenapuj.to;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlRootElement;

import org.cejug.arenapuj.util.MD5Util;

/**
 * isto representa um usuário. Ele pode ser qualquer agente externo que use o
 * sistema: desde um aluno até um colégio, ou mesmo um patrocinador.
 * 
 * @author sombriks
 * 
 */
@Entity(name = "USER")
@XmlRootElement(name = "user")
public class UserTO {

	@Id
	@Column(name = "ID")
	@GeneratedValue
	private long id;
	@Column(name = "NOME", unique = true)
	private String nome;
	@Column(name = "SENHA")
	private String senha;
	@Column(name = "EMAIL")
	private String email;
	@Column(name = "ATIVO")
	private boolean ativo;
	@Transient
	private String mailHex;

	public UserTO() {
	}

	public UserTO(String n) {
		nome = n;
	}

	public UserTO(long i, String n) {
		nome = n;
		id = i;
	}

	public UserTO(long i, String n, String m, Boolean h) {
		nome = n;
		id = i;
		if (h)
			mailHex = MD5Util.md5Hex(m);
		else
			email = m;
	}

	public UserTO(long i) {
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

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}

	public String getMailHex() {
		return mailHex;
	}

	public void setMailHex(String mailHex) {
		this.mailHex = mailHex;
	}

}
