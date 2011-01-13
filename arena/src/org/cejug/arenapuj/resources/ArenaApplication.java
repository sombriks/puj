package org.cejug.arenapuj.resources;

import java.util.HashSet;
import java.util.Set;

import javax.ws.rs.core.Application;

public class ArenaApplication extends Application {
	private Set<Object> singletons = new HashSet<Object>();
	private Set<Class<?>> empty = new HashSet<Class<?>>();

	public ArenaApplication() {
		singletons.add(new AdsRcs());
		singletons.add(new CompetitionRcs());
		singletons.add(new HomeworkRcs());
		singletons.add(new RoleRcs());
		singletons.add(new SubscriptionRcs());
		singletons.add(new UserRcs());
	}

	@Override
	public Set<Class<?>> getClasses() {
		return empty;
	}

	@Override
	public Set<Object> getSingletons() {
		return singletons;
	}
}
