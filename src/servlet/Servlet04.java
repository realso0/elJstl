package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.UserVo;

@WebServlet("/04")
public class Servlet04 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		UserVo userVo = new UserVo(1, "박명수", "park", "1234", "male");
		request.setAttribute("userVo", userVo); //userVo를 userVo라는 실어서 보냄, 객체를 실어보낼때 쓰는것인가?
		
		
		request.setAttribute("num", 1); //1을 num에 실어서 보냄
		request.setAttribute("str", "안녕하세요");
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/04.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
