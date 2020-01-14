package kr.co.ca;

import java.util.Scanner;

import com.naver.Hero;

import kr.co.daum.Monster;
import kr.co.lg.Bow;
import kr.co.lg.Spear;
import kr.co.lg.Sword;
import kr.co.lg.Weapon;
import kr.co.lg.WeaponSpec;

public class MainEx {
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);		
		Monster mon = new Monster(WeaponSpec.MONSTER_HP_1);
		System.out.println("DB에서 무기정보를 가져옵니다.");
		
		Weapon[] arr = {new Bow(WeaponSpec.BOW_ATTACK_POWER_3), new Sword(WeaponSpec.SWORD_ATTACK_POWER_3), new Spear(WeaponSpec.Spear_ATTACK_POWER_3)};
		Weapon hasWeapon = arr[1];
		Hero spiderman = new Hero(arr, hasWeapon);
		
		while (true) {
			System.out.println("메뉴를 고르세요");
			System.out.println("1:공격, 2: 무기변경, 3: 게임종료");
			int menu = sc.nextInt();
			if (menu ==3 ) {
				break;
			}else if(menu == 1) {
				spiderman.attack(mon);
			
			}else { 
				for(int i= 0; i< arr.length; i++) {
					System.out.println(i+":");
					System.out.println(arr[i]);
				}
				
				int idx = sc.nextInt();
				spiderman.changeWeapon(idx);
			}
			
		}
		
		
		sc.close();
		
//		Scanner sc = new Scanner(System.in);
//		System.out.println("정보를 가져옵니다.");
//		Monster mon = new Monster(100);
//		Weapon[] arr = {new Bow(1), new Sword(5), new Spear(10)};
//		Weapon hasWeapon = arr[1];
//		Hero hero = new Hero(arr, hasWeapon);
//		while (true) {
//			System.out.println("gg");
//			System.out.println("1: 공격, 2: 무기변경, 3: 종료 ");
//			int menu =sc.nextInt();
//		}
//		
//		
//		sc.close();
		
	}
}
