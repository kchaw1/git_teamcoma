package teamcoma.controller.board;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.domain.Attach;
import teamcoma.repository.domain.Board;
import teamcoma.repository.domain.Member;
import teamcoma.repository.mapper.BoardMapper;

@WebServlet("/board/write.do")
public class WriteBoardController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//인코딩
		request.setCharacterEncoding("utf-8");
		
		//session
		HttpSession session = request.getSession();
		Member member = (Member)session.getAttribute("user");
		String nickName = member.getNickName();
		
		String imgtag =request.getParameter("imgtag");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		int bCategory = Integer.parseInt(request.getParameter("bCategory"));
		
		//준비//공유 //발사
		BoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
		
		
		Board board = new Board();
		board.setbWriter(nickName);
		board.setbTitle(bTitle);
		board.setbContent(bContent);
		board.setbCategory(bCategory);
		mapper.insertBoard(board);
		
		
		int no  = board.getbNo();
		Attach attach = new Attach();
		
		attach.setbFilePath(imgtag);
		attach.setNo(no);
		//업로드 
		mapper.insertAttach(attach);
		System.out.println(imgtag);
		response.sendRedirect("/project_coma/board/list.do?bCategory=1");
		
	}

}
