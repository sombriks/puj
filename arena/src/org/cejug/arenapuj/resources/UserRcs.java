package org.cejug.arenapuj.resources;

import static org.cejug.arenapuj.util.EMUtil.EMUtil;

import java.util.List;
import java.util.ResourceBundle;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.Context;

import org.cejug.arenapuj.to.UserTO;

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

	@GET
	@Path("/{id}")
	public UserTO getUser(@PathParam(value = "id") long idUsuario) {
		EntityManager em = EMUtil.getEntityManager();
		UserTO to = em.find(UserTO.class, idUsuario);
		em.close();
		return to;
	}

	/**
	 * um dos motivos para eu gostar do Jersey/JAX-RS
	 * 
	 * @param user
	 *            usuário postado para login
	 * @param req
	 *            requisição "de baixo nível"
	 * @throws Exception
	 */
	@POST
	@Path("/login")
	public void login(UserTO user, @Context HttpServletRequest req)
			throws Exception {
		EntityManager em = EMUtil.getEntityManager();
		try {
			UserTO to = em.createQuery(b.getString("login"), UserTO.class)//
					.setParameter("nome", user.getNome())//
					.setParameter("senha", user.getSenha())//
					.getSingleResult();
			req.getSession().setAttribute("user", to);
		} catch (NoResultException e) {
			throw new Exception(e);
		} finally {
			em.close();
		}
	}
}
