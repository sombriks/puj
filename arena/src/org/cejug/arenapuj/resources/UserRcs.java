package org.cejug.arenapuj.resources;

import java.util.List;
import java.util.ResourceBundle;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;

import org.cejug.arenapuj.to.UserTO;
import static org.cejug.arenapuj.util.EMUtil.EMUtil;

@Path("/user")
public class UserRcs {

	private ResourceBundle b = ResourceBundle//
			.getBundle("org.cejug.arenapuj.resources.UserRcs");

	@GET
	public List<UserTO> listUsers() {
		EntityManager em = EMUtil.getEntityManager();
		List<UserTO> l = em.createQuery(b.getString("select"), UserTO.class)//
				.getResultList();
		em.close();
		return l;
	}

	@POST
	public void addUser(UserTO newuser) {
		EntityManager em = EMUtil.getEntityManager();
		// resource local, :(
		EntityTransaction tran = em.getTransaction();
		tran.begin();
		em.persist(newuser);
		tran.commit();
		em.close();
	}
}
