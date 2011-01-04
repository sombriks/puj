package org.cejug.arenapuj.resources;

import static org.cejug.arenapuj.util.EMUtil.EMUtil;

import java.util.List;
import java.util.ResourceBundle;

import javax.persistence.EntityManager;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.cejug.arenapuj.to.HomeworkTO;

@Path("/homework")
public class HomeworkRcs {

	private ResourceBundle b = ResourceBundle//
			.getBundle("org.cejug.arenapuj.resources.HomeworkRcs");

	@GET
	public List<HomeworkTO> listHomeworks() {
		EntityManager em = EMUtil.getEntityManager();
		List<HomeworkTO> l = em.createQuery(b.getString("select"),//
				HomeworkTO.class).getResultList();
		return l;
	}
}
