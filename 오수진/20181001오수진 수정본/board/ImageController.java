package teamcoma.controller.board;



import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import teamcoma.repository.domain.Attach;
import teamcoma.repository.domain.Board;

@WebServlet("/board/img.do")
public class ImageController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		request.setCharacterEncoding("utf-8");
		String uploadPath = "C:/app/upload";
		
		// 날짜를 활요해서 디렉토리를 구성(년/월/일/시)
		
		SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/HH/mm");
		String datePath = sdf.format(new Date());
		System.out.println("datePath :" +datePath);
		// File - mkdirs() mkdirs-경로를 만들어라 
		//날짜부분을 동적으로 데이터를 옮겨오고싶다 
		//디렉토리를 만들었으니까 거기로 넣어줘라!
		File file = new File(uploadPath +datePath);
		if(file.exists()==false) file.mkdirs();
		
	
		
		MultipartRequest mRequest = new MultipartRequest( 
				request, 
				uploadPath+datePath,
				1024*1024*100,//업로드될 파일의 최대 크기 지정
				"utf-8",//파라미터 인코딩 지정 
				new DefaultFileRenamePolicy()//서버에 실제 저장되는 파일의 이름 규칙을 지정
		);
	
		Enumeration<String> list  = mRequest.getFileNames(); //
		 
		 while(list.hasMoreElements()) {
			 //attach1, attach2.....attach5
			 String fName=list.nextElement();
			
			 
			 File f = mRequest.getFile(fName);
			 if (f != null) {
				 System.out.println("파일 사이즈 (byte) : " +f.length());
				String oriName = mRequest.getOriginalFileName(fName);
				System.out.println("원본파일명  : "+oriName);
				String systemName =mRequest.getFilesystemName(fName);
				System.out.println("서버 파일명 :"+systemName);
				response.setContentType("application/json; charset=utf-8"); 
				PrintWriter out = response.getWriter();
				out.println(new Gson().toJson("http://localhost:8000/boardImg/"+systemName));
				out.close();
			 }//if
		 }//for
		 
		 */
		
		String uploadPath = "C:/app/upload";
	    int size = 10 * 1024 * 1024;  // 업로드 사이즈 제한 10M 이하
		
		String fileName = ""; // 파일명
		
		try{
	        // 파일업로드 및 업로드 후 파일명 가져옴
			MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());
			Enumeration files = multi.getFileNames();
			String file = (String)files.nextElement(); 
			fileName = multi.getFilesystemName(file); 
			
			
			
			
			response.setContentType("application/json; charset=utf-8"); 
			PrintWriter out = response.getWriter();
			out.println(new Gson().toJson("http://localhost:8000/boardImg/"+fileName));
			out.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
	    // 생성된 경로를 JSON 형식으로 보내주기 위한 설정


		
	}
		
		
		
	

}
