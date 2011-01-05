package org.cejug.arenapuj.to;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.xml.bind.annotation.XmlRootElement;
import javax.persistence.ManyToOne;

@Entity(name = "ADS")
@XmlRootElement(name = "ads")
public class AdsTO {

	@Id
	@Column(name = "ID")
	@GeneratedValue
	private long id;
	@Column(name = "TITULO")
	private String titulo;

	@ManyToOne
	@JoinColumn(name = "USER_ID")
	private UserTO user;

	public AdsTO() {
	}

	public AdsTO(long i, String t) {
		titulo = t;
		id = i;
	}

	public AdsTO(long i, String t, UserTO u) {
		titulo = t;
		id = i;
		user = u;
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

	public UserTO getUser() {
		return user;
	}

	public void setUser(UserTO user) {
		this.user = user;
	}

}
