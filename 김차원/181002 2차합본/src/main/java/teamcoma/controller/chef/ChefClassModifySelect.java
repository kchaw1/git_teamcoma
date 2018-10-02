package teamcoma.controller.chef;

import java.io.IOException;	


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.domain.ClassInfo;
import teamcoma.repository.mapper.ClassMapper;

@WebServlet("/chef/class-modify1.do")
public class ChefClassModifySelect extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ClassMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ClassMapper.class);
		
		int classNo = Integer.parseInt(request.getParameter("classNo"));
		
		
		ClassInfo classInfo = mapper.selectClassInfo(classNo); // chefMain에서 눌렀을때 a태그에 파라미터값 포함시켜야함
		
		
//		FileInfo fileInfo = mapper.selectFile(no);
		
		request.setAttribute("classInfo", classInfo);
//		request.setAttribute("fileInfo", fileInfo);
			
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/chef/chefClassModify.jsp");
		rd.forward(request, response);
		
	}

}
