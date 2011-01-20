package org.cejug.arenapuj.to.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.xml.bind.annotation.XmlRootElement;

@Entity(name = "MEMBER")
@XmlRootElement(name = "member")
public class MemberTO {

	@Id
	@Column(name = "ID")
	@GeneratedValue
	private long id;
	@JoinColumn(name = "ROLE_ID", nullable = false)
	private RoleTO role;
	@JoinColumn(name = "USER_ID", nullable = false)
	private UserTO user;
	@JoinColumn(name = "TEAM_ID", nullable = false)
	private TeamTO team;
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

	public void setRole(RoleTO role) {
		this.role = role;
	}

	public UserTO getUser() {
		return user;
	}

	public void setUser(UserTO user) {
		this.user = user;
	}

	public TeamTO getTeam() {
		return team;
	}

	public void setTeam(TeamTO team) {
		this.team = team;
	}

	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}

}
