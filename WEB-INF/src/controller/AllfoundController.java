package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.Customer;
import service.AllfoundService;


@WebServlet("/all")
public class AllfoundController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
			AllfoundService allfoundservice = new AllfoundService();
			List <Customer> cL = allfoundservice.found();
			request.setAttribute("cL", cL);
			ServletContext sc = getServletContext();
			sc.getRequestDispatcher("/" + "mypage.jsp").forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
//		idをキーに顧客情報をDBから取得する
		AllfoundService allfoundservice = new AllfoundService();
		List <Customer> cL = allfoundservice.aS(id);
		request.setAttribute("cL", cL);
		ServletContext sc = getServletContext();
		sc.getRequestDispatcher("/" + "detail.jsp").forward(request, response);

	}

}
