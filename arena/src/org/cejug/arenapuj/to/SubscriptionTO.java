package org.cejug.arenapuj.to;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.xml.bind.annotation.XmlRootElement;

@Entity(name="SUBSCRIPTION")
@XmlRootElement(name="subscription")
public class SubscriptionTO {
	
	@Id
	@Column(name="ID")
	private long id;
	@ManyToOne
	@JoinColumn(name="ROLE_ID")
	private RoleTO userRole;
	@JoinColumn(name="USER_ID")
	private UserTO user;
	
	
}
