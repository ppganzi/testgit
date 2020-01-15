package com.naver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class UserDeleteCommand implements Command{
	
	@Override
	public void execute(Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("Id를 입력하세요");
		String did = sc.nextLine();
		UserDAO dao = new UserDAO();
		dao.delete(did);
		System.out.println(did + "삭제 합니다.");
		
			}
		}
		

