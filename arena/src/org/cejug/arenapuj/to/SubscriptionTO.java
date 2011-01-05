package org.cejug.arenapuj.to;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.xml.bind.annotation.XmlRootElement;

@Entity(name = "SUBSCRIPTION")
@XmlRootElement(name = "subscription")
public class SubscriptionTO {

	@Id
	@Column(name = "ID")
	private long id;
	@ManyToOne
	@JoinColumn(name = "ROLE_ID")
	private RoleTO userRole;
	@JoinColumn(name = "USER_ID")
	private UserTO user;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public RoleTO getUserRole() {
		return userRole;
	}

	public void setUserRole(RoleTO userRole) {
		this.userRole = userRole;
	}

	public UserTO getUser() {
		return user;
	}

	public void setUser(UserTO user) {
		this.user = user;
	}

}
