package kr.co.mle.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Board;
import kr.co.mlec.repository.domain.Page;
import kr.co.mlec.repository.mapper.BoardMapper;

@WebServlet("/board/list2.do")
public class ListBoardController2 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
		// 기본 페이지 번호 1번 설정
		int pageNo = 1;
		
		// 페이지 번호가 넘어온 경우
		try {
			pageNo = Integer.parseInt(request.getParameter("pageNo"));
		} catch (Exception e) {}
		
		Page page = new Page();
		page.setPageNo(pageNo);
		List<Board> list = mapper.selectBoard(page);
		int count = mapper.selectBoardCount();
		
		// 마지막 페이지 번호
//		int lastPage = count % 10 == 0 ? count / 10 : count / 10 + 1;  
		int lastPage = (int)Math.ceil(count / 10d);
		
		request.setAttribute("list", list);
		request.setAttribute("count", count);
		request.setAttribute("lastPage", lastPage);
		request.setAttribute("pageNo", pageNo);
		
		// 페이지 블럭 계산하기
		/*
		 *    1 - 10 페이지는  1
		 *   11 - 20 페이지는  2
		 *   21 - 30 페이지는  3
		 *   ....
		 */
		int tabSize = 10;
		int currTab = (pageNo - 1) / tabSize + 1;
		
		// 블럭에 해당하는 시작페이지와 끝페이지 계산하기
		int beginPage = (currTab - 1) * tabSize + 1;
		// 화면에 출력할 마지막 페이지는 실제 데이터 개수를 가져와서 비교 처리해야 함...
		int endPage = (currTab * tabSize < lastPage) ? currTab * tabSize
				                                     : lastPage;

		// 앞으로 이동 버튼, 뒤로 이동 버튼 존재 여부
		boolean prev = beginPage != 1;
		boolean next = endPage != lastPage;
		
		request.setAttribute("beginPage", beginPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("prev", prev);
		request.setAttribute("next", next);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/board/list2.jsp");
		rd.forward(request, response);
	}
}













