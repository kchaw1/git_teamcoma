package teamcoma.controller.chef;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.domain.ClassStudent;
import teamcoma.repository.mapper.ClassMapper;

@WebServlet("/chef/studentlist")
public class ChefStudentList extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ClassMapper mapper  = MyAppSqlConfig.getSqlSessionInstance().getMapper(ClassMapper.class);
		
		int classNo = Integer.parseInt(request.getParameter("classNo"));
		
		List<ClassStudent> stuList = mapper.selectClassStudent(classNo);
		
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(new Gson().toJson(stuList));
		out.close();
		
		
	}

}
