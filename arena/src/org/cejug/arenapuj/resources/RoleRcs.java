package org.cejug.arenapuj.resources;

import java.util.Arrays;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.cejug.arenapuj.to.RoleTO;

@Path("/role")
public class RoleRcs {

	@GET
	public List<RoleTO> listRoles() {
		RoleTO[] rol = new RoleTO[] { //
		new RoleTO("Patrocinio"),//
				new RoleTO("Professor"),//
				new RoleTO("Aluno"),//
				new RoleTO("Profissional"),//
				new RoleTO("soneca") //
		};
		return Arrays.asList(rol);
	}
}
