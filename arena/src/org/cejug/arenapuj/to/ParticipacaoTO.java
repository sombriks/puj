package org.cejug.arenapuj.to;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;

import org.cejug.arenapuj.to.entity.CompetitionTO;
import org.cejug.arenapuj.to.entity.MemberTO;

/**
 * TO de transporte que nos dá uma melhor apresentação/overview da composição
 * das competições
 * 
 * @author sombriks
 * 
 */
@XmlRootElement
public class ParticipacaoTO {

	private CompetitionTO competicao;
	private List<MemberTO> membros;

	public ParticipacaoTO() {
	}

	public ParticipacaoTO(CompetitionTO comp) {
		competicao = comp;
	}

	public CompetitionTO getCompeticao() {
		return competicao;
	}

	public void setCompeticao(CompetitionTO competicao) {
		this.competicao = competicao;
	}

	public List<MemberTO> getMembros() {
		return membros;
	}

	public void setMembros(List<MemberTO> membros) {
		this.membros = membros;
	}

}
