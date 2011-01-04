package org.cejug.arenapuj.resources;

import static org.cejug.arenapuj.util.EMUtil.EMUtil;

import java.util.List;
import java.util.ResourceBundle;

import javax.persistence.EntityManager;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.cejug.arenapuj.to.SubscriptionTO;

@Path("/subscripe")
public class SubscriptionRcs {

	private ResourceBundle b = ResourceBundle//
			.getBundle("org.cejug.arenapuj.resources.SubscriptionRcs");

	@GET
	public List<SubscriptionTO> listSubscriptions() {
		EntityManager em = EMUtil.getEntityManager();
		List<SubscriptionTO> l = em.createQuery(b.getString("select"),//
				SubscriptionTO.class).getResultList();
		em.close();
		return l;
	}

}
