package customercontroller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Customer;
import dao.ProductDao;

/**
 * Servlet implementation class ManipulateCart
 */
@WebServlet("/ManipulateCart")
public class ManipulateCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManipulateCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//deletes the product in cart
		//		String opname=request.getParameter("op");
		String cid=request.getParameter("cid");
		int pid=Integer.parseInt(request.getParameter("pid"));
		int addtocartid=Integer.parseInt(request.getParameter("addtocartid"));
			//System.out.println("hello cart delete");
			ProductDao pd=new ProductDao();
			int z=pd.deleteCartProduct(cid,addtocartid);		//deleted the specific product in cart
			if(z!=0)
			{
				ArrayList<Customer> list=pd.viewProductInCart(cid);//view products in cart
				ArrayList<Customer> list2=pd.cartValue(cid);		//gets total cart value
				RequestDispatcher rd=request.getRequestDispatcher("viewCart.jsp");//redirects to the page with data
				request.setAttribute("LIST", list);
				request.setAttribute("LIST2", list2);
				request.setAttribute("productdelete","order with orderid "+addtocartid+" is deleted from cart");
				rd.forward(request, response);
				//response.sendRedirect("ViewCartController");
			}
			else {
				RequestDispatcher rd=request.getRequestDispatcher("customerHome.jsp");
				request.setAttribute("productid",pid+"can't be updated" );
				rd.forward(request, response);
			
		}
			

}
}
