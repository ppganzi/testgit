package com.naver;

import java.io.Serializable;

public class CinfoDTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String did;
	private String cnum;
	private String cclr;
	/**
	 * @param did
	 * @param cnum
	 * @param cclr
	 */
	public CinfoDTO(String did, String cnum, String cclr) {
		super();
		this.did = did;
		this.cnum = cnum;
		this.cclr = cclr;
	}
	public String getDid() {
		return did;
	}
	public void setDid(String did) {
		this.did = did;
	}
	public String getCnum() {
		return cnum;
	}
	public void setCnum(String cnum) {
		this.cnum = cnum;
	}
	public String getCclr() {
		return cclr;
	}
	public void setCclr(String cclr) {
		this.cclr = cclr;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((did == null) ? 0 : did.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CinfoDTO other = (CinfoDTO) obj;
		if (did == null) {
			if (other.did != null)
				return false;
		} else if (!did.equals(other.did))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "CinfoDTO [did=" + did + ", cnum=" + cnum + ", cclr=" + cclr + "]";
	}
	
}
