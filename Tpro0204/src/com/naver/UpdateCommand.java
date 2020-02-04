package com.naver;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		
		
		/*
		 * int age = -1; if(sAge != null) { age = Integer.parseInt(sAge); }
		 */
		MemberDAO dao = new MemberDAO();
		dao.update(new MemberDTO(id, pw, name, birthday, 0));
		
		return new CommandAction(true, "list.do");
	}

}
