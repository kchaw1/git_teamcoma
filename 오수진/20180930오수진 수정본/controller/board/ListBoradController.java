package teamcoma.controller.board;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.domain.Board;
import teamcoma.repository.mapper.BoardMapper;

@WebServlet("/board/list.do")
public class ListBoradController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("bCategory"));
		// 메퍼를 통해서 데이터 얻어오기 
		BoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
		List<Board> list = mapper.selectBoard(no);
		
		request.setAttribute("list", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/board/boardList.jsp");
		rd.forward(request, response);
	}

}
