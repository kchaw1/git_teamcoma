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
import kr.co.mlec.common.PageResult;
import kr.co.mlec.repository.domain.Board;
import kr.co.mlec.repository.domain.Page;
import kr.co.mlec.repository.mapper.BoardMapper;

@WebServlet("/board/list3.do")
public class ListBoardController3 extends HttpServlet {
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
		request.setAttribute("list", mapper.selectBoard(page));
		request.setAttribute("pageResult", new PageResult(pageNo, mapper.selectBoardCount()));
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/board/list3.jsp");
		rd.forward(request, response);
	}
}













