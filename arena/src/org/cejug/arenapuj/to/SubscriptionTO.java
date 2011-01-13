package org.cejug.arenapuj.to;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@Entity(name = "SUBSCRIPTION")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "subscription")
public class SubscriptionTO {

	@Id
	@Column(name = "ID")
	@GeneratedValue
	private long id;
	@XmlElement(name="role")
	@JoinColumn(name = "ROLE_ID",nullable=false)
	private RoleTO role;
	@JoinColumn(name = "USER_ID",nullable=false)
	private UserTO user;
	@Column(name = "ATIVO")
	private boolean ativo;
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public RoleTO getRole() {
		return role;
	}

	public void setRole(RoleTO userRole) {
		this.role = userRole;
	}

	public UserTO getUser() {
		return user;
	}

	public void setUser(UserTO user) {
		this.user = user;
	}

	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}

}
