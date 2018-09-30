package teamcoma.controller.board;

import java.io.IOException;	

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.domain.Board;
import teamcoma.repository.mapper.BoardMapper;


@WebServlet("/board/detail.do")
public class DetailBoardController extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//준비 //공유 //발사 
		request.setCharacterEncoding("utf-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		BoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
		Board board=mapper.selectBoardByNo(no);
		request.setAttribute("board",board);
		
		//댓글 
	
		RequestDispatcher rd =  request.getRequestDispatcher(
				"/jsp/board/detailBoard.jsp");
		rd.forward(request, response);
		
	}

}
