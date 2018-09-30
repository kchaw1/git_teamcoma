package teamcoma.controller.chef;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import teamcoma.repository.domain.Member;

@WebServlet("/chef/chef-main.do")
public class ChefMainForm extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/chef/chefMain.jsp");
		rd.forward(request, response);
	}
	
}
