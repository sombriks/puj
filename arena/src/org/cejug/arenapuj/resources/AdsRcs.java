package org.cejug.arenapuj.resources;

import static org.cejug.arenapuj.util.EMUtil.EMUtil;

import java.util.LinkedList;
import java.util.List;
import java.util.ResourceBundle;

import javax.persistence.EntityManager;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

import org.cejug.arenapuj.to.entity.AdsTO;

/**
 * recurso que dá acesso às propagandas
 * 
 * @author sombriks
 * 
 */
@Path("/ads")
public class AdsRcs {

	private ResourceBundle b = ResourceBundle//
			.getBundle("org.cejug.arenapuj.resources.AdsRcs");

	@GET
	public List<AdsTO> listAdsByCompetition(
			@QueryParam("{compid: \\d+}") long idCmp) throws Exception {
		EntityManager em = EMUtil.getEntityManager();
		List<AdsTO> l = new LinkedList<AdsTO>();
		em.createQuery(b.getString("select"),//
				AdsTO.class).setParameter("compid", idCmp).getResultList();
		em.close();
		return l;
	}
}
