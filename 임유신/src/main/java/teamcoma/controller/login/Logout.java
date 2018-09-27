package teamcoma.controller.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.domain.Member;
import teamcoma.repository.mapper.LoginMapper;

@WebServlet("/login/logout.do")
public class Logout extends HttpServlet{

	 @Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			 //로그인 성공, 사용자 정보를 관리한다.
			 HttpSession session = request.getSession();
			 session.invalidate();
			 
			 //로그인 성공시 메인화면으로 이동
			 response.sendRedirect(request.getContextPath() + "/jsp/main/main.jsp");
			 
		
		 
	}//service
}













