package org.cejug.arenapuj.resources;

import static org.cejug.arenapuj.util.EMUtil.EMUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.ws.rs.POST;
import javax.ws.rs.Path;

import org.cejug.arenapuj.to.entity.CompetitionTO;
import org.cejug.arenapuj.to.entity.MemberTO;
import org.cejug.arenapuj.to.entity.RoleTO;
import org.cejug.arenapuj.to.entity.TeamTO;
import org.cejug.arenapuj.to.entity.UserTO;

@Path("/member")
public class MemberRcs {

	@POST
	public void addMember(MemberTO member) throws Exception {
		//planning
		TeamTO team = member.getTeam();
		RoleTO role = member.getRole();
		UserTO user = member.getUser();
		CompetitionTO comp = team.getCompetition();
		//recuperar 3 do banco e salvar +2
		EntityManager em = EMUtil.getEntityManager();
		EntityTransaction t = em.getTransaction();
		role = em.find(RoleTO.class, role.getId());
		user = em.find(UserTO.class, user.getId());
		comp = em.find(CompetitionTO.class, comp.getId());
		team = em.find(TeamTO.class, team.getId());
		//referenciar
		member.setRole(role);
		member.setUser(user);
		team.setCompetition(comp);
		member.setTeam(team);
		//salvar
		t.begin();
		em.persist(member);
		t.commit();
		em.close();
	}
}
