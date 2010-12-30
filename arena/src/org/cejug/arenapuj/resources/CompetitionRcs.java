package org.cejug.arenapuj.resources;

import java.util.Arrays;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.cejug.arenapuj.vo.CompetitionTO;

@Path("/competition")
public class CompetitionRcs {

	@GET
	public List<CompetitionTO> getCompetitions(){
		//usando dados falsos
		CompetitionTO[]comps=new CompetitionTO[]{
				new CompetitionTO("PUJ 2008"),
				new CompetitionTO("PUJ 2009"),
				new CompetitionTO("PUJ 2010")
		};
		return Arrays.asList(comps);
	}
}
