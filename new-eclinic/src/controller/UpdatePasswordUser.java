/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

/**
 *
 * @author shrey
 */


import dao.UpdatePasswordDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "UpdatePasswordUser", urlPatterns = {"/UpdatePasswordUser"})
public class UpdatePasswordUser extends HttpServlet 
{

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("index.jsp");
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        HttpSession session=request.getSession(true);
        String currentPassword=request.getParameter("currentPassword");
        String password=request.getParameter("newPassword");
        String cpassword=request.getParameter("cpassword");
        String userid=(String)session.getAttribute("userid");
        if(password.equals(cpassword))
        {
            UpdatePasswordDAO upd=new UpdatePasswordDAO();
            int i=upd.changePassword(userid, password,currentPassword);
            if(i>0)
            {
                response.sendRedirect("profileUpdatedUser.jsp");
            }
            else
            {
                response.sendRedirect("errorMessage.jsp");
            }
        }
    }
    
}
