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
	@Column(name = "NOME")
	private String nome;
	@JoinColumn(name = "COMP_ID", nullable = false)
	private CompetitionTO competition;
	@JoinColumn(name = "MEMB_ID", nullable = false)
	private MemberTO member;

	public AdsTO() {
	}

	public AdsTO(long i, String t) {
		nome = t;
		id = i;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public CompetitionTO getCompetition() {
		return competition;
	}

	public void setCompetition(CompetitionTO competition) {
		this.competition = competition;
	}

	public MemberTO getMember() {
		return member;
	}

	public void setMember(MemberTO member) {
		this.member = member;
	}
}
