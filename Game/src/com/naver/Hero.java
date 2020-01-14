package com.naver;

import kr.co.daum.Monster;
import kr.co.lg.Bow;
import kr.co.lg.Spear;
import kr.co.lg.Sword;
import kr.co.lg.Weapon;

public class Hero {
	private Weapon[] weapons;
	private Weapon hasWeapon;

	public Hero() {
		weapons = new Weapon[3];
		weapons[0] = new Bow(1);
		weapons[1] = new Sword(5);
		weapons[2] = new Spear(10);

		hasWeapon = weapons[0];
	}

	public Hero(Weapon[] weapons, Weapon hasWeapone) {
		this.weapons = weapons;
		this.hasWeapon = hasWeapone;
	}

	public void attack(Monster mon) {
		if (mon.getHp() <= 0) {
			return;
		}
		hasWeapon.attack(mon);

		System.out.println("mon의 hp: " + mon.getHp());
	}

	public void changeWeapon(int idx) {
		if (idx < 0 || idx >= weapons.length) {
			idx = 0;
		}
		hasWeapon = weapons[idx];
		System.out.println(hasWeapon + "로 무기가 변경 되었습니다.");
	}

}
