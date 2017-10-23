package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.UserDTO;
import db.DBConnector;

/**
 * Servlet implementation class FetchDoctor
 */
@WebServlet("/FetchDoctor")
public class FetchDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FetchDoctor() {
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
		String category=request.getParameter("category");
		//System.out.println(category+" in fetch doctor");
		PrintWriter out=response.getWriter();
		Connection con=DBConnector.getConnection();
		String x="";
		ArrayList<UserDTO> list=new ArrayList<>();
		try {
			PreparedStatement ps=con.prepareStatement("select dname from doctor where category=?");
			ps.setString(1, category);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				UserDTO ud=new UserDTO();
				ud.setUsername(rs.getString("dname"));
				out.println("<option>"+rs.getString("dname")+"</option>");
				list.add(ud);
				x=ud.getUsername();
				//System.out.println(list+" and "+ud.getUsername());
				//out.println("<option>"+rs.getString("dname")+"</option>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//RequestDispatcher rd=request.getRequestDispatcher("fetchdoctor.jsp");
		//request.setAttribute("LIST",list);
		//System.out.println(list+" aur "+x);
		//rd.forward(request, response);
	}

}
