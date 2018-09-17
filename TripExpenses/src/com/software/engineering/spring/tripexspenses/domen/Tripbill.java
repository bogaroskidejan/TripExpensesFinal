package com.software.engineering.spring.tripexspenses.domen;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the TRIPBILLS database table.
 * 
 */
@Entity
@Table(name="TRIPBILLS")
@NamedQuery(name="Tripbill.findAll", query="SELECT t FROM Tripbill t")
public class Tripbill implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="my_entity_seq_gen5")
	@SequenceGenerator(name="my_entity_seq_gen5", sequenceName="tripbills_seq")
	private long tripbillid;

	private BigDecimal totalamount;
	

	//bi-directional many-to-one association to Businesstrip
	@ManyToOne
	@JoinColumn(name="BUSINESSTRIPS_BUSTRIPID")
	private Businesstrip businesstrip;
	private BigDecimal totalalowance;
	private BigDecimal summary;

	public BigDecimal getTotalalowance() {
		return totalalowance;
	}

	public void setTotalalowance(BigDecimal totalalowance) {
		this.totalalowance = totalalowance;
	}

	public BigDecimal getSummary() {
		return summary;
	}

	public void setSummary(BigDecimal summary) {
		this.summary = summary;
	}

	public Tripbill() {
	}

	public long getTripbillid() {
		return this.tripbillid;
	}

	public void setTripbillid(long tripbillid) {
		this.tripbillid = tripbillid;
	}

	public BigDecimal getTotalamount() {
		return this.totalamount;
	}

	public void setTotalamount(BigDecimal totalamount) {
		this.totalamount = totalamount;
	}

	public Businesstrip getBusinesstrip() {
		return this.businesstrip;
	}

	public void setBusinesstrip(Businesstrip businesstrip) {
		this.businesstrip = businesstrip;
	}

}