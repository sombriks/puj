package org.cejug.arenapuj.to;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@XmlRootElement(name = "ads")
public class AdvertisementTO {
	
	@Id
	private long id;
	private String titulo;

	public AdvertisementTO() {
	}

	public AdvertisementTO(String t) {
		titulo = t;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

}
