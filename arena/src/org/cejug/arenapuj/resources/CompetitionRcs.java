package org.cejug.arenapuj.resources;

import static org.cejug.arenapuj.util.EMUtil.EMUtil;

import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.ResourceBundle;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;

import org.cejug.arenapuj.to.ParticipacaoTO;
import org.cejug.arenapuj.to.entity.CompetitionTO;
import org.cejug.arenapuj.to.entity.MemberTO;

@Path("/competition")
public class CompetitionRcs {

	private ResourceBundle b = ResourceBundle//
			.getBundle("org.cejug.arenapuj.resources.CompetitionRcs");

	@GET
	public List<CompetitionTO> listCompetitions() {
		EntityManager em = EMUtil.getEntityManager();
		List<CompetitionTO> l = em.createQuery(b.getString("select"),//
				CompetitionTO.class).getResultList();
		em.close();
		return l;
	}

	@POST
	public void addCompetition(CompetitionTO competition) throws Exception {
		EntityManager em = EMUtil.getEntityManager();
		EntityTransaction tran = em.getTransaction();
		tran.begin();
		competition.setDtCadastro(new Date());
		em.persist(competition);
		tran.commit();
		em.close();
	}

	/**
	 * uma forma mais consolidada de apresentar os participantes da competição	
	 * @return
	 * @throws Exception
	 */
	@GET
	@Path("/overview")
	public List<ParticipacaoTO> listaOverview() throws Exception {
		List<ParticipacaoTO> lista = new LinkedList<ParticipacaoTO>();
		EntityManager em = EMUtil.getEntityManager();
		List<CompetitionTO> competicoes = em.createQuery(b.getString("select"),//
				CompetitionTO.class).getResultList();
		for (CompetitionTO comp : competicoes) {
			ParticipacaoTO participacao = new ParticipacaoTO(comp);
			List<MemberTO> membros = em.createQuery(b.getString("overview"),//
					MemberTO.class).setParameter("id", comp.getId())//
					.getResultList();
			participacao.setMembros(membros);
			lista.add(participacao);
		}
		em.close();
		return lista;
	}
}
