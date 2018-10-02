package teamcoma.controller.chef;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import teamcoma.common.db.MyAppSqlConfig;
import teamcoma.common.file.MlecFileRenamePolicy;
import teamcoma.repository.domain.ChefFile;
import teamcoma.repository.domain.ClassInfo;
import teamcoma.repository.mapper.ClassMapper;

@WebServlet("/chef/class-modify2.do")
public class ChefClassModifyUpdate extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ClassMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(ClassMapper.class);
		
//int no = Integer.parseInt(request.getParameter("no"));
		
		 
			String uploadPath = "c:/app/upload";
			
			// 날짜를 활용해서 디렉토리를 구성(년/월/일/시)
			SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/HH");
			String datePath = sdf.format(new Date());
			System.out.println("datePath : " + datePath);
			// File - mkdirs()
			File file = new File(uploadPath + datePath);
			if (file.exists() == false) file.mkdirs();
			
			MultipartRequest mRequest = new MultipartRequest(
					request, 
					uploadPath + datePath,
					1024 * 1024 * 100, 
					"utf-8", 
					new MlecFileRenamePolicy()
			);
	
			int classNo = Integer.parseInt(mRequest.getParameter("classNo"));
		System.out.println("classNo는" + classNo);
		
		String className = mRequest.getParameter("classname");
		String classClassify = mRequest.getParameter("classclassify");
		String classTeacher = mRequest.getParameter("classteacher");
		String startDay = mRequest.getParameter("startdate");
		String endDay = mRequest.getParameter("enddate");
		String startTime = mRequest.getParameter("starttime"); 
		String endTime = mRequest.getParameter("endtime");
		int classCost = Integer.parseInt(mRequest.getParameter("classcost"));
		String classVideo = mRequest.getParameter("classvideo");
		String addr = mRequest.getParameter("addr");
		String classIntroduce = mRequest.getParameter("classintroduce");
		String mapx = mRequest.getParameter("mapx");
		String mapy = mRequest.getParameter("mapy");
			
		
		ClassInfo classInfo = new ClassInfo();
		
		classInfo.setClassNo(classNo); // 수정해야함
		classInfo.setClassName(className);
		classInfo.setClassClassify(classClassify);
		classInfo.setClassTeacher(classTeacher);
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
		
		mapper.updateClassInfo(classInfo);

		ChefFile chefFile1 = new ChefFile();	// 이력첨부
		ChefFile chefFile2 = new ChefFile();	// 클래스사진첨부
		
		File careerFile = mRequest.getFile("classattach1");
		File classPicture = mRequest.getFile("classattach2");
		
		if (careerFile != null) {
			chefFile1.setClassNo(classNo); // 수정
			chefFile1.setChefFileName(mRequest.getFilesystemName("classattach1"));
			chefFile1.setChefFilePath(datePath);
			chefFile1.setChefFileClassify("1");
			chefFile1.setClassNo(classInfo.getClassNo());
		}
		
		if (classPicture != null) {
			chefFile1.setClassNo(classNo); // 수정
			chefFile2.setChefFileName(mRequest.getFilesystemName("classattach2"));
			chefFile2.setChefFilePath(datePath);
			chefFile2.setChefFileClassify("2");
			chefFile2.setClassNo(classInfo.getClassNo());
		}
		
		mapper.updateChefFile(chefFile1);
		mapper.updateChefFile(chefFile2);
		
		response.sendRedirect("/project_coma/jsp/chef/chefMain.jsp");
		
	}

}
