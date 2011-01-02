package org.cejug.arenapuj.resources;

import java.util.Arrays;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.cejug.arenapuj.to.UserTO;

@Path("/user")
public class UserRcs {

	@GET
	public List<UserTO> listUsers() {
		UserTO[] usu = new UserTO[] {};
		return Arrays.asList(usu);
	}
}
