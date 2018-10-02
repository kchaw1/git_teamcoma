package teamcoma.controller.chef;

import java.io.IOException;
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
import teamcoma.repository.domain.Member;
import teamcoma.repository.mapper.ClassMapper;



@WebServlet("/chef/class-list.do")
public class ChefClassList extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ClassMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(ClassMapper.class);
		
		
		HttpSession session = request.getSession();
	      
	      Member member = (Member)session.getAttribute("user");
	      
	      int no = member.getNo(); //로그인한 유저의 번호
	     
	   /* 클래스인포 테이블에 있는 강사번호를 통해 사진을 띄워줌
	      
	      List<ChefFile> chefFile = mapper.classPictureSelect(no);
	      request.setAttribute("chefFile", chefFile);*/
	      
	     // 
	      
		List<ClassInfo> classInfo = mapper.selectMyList(no);
		request.setAttribute("classInfo", classInfo);
		request.setAttribute("member", member);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/chef/chefClassList.jsp");
		rd.forward(request, response);
	}
}