package teamcoma.controller.classfind;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.domain.ClassInfo;
import teamcoma.repository.domain.Member;
import teamcoma.repository.mapper.ClassInfoMapper;



@WebServlet("/classfind/classfind.do")
public class ClassFind extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ClassInfoMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(ClassInfoMapper.class);
		
				
		List<ClassInfo> classInfo = mapper.selectName();
		
		
		 // 클래스인포 테이블에 있는 강사번호를 통해 멤버리스트로 담고, 리스트를 jsp에 넘겨 for문을 돌려 사진을 띄워줌.
		List<Member> member = new ArrayList<>();
		
		for(ClassInfo c : classInfo) {
			member.add(mapper.selectMemberByNo(c.getNo()));
		}
		
		
		request.setAttribute("member", member);
		request.setAttribute("classInfo", classInfo);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/classfind/classfind.jsp");
		rd.forward(request, response);
	}
}