package kr.co.lg;

public class Spear extends Weapon {
	public Spear() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param attackPower
	 */
	public Spear(int attackPower) {
		super(attackPower);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void img() {
		System.out.println("¸ó½ºÅÍ°¡ ¹úÁıÀÌ µÊ");
	}

	@Override
	public String toString() {
		return "Ã¢";
	}
	
	
	
	
}
