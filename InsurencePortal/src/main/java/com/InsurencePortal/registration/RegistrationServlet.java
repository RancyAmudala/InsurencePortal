package com.InsurencePortal.registration;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname =request.getParameter("name");
		String uemail =request.getParameter("email");
		String upwd =request.getParameter("pass");
		String ucontact =request.getParameter("contact");
		String uaddress =request.getParameter("address");
		String gender =request.getParameter("gender");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/company?useSSL=false","root","root123");
			PreparedStatement pst = con
					.prepareStatement("insert into customers(uname,upwd,uemail,ucontact,uaddress,gender) values(?,?,?,?,?,?)");
			pst.setString(1, uname);
			pst.setString(2, upwd);
			pst.setString(3, uemail);
			pst.setString(4, ucontact);
			pst.setString(5, uaddress);
			pst.setString(6, gender);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
}
