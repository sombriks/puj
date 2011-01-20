package org.cejug.arenapuj.to.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.xml.bind.annotation.XmlRootElement;

@Entity(name = "ROLE")
@XmlRootElement(name = "role")
public class RoleTO {
	
	@Id
	@Column(name="ID")
	@GeneratedValue
	private long id;
	@Column(name="NOME")
	private String nome;

	public RoleTO() {
	}

	public RoleTO(String t) {
		nome = t;
	}
	
	public RoleTO(long i,String t) {
		nome = t;
		id=i;
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
