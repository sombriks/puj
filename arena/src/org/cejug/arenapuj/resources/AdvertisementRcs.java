package org.cejug.arenapuj.resources;

import java.util.Arrays;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.cejug.arenapuj.to.AdvertisementTO;

@Path("/ads")
public class AdvertisementRcs {

	@GET
	public List<AdvertisementTO>listAdvertisements(){
		AdvertisementTO[]ads=new AdvertisementTO[]{//
			new AdvertisementTO("A"),//
			new AdvertisementTO("B"),//
			new AdvertisementTO("C")//
		};
		return Arrays.asList(ads);
	}
}
