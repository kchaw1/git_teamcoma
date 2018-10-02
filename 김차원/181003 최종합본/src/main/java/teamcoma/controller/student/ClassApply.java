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
import teamcoma.repository.domain.ClassStudent;
import teamcoma.repository.domain.Member;
import teamcoma.repository.mapper.StudentMapper;

@WebServlet("/student/apply.do")
public class ClassApply extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StudentMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(StudentMapper.class);
		
		HttpSession session = request.getSession();
		
		Member member = (Member)session.getAttribute("user");
		
		int classNo = Integer.parseInt(request.getParameter("classNo"));
		
		ClassStudent classStudent = new ClassStudent();
		
		classStudent.setNo(member.getNo());
		classStudent.setClassNo(classNo);
	
		classStudent.setmEmail(member.getEmail());
		classStudent.setmFileName(member.getFileSysName());
		classStudent.setmFilePath(member.getFileSysPath());
		classStudent.setmMainAddr(member.getMainAddr());
		classStudent.setmDetailAddr(member.getDetailAddr());
		
		classStudent.setmName(member.getName());
		classStudent.setmNickname(member.getNickName());
		classStudent.setmPhoneNumber(member.getPhoneNumber());
		
		classStudent.setmYear(member.getYear());
		classStudent.setmMonth(member.getMonth());
		classStudent.setmDay(member.getDay());
		
		mapper.insertClassStudent(classStudent);
		
		response.sendRedirect(request.getContextPath() + "/classfind/classfind.do");
	}

}
