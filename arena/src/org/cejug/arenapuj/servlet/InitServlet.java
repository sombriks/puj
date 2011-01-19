package org.cejug.arenapuj.servlet;

import static org.cejug.arenapuj.util.EMUtil.EMUtil;

import java.util.logging.Logger;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.cejug.arenapuj.to.entity.RoleTO;

/**
 * Este servlet serve apenas para verificar as condições do banco de dados no
 * assim que a aplicação é iniciada. Poderia ser feito com um contextlistener
 */
public class InitServlet extends HttpServlet {
	private static final long serialVersionUID = 1111211112111L;
	private static final Logger LOG = Logger//
			.getLogger(InitServlet.class.getName());

	/**
	 * isto rodará uma única vez no tempo de vida do contexto. Serve pra
	 * verificar se as condições mínimas pra aplicação rodar ok.
	 * 
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		EntityManager em = EMUtil.getEntityManager();

		// tem roles?
		long x = em.createQuery("select count(r) from ROLE r",//
				Long.class).getSingleResult();
		if (x == 0) {// criar roles...
			LOG.info("Provavelmente um esquema limpo. criando Roles");
			EntityTransaction tr = em.getTransaction();
			tr.begin();
			em.persist(new RoleTO("Estudante"));
			em.persist(new RoleTO("Professor"));
			em.persist(new RoleTO("Profissional de mercado"));
			em.persist(new RoleTO("Instituição"));
			em.persist(new RoleTO("Patrocinador"));
			tr.commit();
			em.close();
			LOG.info("Roles criadas");
		}
	}
}
