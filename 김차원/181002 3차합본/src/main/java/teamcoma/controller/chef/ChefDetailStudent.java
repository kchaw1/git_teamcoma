package teamcoma.controller.chef;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.domain.ClassStudent;
import teamcoma.repository.mapper.ClassMapper;

@WebServlet("/chef/detail-student.do")
public class ChefDetailStudent extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ClassMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ClassMapper.class);
		
		int mNo = Integer.parseInt(request.getParameter("mNo"));
		
		ClassStudent classStudent = mapper.selectDetailStudent(mNo);
		
		request.setAttribute("classStudent", classStudent);
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/chef/detailstudent.jsp");
		rd.forward(request, response);
			
	}

}
