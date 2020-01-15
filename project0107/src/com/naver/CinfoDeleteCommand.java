package com.naver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class CinfoDeleteCommand implements Command {
	
	@Override
	public void execute(Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("차량번호를 입력하세요.");
		String cnum = sc.nextLine();
		CinfoDAO dao = new CinfoDAO();
		dao.delete(cnum);
		System.out.println(cnum + "삭제 합니다");
	
	}
}
