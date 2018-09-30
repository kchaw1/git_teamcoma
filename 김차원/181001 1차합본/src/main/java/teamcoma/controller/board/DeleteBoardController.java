package teamcoma.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.mapper.BoardMapper;

@WebServlet("/board/delete.do")
public class DeleteBoardController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bno = Integer.parseInt(request.getParameter("no"));
		
		BoardMapper  mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
		
		mapper.deleteBoard(bno);
		response.sendRedirect("/project_coma/board/list.do?bCategory=1");
		 
	}
	
	

}
