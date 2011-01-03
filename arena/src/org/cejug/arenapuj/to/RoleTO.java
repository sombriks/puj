package org.cejug.arenapuj.to;

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
	@Column(name="TITULO")
	private String titulo;

	public RoleTO() {
	}

	public RoleTO(String t) {
		titulo = t;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

}
