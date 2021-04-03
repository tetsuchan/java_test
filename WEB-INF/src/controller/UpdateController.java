package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.UpdateService;

@WebServlet("/update")
public class UpdateController extends HttpServlet{

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String blood = request.getParameter("blood");
		String memo = request.getParameter("memo");
		String id = request.getParameter("id");
		UpdateService updateservice = new UpdateService();
		
		int num = updateservice.update(email,password,name,gender,blood,memo,id);
		request.setAttribute("num", num);
		ServletContext sc = getServletContext();
		sc.getRequestDispatcher("/" + "update.jsp").forward(request, response);
	}

}
