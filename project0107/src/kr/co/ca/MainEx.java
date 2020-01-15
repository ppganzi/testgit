package kr.co.ca;

import java.util.Scanner;

import com.naver.CinfoDeleteCommand;
import com.naver.Command;
import com.naver.UserDAO;
import com.naver.UserDTO;
import com.naver.UserDeleteCommand;

public class MainEx {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Command[] com = { new UserDeleteCommand(), new CinfoDeleteCommand()};
		boolean isTrue = true;
		while (isTrue) {
			System.out.println("메뉴를 선택하세요");
			System.out.println("0.유저 딜리트  1.차 딜리트");
			int menu = sc.nextInt();
			sc.nextLine();
			if (menu != com.length) {
				Command c = com[menu];
				if (c != null) {
					c.execute(sc);
				}


			} else {
				isTrue = false;
			}

		}

		sc.close();
	}

}
