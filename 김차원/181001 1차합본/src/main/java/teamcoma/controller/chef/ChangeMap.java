package teamcoma.controller.chef;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import teamcoma.controller.chef.navermap.NaverMap;
import teamcoma.controller.chef.navermap.Point;

@WebServlet("/chef/change-map.do")
public class ChangeMap extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String address = request.getParameter("query");
		
		NaverMap nm = new NaverMap();
		
		Point point = nm.getXY(address);
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(new Gson().toJson(point));
		out.close();
		
	}
}
