package com.mireu.app.departments;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DepartmentController
 */
@WebServlet("/DepartmentController")
public class DepartmentController extends HttpServlet {
//	DepartmentDAO dao = new DepartmentDAO();
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DepartmentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 *
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		 String method = request.getMethod();
		System.out.println(method);
		StringBuffer sb = request.getRequestURL();
		System.out.println(sb.toString());
		DepartmentDAO dao = new DepartmentDAO();
		
		String uri = request.getRequestURI();
		uri = this.setSubString(uri);
		
		if(uri.equals("/list.do")) {
//		dao.getList();
		} else {
//		dao.getDetail();
		}
	}
	
	private String setSubString(String data) {
		String result = data.substring(data.lastIndexOf("/"));
		return result;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
