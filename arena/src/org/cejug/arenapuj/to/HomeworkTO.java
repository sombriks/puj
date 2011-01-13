package org.cejug.arenapuj.to;

import java.util.LinkedList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * isto representa um trabalho do puj
 * 
 * @author sombriks
 * 
 */
@Entity(name = "HOMEWORK")
@XmlRootElement(name = "homework")
public class HomeworkTO {

	@Id
	@Column(name = "ID")
	@GeneratedValue
	private long id;
	@Column(name = "TITULO")
	private String titulo;
	@OneToMany(targetEntity=SubscriptionTO.class)
	private List<SubscriptionTO> inscrito = new LinkedList<SubscriptionTO>();
	
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

	public List<SubscriptionTO> getInscrito() {
		return inscrito;
	}

	public void setInscrito(List<SubscriptionTO> inscrito) {
		this.inscrito = inscrito;
	}

}
