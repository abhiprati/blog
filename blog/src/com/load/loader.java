package com.load;

import com.post.*;
import java.util.*;


import java.io.IOException;
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

/**
 * Servlet implementation class loader
 */
@WebServlet("/loader")
public class loader extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loader() {
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
try {
			ArrayList<post> list=new ArrayList<post>();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","abhishek");
			Statement stmt=con.createStatement();
			String sql="select * from post";
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next())
			{
				post ps=new post();
				ps.setPtitle(rs.getString(1));
				ps.setPcontent(rs.getString(2));
				ps.setPcode(rs.getString(3));
				ps.setName(rs.getString(4));
				list.add(ps);
			}
			HttpSession s=request.getSession();
			s.setAttribute("postlist", list);
			
			
			request.getRequestDispatcher("profile.jsp").forward(request,response);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		
		}
		
	}

}
