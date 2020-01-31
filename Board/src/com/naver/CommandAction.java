package com.naver;

public class CommandAction {
	private boolean isRedirect;
	private String where;
	public CommandAction() {
		// TODO Auto-generated constructor stub
	}
	public CommandAction(boolean isRedirect, String where) {
		super();
		this.isRedirect = isRedirect;
		this.where = where;
	}
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	public String getwhere() {
		return where;
	}
	public void setwhere(String where) {
		this.where = where;
	}
	
}
