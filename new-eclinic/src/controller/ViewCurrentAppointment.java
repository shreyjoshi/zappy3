package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Appointment;
import dao.ViewAppointmentDao;

/**
 * Servlet implementation class ViewCurrentAppointment
 */
@WebServlet("/ViewCurrentAppointment")
public class ViewCurrentAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewCurrentAppointment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ss=request.getSession();
		String username=(String)ss.getAttribute("usernamedoc");
		ViewAppointmentDao vad=new ViewAppointmentDao();
		ArrayList<Appointment> list=vad.getAppointment(username);
		RequestDispatcher rd=request.getRequestDispatcher("viewCurrentAppointment.jsp");
		request.setAttribute("LIST",list);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
