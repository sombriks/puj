package org.cejug.arenapuj.resources;

import static org.cejug.arenapuj.util.EMUtil.EMUtil;

import java.util.List;
import java.util.ResourceBundle;

import javax.persistence.EntityManager;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.cejug.arenapuj.to.RoleTO;

@Path("/role")
public class RoleRcs {

	private ResourceBundle b = ResourceBundle//
			.getBundle("org.cejug.arenapuj.resources.RoleRcs");

	@GET
	public List<RoleTO> listRoles() {
		EntityManager em = EMUtil.getEntityManager();
		List<RoleTO> l = em.createQuery(b.getString("select"), RoleTO.class)//
				.getResultList();
		em.close();
		return l;
	}
}
