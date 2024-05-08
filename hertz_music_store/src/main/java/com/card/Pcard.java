package com.card;
//card parent class
public class Pcard {
	//initialise variables
	protected int userid;
	protected int cardid;
	protected String card_name;
	protected String card_number ;
	//overloaded constructor
	public Pcard(int userid, int cardid, String card_name, String card_number) {
		this.userid = userid;
		this.cardid = cardid;
		this.card_name = card_name;
		this.card_number = card_number;
	}
	//get methods
	public int getuserid() {
		return userid;
	}
	
	public int getcardid() {
		return cardid;
	}
	
	public String getCard_name() {
		return card_name;
	}

	public String getCard_number() {
		return card_number;
	}
}
