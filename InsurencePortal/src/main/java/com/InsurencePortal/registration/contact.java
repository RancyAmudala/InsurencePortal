package com.InsurencePortal.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class contact
 */
@WebServlet("/contact")
public class contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname =request.getParameter("name");
		String uemail =request.getParameter("email");
		String ucontact =request.getParameter("contact");
		String umessage =request.getParameter("umessage");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance?useSSL=false","root","Root@123");
			PreparedStatement pst = con
					.prepareStatement("insert into contact(uname,uemail,ucontact,umessage) values(?,?,?,?,?,?)");
			pst.setString(1, uname);
			pst.setString(2, uemail);
			pst.setString(3, ucontact);
			pst.setString(4, umessage);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("contact.jsp");
			if(rowCount > 0) {
				request.setAttribute("status", "success");
				
				
			}else {
				request.setAttribute("status", "Failed");
				
			}
			dispatcher.forward(request, response);
			
		}catch (Exception e)  {
			e.printStackTrace();
			
		
	}finally {
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block			e.printStackTrace();
		}
	}

}
}