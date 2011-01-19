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
import org.cejug.arenapuj.to.entity.SubscriptionTO;

/**
 * inscrição de equipe na competição
 * 
 * @author sombriks
 *
 */
@Path("/subscription")
public class SubscriptionRcs {

	private ResourceBundle b = ResourceBundle//
			.getBundle("org.cejug.arenapuj.resources.SubscriptionRcs");

	@GET
	public List<SubscriptionTO> listSubscriptions(
			@QueryParam("compid") long compId) throws Exception {
		EntityManager em = EMUtil.getEntityManager();
		List<SubscriptionTO> l = em.createQuery(b.getString("select"),//
				SubscriptionTO.class).setParameter("compid", compId)//
				.getResultList();
		em.close();
		return l;
	}
	
	@POST
	public void addSubscription(SubscriptionTO subscription) throws Exception {
		EntityManager em = EMUtil.getEntityManager();
		CompetitionTO competition = subscription.getCompetition();
		competition = em.find(CompetitionTO.class, competition.getId());
		subscription.setCompetition(competition);
		EntityTransaction tran = em.getTransaction();
		tran.begin();
		em.persist(subscription);
		tran.commit();
		em.close();
	}
}
