package teamcoma.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.domain.Comment;
import teamcoma.repository.domain.Member;
import teamcoma.repository.mapper.BoardMapper;

@WebServlet("/board/registcomment.do")
public class WriteCommentController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//인코딩
			request.setCharacterEncoding("utf-8");
			
			
			//session
			HttpSession session = request.getSession();
			Member member = (Member)session.getAttribute("user");
			
			
			// db연결
			BoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
			
			int no = Integer.parseInt(request.getParameter("no"));
			Comment comment = new Comment();
			comment.setNo(no);
			comment.setcWriter(request.getParameter("cWriter"));
			comment.setcContent(request.getParameter("cContent"));
			mapper.insertComment(comment);
		
			response.sendRedirect("detail.do?no=" + no);
	}
	
}
