package org.cejug.arenapuj.to;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.xml.bind.annotation.XmlRootElement;

@Entity(name = "HOMEWORK")
@XmlRootElement(name = "homework")
public class HomeworkTO {

	@Id
	@Column(name = "ID")
	private long id;
	@Column(name = "TITULO")
	private String titulo;

	public HomeworkTO() {
	}

	public HomeworkTO(long i, String t) {
		id = i;
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
