package model;

public class RevenueCus extends user{
	private int Revenue;
	public RevenueCus() {
		// TODO Auto-generated constructor stub
	}
	public RevenueCus(int revenue) {
		super();
		Revenue = revenue;
	}
	public int getRevenue() {
		return Revenue;
	}
	public void setRevenue(int revenue) {
		Revenue = revenue;
	}
	

}
