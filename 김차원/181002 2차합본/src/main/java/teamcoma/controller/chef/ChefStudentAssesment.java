package teamcoma.controller.chef;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.domain.ClassStudent;
import teamcoma.repository.mapper.ClassMapper;

@WebServlet("/chef/student-assesment.do")
public class ChefStudentAssesment extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ClassMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ClassMapper.class);
		
		int mNo = Integer.parseInt(request.getParameter("mNo"));
		String mAssesment = request.getParameter("mAssesment");
		
		ClassStudent classStudent = new ClassStudent();
		
		classStudent.setmNo(mNo);
		classStudent.setmAssesment(mAssesment);
		
		mapper.assesmentUpdate(classStudent);
		
		//response.sendRedirect(request.getContextPath() + "/chef/detail-student.do?mNo=" + mNo);
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(new Gson().toJson(classStudent));
		out.close();
	}
}
