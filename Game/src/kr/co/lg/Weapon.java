package kr.co.lg;

import kr.co.daum.Monster;

public abstract class Weapon {
	private int attackPower;

	public Weapon() {
		// TODO Auto-generated constructor stub
	}

	public Weapon(int attackPower) {
		super();
		this.attackPower = attackPower;
	}

	public void attack(Monster mon) {
		img();
		int bhp = mon.getHp();
		int ahp = bhp - attackPower;
		mon.setHp(ahp);
	}

	public abstract void img();
	public int getAttrackPower() {
		return attackPower;
	}

	public void setAttrackPower(int attackPower) {
		this.attackPower = attackPower;
	}

}
