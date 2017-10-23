
package controller;

import dao.AddPatientDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AddPatient", urlPatterns = {"/AddPatient"})
public class AddPatient extends HttpServlet 
{
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("index.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String pname=request.getParameter("Name");
        String paddress=request.getParameter("Address");
        String pgender=request.getParameter("Gender");
        String pdob=request.getParameter("DOB");
        String pmobno=request.getParameter("Mobile No.");
        String pemail=request.getParameter("Email Id");
        String ppass=request.getParameter("Password");
        
        AddPatientDAO apd=new AddPatientDAO();
        int i=apd.insertPatient(pname, paddress, pgender, pdob, pmobno, pemail, ppass);
        
        if(i>0)
        {
            response.sendRedirect("signinpatient.jsp");
        }
        else
        {
            response.sendRedirect("errorMessage.jsp");            
        }
    }
}
