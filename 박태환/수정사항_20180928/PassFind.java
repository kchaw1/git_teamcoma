package teamcoma.controller.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.domain.Member;
import teamcoma.repository.mapper.LoginMapper;

@WebServlet("/login/passfind.do")
public class PassFind extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		LoginMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
		
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		Member member = new Member();
		
		member.setId(id);
		member.setEmail(email);
		
		String password =  mapper.selectPassFind(member);
		
		response.setContentType("application/json; charset=utf-8");
	      PrintWriter out = response.getWriter();
	      out.println(new Gson().toJson(password));
	      out.close();
		
	}
	

}
