package teamcoma.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.domain.Board;
import teamcoma.repository.mapper.BoardMapper;

@WebServlet("/board/update.do")
public class UpdateBoardController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		BoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
		
		Board board = new Board();
		
	
		board.setbNo(Integer.parseInt(request.getParameter("no")));
		board.setbTitle(request.getParameter("bTitle"));
		board.setbContent(request.getParameter("bContent"));
		board.setbCategory(Integer.parseInt(request.getParameter("bCategory")));
		mapper.updateBoard(board);
		
		response.sendRedirect("/project_coma/board/list.do?bCategory=1");
		
	}
	
}
