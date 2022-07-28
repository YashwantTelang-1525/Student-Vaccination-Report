package com.vaccination.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class AddStudent
 */
public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddStudent() {
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
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String rn,nm,div,firstd,secondd,vac;
		rn = request.getParameter("rollno");
		nm = request.getParameter("name");
		div = request.getParameter("division");
		firstd = request.getParameter("fd");
		secondd = request.getParameter("sd");
		vac = request.getParameter("status");
		
		out.println(rn+" "+nm+" "+div+" "+firstd+" "+secondd+" "+vac);
		
		Connection con;
		try{
            
            PreparedStatement pst;
            ResultSet rs;
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://b778m35afj0hm3pmhpou-mysql.services.clever-cloud.com:3306/b778m35afj0hm3pmhpou?user=uuphcvlz6eijcak1&password=2eDCMXWnjGW6w5S9WYTW");
            pst = con.prepareStatement("Insert into vaccination values(?,?,?,?,?,?);");
            pst.setString(1, rn);
            pst.setString(2, nm);
            pst.setString(3, div);
            pst.setString(4, firstd);
            pst.setString(5, secondd);
            pst.setString(6, vac);
            
            pst.executeUpdate();
            
            con.close();
        }
        catch(Exception e){
            System.out.println(e);
        }
		
		response.sendRedirect("studentgetadded.jsp");
	}

}
