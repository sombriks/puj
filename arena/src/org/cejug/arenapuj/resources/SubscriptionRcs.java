package org.cejug.arenapuj.resources;

import static org.cejug.arenapuj.util.EMUtil.EMUtil;

import java.util.List;
import java.util.ResourceBundle;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;

import org.cejug.arenapuj.to.RoleTO;
import org.cejug.arenapuj.to.SubscriptionTO;
import org.cejug.arenapuj.to.UserTO;

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

	@POST
	public void subscripe(SubscriptionTO subscription) throws Exception{
		
		EntityManager em = EMUtil.getEntityManager();
		
		EntityTransaction tran = em.getTransaction();
		tran.begin();
		RoleTO role = subscription.getRole();
		role = em.find(RoleTO.class, role.getId());
		UserTO user = subscription.getUser();
		user = em.find(UserTO.class,user.getId());
		subscription.setRole(role);
		subscription.setUser(user);
		em.persist(subscription);
		tran.commit();
		em.close();
	}
}
