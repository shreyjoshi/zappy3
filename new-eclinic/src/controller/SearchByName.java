
package controller;

import dao.SearchByNameDAO;
import dto.UserDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "SearchByName", urlPatterns = {"/SearchByName"})
public class SearchByName extends HttpServlet {
     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("home.html");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        try 
        {
            String username=request.getParameter("dname");
           
            
            UserDTO user= new UserDTO();
            user.setUsername(username);
                       
            new SearchByNameDAO().findDoctor(user);
            
            if(user.isLogin())
            {
                HttpSession session=request.getSession(true);
                session.setAttribute("username", user.getUsername());
                response.sendRedirect("doctorprofile.jsp");
            }
            else
            {
                response.sendRedirect("index.jsp");
            }
        } 
        catch (SQLException e) 
        {
            System.out.println(e);
            response.sendRedirect("errorMessage.jsp");
        }   
    }
}

    