package kr.co.lg;

public class Bow extends Weapon {
	public Bow() {
		// TODO Auto-generated constructor stub
	}

	public Bow(int attackPower) {
		super(attackPower);

	}

	@Override
	public void img() {
		System.out.println("ȭ�쳭��");

	}

	@Override
	public String toString() {
		return "Ȱ";
	}
	

}
