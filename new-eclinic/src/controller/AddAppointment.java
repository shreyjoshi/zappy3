
package controller;

import dao.AddAppointmentDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AddAppointment", urlPatterns = {"/AddAppointment"})
public class AddAppointment extends HttpServlet 
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String pname=request.getParameter("pname");
        String dname=request.getParameter("dname");
        String category=request.getParameter("category");
        String date=request.getParameter("appdate");
        double x=Double.parseDouble(request.getParameter("apptime"));
        double apptime=x;
       if(x%1.0==0.0)
       {
    	   apptime=x;
       }
       else {
    	  apptime=x+0.20;
       }
        AddAppointmentDAO aad=new AddAppointmentDAO();
        int i=aad.insertAppointment(pname,dname, category, date,apptime);
        
        if(i>0)
        {
            response.sendRedirect("appointmentadded.jsp");
        }
        else
        {
            response.sendRedirect("errorMessage.jsp");            
        }
    }
}
