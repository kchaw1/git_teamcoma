package teamcoma.controller.chef;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.domain.ClassInfo;
import teamcoma.repository.domain.Member;
import teamcoma.repository.mapper.ClassMapper;

@WebServlet("/chef/chef-introduce.do")
public class ChefIntroduce extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		ClassMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ClassMapper.class);
		
		int classNo = Integer.parseInt(request.getParameter("classNo")); // 클래스 찾기

		
		ClassInfo classInfo = mapper.selectClassInfo(classNo);	// 클래스 찾기에서 사진은 눌렀을때 파라미터 값으로 클래스 번호를 넘긴다. 해당 클래스 번호에 해당하는 정보 출력
		
		Member member = mapper.selectMemberInfoByNo(classInfo.getNo());
		
		
		
//		FileInfo fileInfo = mapper.selectFile(no);
		
		request.setAttribute("classInfo", classInfo);
		request.setAttribute("member", member);
			
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/chef/chefIntroduce.jsp");
		rd.forward(request, response);
		
	}

}
