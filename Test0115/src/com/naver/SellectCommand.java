package com.naver;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SellectCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		//1. client 가 보내준 데이터 획득 및 가공
		//2. dao 객체 생성및 해당 메서드 호출 및 데이터 획득
		MemberDAO dao = new MemberDAO();
		List<MemberDTO> list= dao.select();
		
		
		
		//3. 바인딩 작업 영역객체. setAttribute();
		request.setAttribute("list", list);
		
		
		//4. 포워딩 작업: CommandAction 객체 반환
		request.getRequestDispatcher("list.jsp").forward(request, response);

	}

}
