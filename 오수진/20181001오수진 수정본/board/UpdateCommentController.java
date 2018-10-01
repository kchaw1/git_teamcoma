package teamcoma.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.domain.Comment;
import teamcoma.repository.mapper.BoardMapper;

@WebServlet("/board/updatecomment.do")
public class UpdateCommentController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		BoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
		
		int cNo = Integer.parseInt(request.getParameter("cNo"));
		int no = Integer.parseInt(request.getParameter("no"));
		
		Comment comment = new Comment();
		comment.setcContent(request.getParameter("cContent"));
		comment.setcNo(cNo);
		
		mapper.updateComment(comment);
		
		response.sendRedirect("detail.do?no="+no);
		
	}

}
