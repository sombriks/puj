package org.cejug.arenapuj.resources;

import static org.cejug.arenapuj.util.EMUtil.EMUtil;

import java.util.List;
import java.util.ResourceBundle;

import javax.persistence.EntityManager;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.cejug.arenapuj.to.CompetitionTO;

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

}
