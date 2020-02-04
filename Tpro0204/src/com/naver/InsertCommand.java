package com.naver;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		/*
		 * int age = -1; if(sAge != null) { age = Integer.parseInt(sAge); }
		 */
		
		MemberDAO dao = new MemberDAO();
		dao.insert(new MemberDTO(id, pw, name, birthday, 0));
		
		return new CommandAction(true, "list.do");
	}

}
