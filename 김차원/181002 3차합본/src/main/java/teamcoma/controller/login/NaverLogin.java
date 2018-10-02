package teamcoma.controller.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.repository.domain.Member;
import teamcoma.repository.mapper.LoginMapper;

@WebServlet("/login/naverlogin.do")
public class NaverLogin extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		LoginMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
		
		String email = request.getParameter("email");	
		String birthday = request.getParameter("birthday");
		String profileImage = request.getParameter("profileImage");
		String nickName = request.getParameter("nickName");
		
		System.out.println(email);
		System.out.println(birthday);
		System.out.println(profileImage);
		System.out.println(nickName);
		
		Member member = new Member();
		
		member.setDay(birthday);
		member.setDetailAddr("1");
		member.setFileSysName(profileImage);
		member.setFileSysPath("1");
		member.setId("naverlogin");
		member.setMainAddr("1");
		member.setMonth("1");
		member.setName("1");
		member.setNickName(nickName);
		member.setPassword("1");
		member.setPhoneNumber("1");
		member.setSignupClassify("1");
		member.setYear("1");
		member.setEmail(email);
		
		mapper.insertMember(member);
	}

}
