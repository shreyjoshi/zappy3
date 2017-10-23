
package controller;

import dao.AddDoctorDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AddDoctor", urlPatterns = {"/AddDoctor"})
public class AddDoctor extends HttpServlet 
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String dname=request.getParameter("Name");
        String pgender=request.getParameter("gender");
        String category=request.getParameter("category");
        String dqual=request.getParameter("qualification");
        String dmobno=request.getParameter("Mobile No.");
        String demail=request.getParameter("Email Id");
        String dpass=request.getParameter("Password");
        
        AddDoctorDAO ald=new AddDoctorDAO();
        int i=ald.insertDoctor(dname, pgender,category,dqual,dmobno, demail, dpass);
        
        if(i>0)
        {
            response.sendRedirect("signindoc.jsp");
        }
        else
        {
            response.sendRedirect("errorMessage.jsp");            
        }
    }
}
