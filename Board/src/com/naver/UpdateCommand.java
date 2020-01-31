package com.naver;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
			String sNum = request.getParameter("num");
			int num = -1;
			if(sNum != null) {
				num = Integer.valueOf(sNum);  //parsint 같이 다 변환해줌
			}
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			BoardDAO dao = new BoardDAO();
			dao.update(new BoardDTO(num, null, title, content, null, 0, 0, 0, 0));
			
			//수정하는 시각 updatedate 추가해보기
		return new CommandAction(true, "list.do");
	}

}
