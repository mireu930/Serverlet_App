package com.mireu.app.locations;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LocationController
 */
@WebServlet("/LocationController")
public class LocationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LocationController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		try {
			// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//		String method = request.getMethod();
//		System.out.println(method);
//		StringBuffer sb = request.getRequestURL();
//		System.out.println(sb.toString());
			String uri = request.getRequestURI();
//		System.out.println(uri);

			uri = this.setSubString(uri);
			PrintWriter p = response.getWriter();
			LocationDAO dao = new LocationDAO();
			if (uri.equals("/list.do")) {

				List<LocationDTO> dto = dao.getList();

//					PrintWriter p = response.getWriter();

				p.println("<table border = 1>");
				p.println("<thead>");
				p.println("<tr>");
				p.println("<th>id</th>");
				p.println("<th>address</th>");
				p.println("<th>code</th>");
				p.println("</tr>");
				p.println("</thead>");
				p.println("<tbody>");
				for (int i = 0; i < dto.size(); i++) {
					p.println("<tr>");
					p.println("<td>" + dto.get(i).getLocation_id() + "</td>");
					p.println("<td>" + dto.get(i).getStreeat_address() + "</td>");
					p.println("<td>" + dto.get(i).getPostal_code() + "</td>");
					p.println("</tr>");

				}
				p.println("</tbody>");
				p.println("</table>");

				p.close();
			} else if (uri.equals("/detail.do")) {
				p.println("<html>");
				p.println("<head><title>Location Form</title></head>");
				p.println("<body>");
				p.println("<h1>Submit Location</h1>");
				p.println("<form action='/locationController' method='get'>");
				p.println("<input type='text' name='location' placeholder='Enter location'>");
				p.println("<input type='submit' value='Submit'>");
				p.println("</form>");
				p.println("</body>");
				p.println("</html>");

				String locationInput = request.getParameter("location");
//				Integer.parseInt(locationInput);
				if (locationInput != null) {
					LocationDTO dto = new LocationDTO();
					dto.setLocation_id(Integer.parseInt(locationInput));
					System.out.println(locationInput);
					List<LocationDTO> list = dao.getDetail(dto);
					for (int i = 0; i < list.size(); i++) {
						p.println("<table border = 1>");
						p.println("<thead>");
						p.println("<tr>");
						p.println("<th>id</th>");
						p.println("<th>address</th>");
						p.println("<th>code</th>");
						p.println("</tr>");
						p.println("</thead>");
						p.println("<tbody>");
						p.println("<tr>");
						p.println("<td>" + list.get(i).getLocation_id() + "</td>");
						p.println("<td>" + list.get(i).getStreeat_address() + "</td>");
						p.println("<td>" + list.get(i).getPostal_code() + "</td>");
						p.println("</tr>");
						p.println("</tbody>");
						p.println("</table>");
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private String setSubString(String data) {
		String result = data.substring(data.lastIndexOf("/"));
		return result;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 * 
	 *      StringTokenize(data,"/")
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
