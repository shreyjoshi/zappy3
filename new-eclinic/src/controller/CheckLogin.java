/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import dao.DoctorLoginDAO;
import beans.UserDTO;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "CheckLogin", urlPatterns = {"/CheckLogin"})
public class CheckLogin extends HttpServlet 
{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("home.html");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        try 
        {
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            
            UserDTO user= new UserDTO();
            user.setUsername(username);
            user.setPassword(password);
            
            new DoctorLoginDAO().loginVerify(user);
            
            if(user.isLogin())
            {
                HttpSession session=request.getSession(true);
                session.setAttribute("usernamedoc", user.getUsername());
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

