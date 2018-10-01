package teamcoma.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.mapper.BoardMapper;

@WebServlet("/board/deletecomment.do")
public class DeleteCommentController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
		int no = Integer.parseInt(request.getParameter("no"));
		int cNo = Integer.parseInt(request.getParameter("cNo"));
		
		mapper.deleteComment(cNo);
		response.sendRedirect("detail.do?no=" + no);
	}

}
