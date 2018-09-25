package teamcoma.controller.classfind;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.domain.ClassInfo;
import teamcoma.repository.mapper.ClassInfoMapper;



@WebServlet("/classfind/classfind.do")
public class ClassFind extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ClassInfoMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(ClassInfoMapper.class);
		List<ClassInfo> classInfo = mapper.selectName();
		request.setAttribute("classInfo", classInfo);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/classfind/classfind.jsp");
		rd.forward(request, response);
	}
}