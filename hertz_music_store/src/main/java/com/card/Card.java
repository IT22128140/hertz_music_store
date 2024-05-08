package com.card;
//card child class
public class Card extends Pcard {
	
	private int cvv;
	private int month;
	private int year;
	//overloaded constructor
	public Card(int userid, int cardid, String card_name, String card_number, int cvv, int month, int year) {
		super(userid,cardid,card_name, card_number);
		this.cvv = cvv;
		this.month = month;
		this.year = year;
	}
	//get methods
	public int getCvv() {
		return cvv;
	}
	
	public int getmonth() {
		return month;
	}
	
	public int getyear() {
		return year;
	}

}
