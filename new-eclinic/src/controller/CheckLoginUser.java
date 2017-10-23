
package controller;

import dao.UserLoginDAO;
import beans.UserDTO;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "CheckLoginUser", urlPatterns = {"/CheckLoginUser"})
public class CheckLoginUser extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("index.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        try 
        {
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            
            UserDTO user=new UserDTO();
            user.setUsername(username);
            user.setPassword(password);
            
            new UserLoginDAO().loginVerify(user);
            
            if(user.isLogin())
            {
                HttpSession session=request.getSession(true);
                session.setAttribute("username", user.getUsername());
                response.sendRedirect("patientprofile.jsp");
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
