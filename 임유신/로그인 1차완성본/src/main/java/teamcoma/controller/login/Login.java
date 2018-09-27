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

@WebServlet("/login/login.do")
public class Login extends HttpServlet{


	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 request.setCharacterEncoding("utf-8");
		 
		 //사용자가 입력한 아이디와 패스워드를 꺼냄
		 String id = request.getParameter("id");
		 String password = request.getParameter("password");
		 
		 //mapper 얻고 메서드 호출
		 LoginMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
		 
		 Member member = new Member();
		 member.setId(id);
		 member.setPassword(password);
		 
		 Member login =  mapper.selectMemberInfo(member);
		 System.out.println(login);
		 //사용자가 입력한 아이디와 패스워드에 해당하는 데이터가 없는 경우
		 if(login == null) {
			 RequestDispatcher rd = request.getRequestDispatcher("/jsp/login/loginForm.jsp");
				rd.forward(request, response);
				return;
		 }
			 //로그인 성공, 사용자 정보를 관리한다.
			 HttpSession session = request.getSession();
			 session.setAttribute("user", login);
			 
			 //로그인 성공시 메인화면으로 이동
			 response.sendRedirect(request.getContextPath() + "/jsp/main/main.jsp");
			 
		
		 
	}//service
}













