package org.cejug.arenapuj.to.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
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
	@Lob
	@Basic(fetch = FetchType.LAZY)
	@Column(name = "ZIP")
	private byte[] zip;

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

	public byte[] getZip() {
		return zip;
	}

	public void setZip(byte[] zip) {
		this.zip = zip;
	}

}
