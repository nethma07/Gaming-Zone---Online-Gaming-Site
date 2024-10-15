package com.payment;

public class payment {
		
	private int payid;
	private String cardno;
	private String name;
	private String cvc;
	private String exdate;

	public payment(int payid, String cardno, String name, String cvc, String exdate) {
		super();
		this.payid = payid;
		this.cardno = cardno;
		this.name = name;
		this.cvc = cvc;
		this.exdate = exdate;

	}
	public int getPayid() {
		return payid;
	}
	public String getCardno() {
		return cardno;
	}
	public String getName() {
		return name;
	}
	public String getCvc() {
		return cvc;
	}
	public String getExdate() {
		return exdate;
	}

	
}