package org.cejug.arenapuj.to;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@XmlRootElement(name = "role")
public class RoleTO {
	@Id
	private long id;
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
