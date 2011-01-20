package org.cejug.arenapuj.resources;

import static org.cejug.arenapuj.util.EMUtil.EMUtil;

import java.util.List;
import java.util.ResourceBundle;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

import org.cejug.arenapuj.to.entity.CompetitionTO;
import org.cejug.arenapuj.to.entity.TeamTO;

/**
 * inscrição de equipe na competição
 * 
 * @author sombriks
 *
 */
@Path("/team")
public class TeamRcs {

	private ResourceBundle b = ResourceBundle//
			.getBundle("org.cejug.arenapuj.resources.TeamRcs");

	@GET
	public List<TeamTO> listTeams(
			@QueryParam("compid") long compId) throws Exception {
		EntityManager em = EMUtil.getEntityManager();
		List<TeamTO> l = em.createQuery(b.getString("select"),//
				TeamTO.class).setParameter("compid", compId)//
				.getResultList();
		em.close();
		return l;
	}
	
	@POST
	public void addTeam(TeamTO team) throws Exception {
		EntityManager em = EMUtil.getEntityManager();
		CompetitionTO competition = team.getCompetition();
		competition = em.find(CompetitionTO.class, competition.getId());
		team.setCompetition(competition);
		EntityTransaction tran = em.getTransaction();
		tran.begin();
		em.persist(team);
		tran.commit();
		em.close();
	}
}
