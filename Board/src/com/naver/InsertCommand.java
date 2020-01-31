package com.naver;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertCommand implements Command {

	@Override
	public CommandAction execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		String author = request.getParameter("author");
		System.out.println(author);
		String title = request.getParameter("title");
		System.out.println(title);
		String content = request.getParameter("content");
		System.out.println(content);
		
		BoardDAO dao = new BoardDAO();
		dao.insert(new BoardDTO(-1, author, title, content, null, 0, -1, 0, 0));
		
		
		
		return new CommandAction(true, "list.do");
	}

}
