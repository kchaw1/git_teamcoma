package teamcoma.controller.student;

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
import teamcoma.repository.mapper.StudentMapper;

@WebServlet("/studentboard/editprofile.do")
public class EditProflieController extends HttpServlet{
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		StudentMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(StudentMapper.class);
		
		HttpSession session = request.getSession();
		Member member =(Member)session.getAttribute("user");
		
		int no = member.getNo();
		
		Member member1 = mapper.selectMember(no); // 나중에 고쳐야함
		
		request.setAttribute("member", member1);

		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/studentboard/editprofile.jsp");
		rd.forward(request, response);
	}
}


	

