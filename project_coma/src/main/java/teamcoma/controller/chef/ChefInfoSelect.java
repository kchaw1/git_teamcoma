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

@WebServlet("/chef/chefinfo-select.do")
public class ChefInfoSelect extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		Member member = (Member)session.getAttribute("user");
		
		request.setAttribute("member", member);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/chef/chefInfoModify.jsp");
		
		rd.forward(request, response);
		
	}
	
	
	
	
	
}
