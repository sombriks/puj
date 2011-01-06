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
 * isto representa um PUJ
 * @author sombriks
 *
 */
@Entity(name = "COMPETITION")
@XmlRootElement(name = "competition")
public class CompetitionTO {

	@Id
	@Column(name = "ID")
	@GeneratedValue
	private long id;
	@Column(name = "NOME")
	private String nome;
	@OneToMany(targetEntity=AdsTO.class)
	private List<AdsTO>advertisement=new LinkedList<AdsTO>();
	@OneToMany(targetEntity=HomeworkTO.class)
	private List<HomeworkTO>homeworks=new LinkedList<HomeworkTO>();
	@Column(name="ATIVA")
	private boolean ativa;
	
	public CompetitionTO() {
	}

	public CompetitionTO(long i, String n) {
		nome = n;
		id = i;
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

	public List<AdsTO> getAdvertisement() {
		return advertisement;
	}

	public void setAdvertisement(List<AdsTO> advertisement) {
		this.advertisement = advertisement;
	}

	public List<HomeworkTO> getHomeworks() {
		return homeworks;
	}

	public void setHomeworks(List<HomeworkTO> homeworks) {
		this.homeworks = homeworks;
	}

	public boolean isAtiva() {
		return ativa;
	}

	public void setAtiva(boolean ativa) {
		this.ativa = ativa;
	}

}
