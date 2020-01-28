package com.naver;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ReadCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		// 1. 클라이언트가 보내준 데이터 획득 및 가공
		String id = request.getParameter("id");
		// 2. DAO 객체 생성및 해당 메서드 호출
		MemberDAO2 dao = new MemberDAO2();
		MemberDTO dto = dao.read(id);
		// 3. 데이터 바인딩
		request.setAttribute("dto", dto);
		// 4. 포워딩
		return new CommandAction(false, "read.jsp");
	}

}
