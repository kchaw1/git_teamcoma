package teamcoma.controller.chef;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.domain.ChefFile;
import teamcoma.repository.domain.ClassInfo;
import teamcoma.repository.domain.ClassStudent;
import teamcoma.repository.domain.Member;
import teamcoma.repository.mapper.ClassMapper;

@WebServlet("/chef/classinfo-select.do")
public class ChefClassInfoSelect extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ClassMapper mapper  = MyAppSqlConfig.getSqlSessionInstance().getMapper(ClassMapper.class);
		
		HttpSession session = request.getSession();
		
		Member member = (Member)session.getAttribute("user");
		
		int no = member.getNo(); // 로긴한 회원의 번호
			
		List<ChefFile> list =  mapper.classPictureSelect(no);
		
		// div 뽑는것도 같이 현재는 없음.
		
		List<ClassInfo> list1 = mapper.selectMyList(no); // 로긴한 번호를 통해 클래스 리스트 가져오기
		
		request.setAttribute("list", list);
		request.setAttribute("list1", list1);
	
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/chef/classinfo.jsp");
		rd.forward(request, response);
		
		/*
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(new Gson().toJson(list));
		out.close();
		*/
		
	}

}
