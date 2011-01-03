package org.cejug.arenapuj.to;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.xml.bind.annotation.XmlRootElement;

@Entity(name="USER")
@XmlRootElement(name="user")
public class UserTO {
	
	@Id
	@Column(name="ID")
	@GeneratedValue
	private long id;
	@Column(name="NOME")
	private String nome;
	@Column(name="SENHA")
	private String senha;
	

	public UserTO(){}
	
	public UserTO(String n){
		nome=n;
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
	
 }
