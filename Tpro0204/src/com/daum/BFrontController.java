package com.daum;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.naver.Command;



/**
 * Servlet implementation class BFrontController
 */
@WebServlet("/BFrontController")
public class BFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		String cPath = request.getContextPath();
		String what = uri.substring(cPath.length());
		
		Command com = null;
		
		if(what.equalsIgnoreCase("/blist.do")) {
			com = new BListCommand();
		}else if (what.equalsIgnoreCase("/binsertui.do")) {
			com = new BInsertUICommand();
		}else if (what.equalsIgnoreCase("/insert.do")) {
			com = new BInsertCommand();
		}else if(what.equalsIgnoreCase("/read.do")) {
			com = new BReadCommand();
		}else if(what.equalsIgnoreCase("/delete.do")) {
			com = new BDeleteCommand();
		}else if(what.equalsIgnoreCase("/updateui.do")) {
			com = new BUpdateUICommand();
		}else if(what.equalsIgnoreCase("/update.do")) {
			com = new BUpdateCommand(); 
		}else if(what.equalsIgnoreCase("/replyui.do")) {
			com = new BReplyUICommand();
		}else if (what.equalsIgnoreCase("/reply.do")) {
			com = new BReplyCommand();
		}
		
		
		
		
		if( com != null) {
			CommandAction action = com.execute(request, response);
			
			if(action != null) {
				if(action.isRedirect()) {
					response.sendRedirect(action.getWhere());
				}else {
					request.getRequestDispatcher(action.getWhere()).forward(request, response);
				}
			}
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
