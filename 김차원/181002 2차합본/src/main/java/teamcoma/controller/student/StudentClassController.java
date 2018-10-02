package teamcoma.controller.student;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.domain.ClassInfo;
import teamcoma.repository.domain.ClassStudent;
import teamcoma.repository.domain.Member;
import teamcoma.repository.mapper.ClassMapper;
import teamcoma.repository.mapper.StudentMapper;

@WebServlet("/studentboard/ing.do")
public class StudentClassController extends HttpServlet {
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StudentMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(StudentMapper.class);
		ClassMapper mapper2 = MyAppSqlConfig.getSqlSessionInstance().getMapper(ClassMapper.class);
		
		HttpSession session = request.getSession();
		Member member =(Member)session.getAttribute("user");
		
		int no = member.getNo();
		List<ClassStudent> list2 = mapper.selectClass(no);
		
		
		List<ClassInfo> list = new ArrayList<>();
		for(ClassStudent c : list2) {
			list.add(mapper2.selectClassInfo(c.getClassNo()));
		}
		
		
		request.setAttribute("list", list);

		RequestDispatcher rd = request.getRequestDispatcher("/jsp/studentboard/ing.jsp");
		rd.forward(request, response);
	}
}
