package teamcoma.controller.student;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.domain.Board;
import teamcoma.repository.domain.Member;
import teamcoma.repository.mapper.StudentMapper;

@WebServlet("/studentboard/mypost.do")
public class MyClassCommentController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		StudentMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(StudentMapper.class);
		
		HttpSession session = request.getSession();
		Member member =(Member)session.getAttribute("user");
		
		String nickName = member.getNickName();
		
		List<Board> list= mapper.selectBoard(nickName); // 바꿔야할것
		request.setAttribute("list", list);
		
		
		RequestDispatcher rd = request.getRequestDispatcher(
				"/jsp/studentboard/mypost.jsp"
		);
		rd.forward(request, response);
	}

}
