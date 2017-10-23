package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.UserDTO;
import db.DBConnector;

/**
 * Servlet implementation class FetchApptime
 */
@WebServlet("/FetchApptime")
public class FetchApptime extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FetchApptime() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String appdate=request.getParameter("appdate");
		String dname=request.getParameter("dname");
		System.out.println(appdate+" anddd "+dname);
		PrintWriter out=response.getWriter();
		Connection con=DBConnector.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement("select * from appointment where dname=? and appdate=? order by apptime desc");
			ps.setString(1, dname);
			ps.setString(2,appdate);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				//UserDTO ud=new UserDTO();
				double x=Double.parseDouble(rs.getString("apptime"));
				//x=x+0.30;
				System.out.println(x+" and "+x%1.0);
				double d=x+0.5;
				while(d<18.00)
				{
					if(d%1.0==0.0) {
				out.println("<option>"+d+"0</option>");
					}else
					{double j=d-0.20;
						out.println("<option>"+j+"0</option>");
					}
				d=d+0.50;
				}
						//list.add(ud);
				//x=ud.getUsername();
				//System.out.println(list+" and "+ud.getUsername());
				//out.println("<option>"+rs.getString("dname")+"</option>");
			}
			else {
				double d=10.00;
				while(d<18.00)
				{
					if(d%1.0==0.0) {
				out.println("<option>"+d+"0</option>");
					}else
					{double j=d-0.20;
						out.println("<option>"+j+"0</option>");
					}
				d=d+0.50;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
