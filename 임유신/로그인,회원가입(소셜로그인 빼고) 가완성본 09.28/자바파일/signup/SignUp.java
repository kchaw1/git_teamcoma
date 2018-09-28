package teamcoma.controller.signup;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.common.file.MlecFileRenamePolicy;
import teamcoma.repository.domain.Member;
import teamcoma.repository.mapper.LoginMapper;

@WebServlet("/signup/signUp.do")
public class SignUp extends HttpServlet{
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		
		LoginMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
		
		String uploadPath = "D:/app/upload";
		
		//날짜를 활용해서 디렉토리를 구성(년/월/일/시)
		SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/HH");
		String datePath = sdf.format(new Date());
		System.out.println("datePath:"+ datePath);
		
		
		//File - mkdirs();
		File file = new File(uploadPath + datePath);
		
		if(file.exists() == false) file.mkdirs();
		
		MultipartRequest mRequest = new MultipartRequest(
				request,
				uploadPath + datePath,  // 사용자가 전성한 파일이 저장될 폴더 지정
				1024*1024*100,   //업로드될 파일의 최대크기 지정
				"utf-8",        // 파라미터 인코딩 지정
				new MlecFileRenamePolicy()   //서버에 실제 저장되는 파일의 이름 규칙을 지정
			);
	
		
		
		Member member = new Member();
		
		String id = mRequest.getParameter("id");
		String password = mRequest.getParameter("password");
		String name = mRequest.getParameter("name");
		String nickName = mRequest.getParameter("nickName");
		String mainAddr = mRequest.getParameter("mainAddr");
		String detailAddr = mRequest.getParameter("detailAddr");
		String email = mRequest.getParameter("email");
		String phoneNumber = mRequest.getParameter("phoneNumber");
		String signupClassify = mRequest.getParameter("signupClassify");
		String year = mRequest.getParameter("year");
		String day = mRequest.getParameter("day");
		String month = mRequest.getParameter("month");
		
	
		
	
			
		File f = mRequest.getFile("fileSysName");
			if(f != null) {
		
				
				member.setFileSysName(mRequest.getFilesystemName("fileSysName"));
				member.setFileSysPath(f.getParent());
		}
		
		
		member.setId(id);
		member.setPassword(password);
		member.setName(name);
		member.setNickName(nickName);
		member.setMainAddr(mainAddr);
		member.setDetailAddr(detailAddr);
		member.setEmail(email);
		member.setPhoneNumber(phoneNumber);
		member.setSignupClassify(signupClassify);
		member.setYear(year);
		member.setDay(day);
		member.setMonth(month);
	
		mapper.insertMember(member);
		
//		response.sendRedirect("/jsp/signup/signUp.do");
		
		 response.sendRedirect(request.getContextPath() + "/jsp/main/main.jsp");
		
		
		
	}
}
