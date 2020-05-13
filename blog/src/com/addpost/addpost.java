package com.addpost;
import com.arr.user;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import com.post.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class addpost
 */
@WebServlet("/addpost")
@MultipartConfig
public class addpost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addpost() {
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
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		String code=request.getParameter("code");
		HttpSession session=request.getSession();
		user users=(user)session.getAttribute("username");
		String name=users.getName();
		
		post p=new post(title,content,code,name);
		  try {
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","abhishek");
				Statement stmt=con.createStatement();
				 String sql = "INSERT INTO post " +"VALUES('"+p.getPtitle()+"','"+p.getPcontent()+"','"+p.getPcode()+"','"+p.getName()+"')";
				stmt.executeUpdate(sql);
				out.print("done");
				HttpSession s=request.getSession();
				s.setAttribute("res", "done");
				request.getRequestDispatcher("profile.jsp").forward(request, response);
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
				out.print("Not connected");
			}
     
		
		
	}

}
