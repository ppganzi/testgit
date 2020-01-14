package kr.co.lg;

public class Sword extends Weapon {
	public Sword() {
		// TODO Auto-generated constructor stub
	}

	
	/**
	 * @param attackPower
	 */
	public Sword(int attackPower) {
		super(attackPower);
		// TODO Auto-generated constructor stub
	}


	@Override
	public void img() {
		System.out.println("검무난사");
	}


	@Override
	public String toString() {
		return "검";
	}

}
