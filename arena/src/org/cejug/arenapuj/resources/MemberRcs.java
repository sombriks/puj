package org.cejug.arenapuj.resources;

import static org.cejug.arenapuj.util.EMUtil.EMUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.ws.rs.POST;
import javax.ws.rs.Path;

import org.cejug.arenapuj.to.CompetitionTO;
import org.cejug.arenapuj.to.MemberTO;
import org.cejug.arenapuj.to.RoleTO;
import org.cejug.arenapuj.to.SubscriptionTO;
import org.cejug.arenapuj.to.UserTO;

@Path("/member")
public class MemberRcs {

	@POST
	public void addMember(MemberTO member) throws Exception {
		//planning
		SubscriptionTO subs = member.getSubscription();
		RoleTO role = member.getRole();
		UserTO user = member.getUser();
		CompetitionTO comp = subs.getCompetition();
		//recuperar 3 do banco e salvar +2
		EntityManager em = EMUtil.getEntityManager();
		EntityTransaction t = em.getTransaction();
		role = em.find(RoleTO.class, role.getId());
		user = em.find(UserTO.class, user.getId());
		comp = em.find(CompetitionTO.class, comp.getId());
		subs = em.find(SubscriptionTO.class, subs.getId());
		//referenciar
		member.setRole(role);
		member.setUser(user);
		subs.setCompetition(comp);
		member.setSubscription(subs);
		//salvar
		t.begin();
		em.persist(member);
		t.commit();
		em.close();
	}
}
