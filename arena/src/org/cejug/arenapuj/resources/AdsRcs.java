package org.cejug.arenapuj.resources;

import static org.cejug.arenapuj.util.EMUtil.EMUtil;

import java.util.List;
import java.util.ResourceBundle;

import javax.persistence.EntityManager;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.cejug.arenapuj.to.AdsTO;

@Path("/ads")
public class AdsRcs {

	private ResourceBundle b = ResourceBundle//
			.getBundle("org.cejug.arenapuj.resources.AdsRcs");

	@GET
	public List<AdsTO> listAdvertisements() {
		EntityManager em = EMUtil.getEntityManager();
		List<AdsTO> l = em.createQuery(b.getString("select"),//
				AdsTO.class).getResultList();
		return l;
	}
}
