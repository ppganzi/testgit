package com.daum;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.naver.BoardDAO;
import com.naver.Command;
import com.naver.CommandAction;
import com.naver.PageTO;

public class BListCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		//page받아오기
				String sCurPage = request.getParameter("curPage");
				int curPage = 1;
				if(sCurPage != null) {
					curPage = Integer.parseInt(sCurPage);
				}
				
				BoardDAO dao = new BoardDAO();
			
				PageTO to = dao.list(curPage);
				request.setAttribute("list", to.getList());
				request.setAttribute("to", to);
				System.out.println(to.getList().size()+"::::::::::::::");
				return new CommandAction(false, "blist.jsp");
	}

}
