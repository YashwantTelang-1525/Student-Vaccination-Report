package com.vaccination.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
/**
 * Servlet implementation class DeleteRecord
 */
public class DeleteRecord extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteRecord() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String rn,nm;
		rn=request.getParameter("rollno");
		nm=request.getParameter("name");
		
		out.println(rn+" "+nm);
		
		Connection con;
        PreparedStatement pst;

        try{
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://b778m35afj0hm3pmhpou-mysql.services.clever-cloud.com:3306/b778m35afj0hm3pmhpou?user=uuphcvlz6eijcak1&password=2eDCMXWnjGW6w5S9WYTW");
            pst = con.prepareStatement("delete from vaccination where rollno=?;");
            pst.setString(1, rn);
            int cnt = pst.executeUpdate();
            if(cnt == 1){
               out.println("student delete succeesfully");
            }
            else{
                out.println("student not found");
            }
            con.close();
        }
        catch(Exception e){
            System.out.println(e);
        }
        response.sendRedirect("recorddeleted.jsp");
	}

}
