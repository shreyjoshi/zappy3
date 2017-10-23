/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Patient", urlPatterns = {"/Patient"})
public class Patient extends HttpServlet 
{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        try
        {
            HttpSession session=request.getSession(true);
            String username=(String)session.getAttribute("username");
            System.out.println(username);
            if(username!=null || !username.trim().equals(""))
            {
                RequestDispatcher dispatch=request.getRequestDispatcher("patientprofile.jsp");
                dispatch.forward(request, response);    
            }
            else
            {
                response.sendRedirect("index.jsp");
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
            response.sendRedirect("errorMessage.jsp");
        }
    }
}
