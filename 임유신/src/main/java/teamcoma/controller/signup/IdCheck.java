package teamcoma.controller.signup;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.mapper.LoginMapper;

@WebServlet("/signup/signup1.do")
public class IdCheck extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 LoginMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
		 
		 List<String> list = mapper.Idcheck();
		 request.setAttribute("list", list);
		 
		 RequestDispatcher rd = request.getRequestDispatcher("/jsp/signup/signup.jsp");
			rd.forward(request, response);
	}
}

