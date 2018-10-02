	package teamcoma.controller.student;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.common.file.MlecFileRenamePolicy;
import teamcoma.repository.domain.Member;
import teamcoma.repository.mapper.StudentMapper;

@WebServlet("/studentboard/editprofile1.do")
public class EditProfileController2 extends HttpServlet{
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		StudentMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(StudentMapper.class);
		
		  HttpSession session = request.getSession();
		  Member sessionMember = (Member)session.getAttribute("user");
		   
	      String uploadPath = "C:/app/upload";
	      
	      //날짜를 활용해서 디렉토리를 구성(년/월/일/시)
	      SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/HH");
	      String datePath = sdf.format(new Date());
	      
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
		member.setNo(sessionMember.getNo()); //나중에 고쳐야함
		member.setEmail(mRequest.getParameter("email"));
		member.setPassword(mRequest.getParameter("password"));
		member.setMainAddr(mRequest.getParameter("mainAddr"));
		member.setDetailAddr(mRequest.getParameter("detailAddr"));	
		member.setPhoneNumber(mRequest.getParameter("phoneNumber"));	
		member.setYear(mRequest.getParameter("year"));	
		member.setMonth(mRequest.getParameter("month"));
		member.setDay(mRequest.getParameter("day"));
		
		File f = mRequest.getFile("fileSysName");
        if(f != null) {
           member.setFileSysName(mRequest.getFilesystemName("fileSysName"));
           member.setFileSysPath(datePath);
     }
		
        mapper.UpdateMember(member);
		response.sendRedirect("/project_coma/jsp/student/student.jsp");
	}
}


	

