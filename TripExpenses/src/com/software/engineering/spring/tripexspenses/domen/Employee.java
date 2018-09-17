package com.software.engineering.spring.tripexspenses.domen;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


/**
 * The persistent class for the EMPLOYEES database table.
 * 
 */
@Entity
@Table(name="EMPLOYEES")
@NamedQuery(name="Employee.findAll", query="SELECT e FROM Employee e")
public class Employee implements Serializable {
	

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="my_entity_seq_gen3")
	@SequenceGenerator(name="my_entity_seq_gen3", sequenceName="employees_seq")
	private long employeeid;

	private String email;

	private String fullname;

	private BigDecimal haslicence;

	private String passnum;

	private BigDecimal persidnum;

	//bi-directional many-to-one association to Businesstrip
	@OneToMany(mappedBy="employee", fetch = FetchType.EAGER, cascade = CascadeType.REMOVE, orphanRemoval = true)
	private List<Businesstrip> businesstrips;

	//bi-directional many-to-one association to User
	@OneToOne(mappedBy = "employee", cascade = CascadeType.ALL, 
            fetch = FetchType.EAGER, optional = true)
	private User user;

	public Employee() {
	}

	public long getEmployeeid() {
		return this.employeeid;
	}

	public void setEmployeeid(long employeeid) {
		this.employeeid = employeeid;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFullname() {
		return this.fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public BigDecimal getHaslicence() {
		return this.haslicence;
	}

	public void setHaslicence(BigDecimal haslicence) {
		this.haslicence = haslicence;
	}

	public String getPassnum() {
		return this.passnum;
	}

	public void setPassnum(String passnum) {
		this.passnum = passnum;
	}

	public BigDecimal getPersidnum() {
		return this.persidnum;
	}

	public void setPersidnum(BigDecimal persidnum) {
		this.persidnum = persidnum;
	}

	public List<Businesstrip> getBusinesstrips() {
		return this.businesstrips;
	}

	public void setBusinesstrips(List<Businesstrip> businesstrips) {
		this.businesstrips = businesstrips;
	}

	public Businesstrip addBusinesstrip(Businesstrip businesstrip) {
		getBusinesstrips().add(businesstrip);
		businesstrip.setEmployee(this);

		return businesstrip;
	}

	public Businesstrip removeBusinesstrip(Businesstrip businesstrip) {
		getBusinesstrips().remove(businesstrip);
		businesstrip.setEmployee(null);

		return businesstrip;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return fullname;
	}

}