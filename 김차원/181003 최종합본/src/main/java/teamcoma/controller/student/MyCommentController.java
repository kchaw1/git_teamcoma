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
import teamcoma.repository.domain.Comment;
import teamcoma.repository.domain.Member;
import teamcoma.repository.mapper.StudentMapper;

@WebServlet("/studentboard/comment.do")
public class MyCommentController extends HttpServlet{
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StudentMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(StudentMapper.class);
		
		HttpSession session = request.getSession();
		Member member =(Member)session.getAttribute("user");
		
		String cWriter = member.getNickName();
		
		List<Comment> list1= mapper.selectComment(cWriter);
		request.setAttribute("list1", list1);
		
		RequestDispatcher rd = request.getRequestDispatcher(
				"/jsp/studentboard/comment.jsp"
		);
		rd.forward(request, response);
		
	}

}
