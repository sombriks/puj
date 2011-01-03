package org.cejug.arenapuj.to;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.xml.bind.annotation.XmlRootElement;

@Entity(name="ADS")
@XmlRootElement(name = "ads")
public class AdvertisementTO {
	
	@Id
	@Column(name="ID")
	@GeneratedValue
	private long id;
	@Column(name="TITULO")
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
