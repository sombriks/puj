package org.cejug.arenapuj.to;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.xml.bind.annotation.XmlRootElement;

@Entity(name = "ADS")
@XmlRootElement(name = "ads")
public class AdsTO {

	@Id
	@Column(name = "ID")
	@GeneratedValue
	private long id;
	@Column(name = "TITULO")
	private String titulo;
	@JoinColumn(name = "SUBSCRIPTION_ID")
	private SubscriptionTO patrocinador;
	
	public AdsTO() {
	}

	public AdsTO(long i, String t) {
		titulo = t;
		id = i;
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

	public SubscriptionTO getPatrocinador() {
		return patrocinador;
	}

	public void setPatrocinador(SubscriptionTO patrocinador) {
		this.patrocinador = patrocinador;
	}

}
