package com.naver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.rowset.internal.InsertRow;

/**
 * Servlet implementation class Myservlet3
 */
@WebServlet("*.do")
public class Myservlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Myservlet3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String what = request.getServletPath();
		String uri = request.getRequestURI();
		System.out.println(uri);
		String cpath = request.getContextPath();
		System.out.println(cpath);
		
		String what = uri.substring(cpath.length());
//		System.out.println(what);
		
		Command com = null;
		
		
		
		if(what.equalsIgnoreCase("/insert.do")) {
			com = new InsertCommand();
		}else if(what.equalsIgnoreCase("/list.do")) {
			com = new SellectCommand();
		}else if(what.equalsIgnoreCase("insertui.do")) {
			com = new InsertUICommand();
		}
		
		if(com != null) {
			com.execute(request, response);
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
