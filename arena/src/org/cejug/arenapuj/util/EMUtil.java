package org.cejug.arenapuj.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 * utilitário pra recuperar um EntityManager
 * 
 * @author sombriks
 * 
 */
public enum EMUtil {
	EMUtil;//INSTANCE

	private EntityManagerFactory factory = Persistence//
			.createEntityManagerFactory("arena-pu");

	public EntityManager getEntityManager() {
		return factory.createEntityManager();
	}
}
