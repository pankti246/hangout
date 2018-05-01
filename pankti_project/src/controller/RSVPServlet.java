package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.RSVPbean;
import dao.RSVPdao;
import controller.SendEmail;

/**
 * Servlet implementation class RSVPServlet
 */
@WebServlet("/RSVPServlet")
public class RSVPServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RSVPServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("enter");

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String time = request.getParameter("time");
		String venue = request.getParameter("venue");
		HttpSession session = request.getSession();
		String email = session.getAttribute("email").toString();
		String firstname = session.getAttribute("firstname").toString();
		System.out.println(email);
		System.out.println(id);


		RSVPbean r = new RSVPbean();
		r.setid(id);
		r.setemail(email);
		System.out.println("dao");

		RSVPdao d = new RSVPdao();
		String uservalidate = d.authenticateUser(r);
		
		if(uservalidate.equals("SUCCESS"))
		{
		
			System.out.println("servlet12");
			System.out.println("In The Email POST " + email);
			try {
				System.out.println("in try block");
				SendEmail.send(email,firstname+","+name+","+time+","+venue);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}

			response.sendRedirect("Profile.jsp?msg=event added sucessfully");
		}
		else {
			System.out.println("servlet13");

			response.sendRedirect("Profile.jsp?msg=event not  added sucessfully");


		
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
