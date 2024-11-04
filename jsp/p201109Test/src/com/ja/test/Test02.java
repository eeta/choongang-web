package com.ja.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Test2
 */
@WebServlet("/Test02")
public class Test02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Test02() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		String v1 = request.getParameter("v1");
		System.out.println("v1 넘어온 값: " + v1);
		// http://localhost:8080/p201109Test/Test02?v1=qqqq
		
		String v2 = request.getParameter("v2");
		System.out.println("v2 넘어온 값: " + v2);
		// http://localhost:8080/p201109Test/Test02?v1=qwer&v2=7777
		
		response.getWriter().println("<!DOCTYPE html>");
		response.getWriter().println("<html>");
		response.getWriter().println("<head>");
		response.getWriter().println("</head>");
		response.getWriter().println("<body>");
		response.getWriter().println("<h1>hello</h1>");
		
		/*
		 * if (v1 == null) {
		 *     response.getWriter().println("<h2>LOL<h2>");
		 * } else {
		 *     response.getWriter().println("넘어온 값: " + v1);
		 * }
		 */
		
		response.getWriter().println("<a href='./Test01'>link Test01</a>");
		
		response.getWriter().println("</body>");
		response.getWriter().println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}