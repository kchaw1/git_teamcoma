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

@WebServlet("/login/naverlogin.do")
public class NaverLogin extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		LoginMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
		
		String email = request.getParameter("email");	
				
		System.out.println(email);
		
		Member member = new Member();
		
		member.setId(email);
		member.setPassword("12345678");
		
		Member login = mapper.selectMemberInfo(member);
		
		if(login == null) {
			request.setAttribute("member", member);
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/signup/naversignup.jsp");
			rd.forward(request, response);
			
			return;
		} 
			//로그인 성공, 사용자 정보를 관리한다.
			 HttpSession session = request.getSession();
			 session.setAttribute("user", login);
			 
			 //로그인 성공시 메인화면으로 이동
			 response.sendRedirect(request.getContextPath() + "/jsp/main/main.jsp");		
	}

}
