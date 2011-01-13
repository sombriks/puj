package org.cejug.arenapuj.resources;

import java.util.HashSet;
import java.util.Set;

import javax.ws.rs.core.Application;

/**
 * esta classe funciona como ponto de entrada do Jersey. com ele jogamos fora a
 * dependência no asm.jar e ganhamos no tempo de start do contexto.
 * 
 * @author sombriks
 * 
 */
public class ArenaApplication extends Application {
	private Set<Object> singletons = new HashSet<Object>();
	private Set<Class<?>> empty = new HashSet<Class<?>>();

	public ArenaApplication() {
		singletons.add(new AdsRcs());
		singletons.add(new CompetitionRcs());
		singletons.add(new HomeworkRcs());
		singletons.add(new MemberRcs());
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
