package teamcoma.controller.chef;

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
import teamcoma.repository.domain.ChefFile;
import teamcoma.repository.domain.ClassInfo;
import teamcoma.repository.domain.Member;
import teamcoma.repository.mapper.ClassMapper;

@WebServlet("/chef/class-open.do")
public class ChefClassOpen extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ClassMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ClassMapper.class);
		
	// insert 3개 필요할듯 tb_class_info, tb_chef_file, tb_chef
		
	// 	회원번호 받아와야함	int no = 세션?	
				
		HttpSession session = request.getSession();
		
		Member member = (Member)session.getAttribute("user");
		
		int no = member.getNo(); // 로그인한 회원의 회원번호
		String teacher = member.getName();
		
		System.out.println(no);
		
		String uploadPath = "c:/app/upload";
		
		SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/HH");
		String datePath = sdf.format(new Date());
		File file = new File(uploadPath + datePath);
		if (file.exists() == false) file.mkdirs();
		
		MultipartRequest mRequest = new MultipartRequest(
				request, 
				uploadPath + datePath, // 사용자가 전송한 파일이 저장될 폴더 지정
				1024 * 1024 * 100, // 업로드될 파일의 최대 크기 지정
				"utf-8", // 파라미터 인코딩 지정
				new MlecFileRenamePolicy() // 서버에 실제 저장되는 파일의 이름 규칙 지정
		);
		
	
		
		/*
		jsp name 값 이름
		classname
		classteacher
		startdate
		enddate
		starttime
		endtime
		classcost
		classvideo
		career
		addr
		classintroduce
		mapx
		mapy
		*/
		
		String className = mRequest.getParameter("classname");
		String classClassify = mRequest.getParameter("classclassify");
//		String classTeacher = mRequest.getParameter("classteacher");
		String startDay = mRequest.getParameter("startdate");
		String endDay = mRequest.getParameter("enddate");
		String startTime = mRequest.getParameter("starttime"); // 타임과 데이트를 심플데이트포맷 어떻게할지?
		String endTime = mRequest.getParameter("endtime");
		int classCost = Integer.parseInt(mRequest.getParameter("classcost"));
		String classVideo = mRequest.getParameter("classvideo");
		String career = mRequest.getParameter("career"); // 쉐프테이블로 넣어야함
		String addr = mRequest.getParameter("addr");
		String classIntroduce = mRequest.getParameter("classintroduce");
		String mapx = mRequest.getParameter("mapx");
		String mapy = mRequest.getParameter("mapy");
			
		
		ClassInfo classInfo = new ClassInfo();
		
		classInfo.setNo(no);
		classInfo.setClassName(className);
		classInfo.setClassClassify(classClassify);
		classInfo.setClassTeacher(teacher);
		classInfo.setClassStartDay(startDay);
		classInfo.setClassEndDay(endDay);
		classInfo.setClassStartTime(startTime);
		classInfo.setClassEndTime(endTime);
		classInfo.setClassCost(classCost);
		classInfo.setClassVideo(classVideo);
		classInfo.setClassLocation(addr);
		classInfo.setClassIntroduce(classIntroduce);
		classInfo.setClassLatitude(mapx);
		classInfo.setClassLongtitude(mapy);
		classInfo.setClassCareer(career);
		
		mapper.insertClassInfo(classInfo);
	/*	
	Enumeration<String> list = mRequest.getFileNames();
		
		ChefFile chefFile = new ChefFile();
		
		while (list.hasMoreElements()) {
			String fName = list.nextElement();
			File f = mRequest.getFile(fName);
			if (f != null) {
				System.out.println(fName);
				String systemName = mRequest.getFilesystemName(fName);
				String filePath = f.getParent();
				chefFile.setChefFileName(systemName);
				chefFile.setChefFilePath(filePath);
				chefFile.setChefFileClassify("1");
				chefFile.setClassNo(classInfo.getClassNo());
			}
		}
		*/
		ChefFile chefFile1 = new ChefFile();	// 이력첨부
		ChefFile chefFile2 = new ChefFile();	// 클래스사진첨부
		
		File careerFile = mRequest.getFile("classattach1");
		File classPicture = mRequest.getFile("classattach2");
		
		if (careerFile != null) {
			// 서버에 실제 저장된 파일명 가져오기
			chefFile1.setChefFileName(mRequest.getFilesystemName("classattach1"));
			chefFile1.setChefFilePath(datePath);
			chefFile1.setChefFileClassify("1");
			chefFile1.setClassNo(classInfo.getClassNo());
			chefFile1.setNo(no);
		}
		
		if (classPicture != null) {
			// 서버에 실제 저장된 파일명 가져오기
			chefFile2.setChefFileName(mRequest.getFilesystemName("classattach2"));
			chefFile2.setChefFilePath(datePath);
			chefFile2.setChefFileClassify("2");
			chefFile2.setClassNo(classInfo.getClassNo());
			chefFile2.setNo(no);
		}

		
		
		
		
		mapper.insertChefFile(chefFile1);
		mapper.insertChefFile(chefFile2);
		
		
		
		
		response.sendRedirect("/project_coma/jsp/chef/chefClassOpen1.jsp");
		
	}
}


