package org.cejug.arenapuj.to;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * isto representa uma inscrição.
 *   
 * @author sombriks
 *
 */
@Entity(name = "SUBSCRIPTION")
@XmlRootElement(name = "subscription")
public class SubscriptionTO {

	@Id
	@Column(name = "ID")
	@GeneratedValue
	private long id;
	@Column(name = "ATIVO")
	private boolean ativo;
	@Column(name = "NOME")
	private String nome;
	@OneToOne
	@JoinColumn(name="HOME_ID")
	private HomeworkTO homework;
	@JoinColumn(name="COMP_ID")
	private CompetitionTO competition;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public HomeworkTO getHomework() {
		return homework;
	}

	public void setHomework(HomeworkTO homework) {
		this.homework = homework;
	}

	public CompetitionTO getCompetition() {
		return competition;
	}

	public void setCompetition(CompetitionTO competition) {
		this.competition = competition;
	}

}
