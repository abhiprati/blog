package login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.arr.user;

/**
 * Servlet implementation class logindata
 */
@WebServlet("/logindata")
public class logindata extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public logindata() {
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
		PrintWriter out=response.getWriter();
	
		try {
			String em=request.getParameter("email");
			String pa=request.getParameter("pass");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","abhishek");
			Statement stmt=con.createStatement();
			String sql = "SELECT * FROM register";
			ResultSet rs=stmt.executeQuery(sql);
			int count=0;
			while(rs.next())
			{
				
				if(em.equals(rs.getString("email")) && pa.equals(rs.getString("pass")))
				{  
					String name=rs.getString("name");
					count=count+1;
					
					   user users=new user();
					   users.setName(name);
					   users.setEmail(em);
					   users.setPassword(pa);
					  
						HttpSession s=request.getSession();
						s.setAttribute("username",users);
				        
					/*HttpSession s=request.getSession();
					s.setAttribute("currentuser",name);*/
					
					response.sendRedirect("profile.jsp");
				}
			}
			if(count==0)
			{
				HttpSession s=request.getSession();
			
				s.setAttribute("msg","Create Your Account");
				request.getRequestDispatcher("register.jsp").forward(request,response);
			}
			
			
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			out.print("Not connected");
		}
	}

}
