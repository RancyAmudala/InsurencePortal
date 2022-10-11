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
		String Reupwd =request.getParameter("re_pass");
		String ucontact =request.getParameter("contact");
		String udob =request.getParameter("date");
		String uaddress =request.getParameter("address");
		String gender =request.getParameter("gender");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		if(uname == null || uname.equals("")) {
			request.setAttribute("status", "InvalidName");
		    dispatcher = request.getRequestDispatcher("registration.jsp");
		    dispatcher.forward(request,  response);
		}
		if(uemail == null || uemail.equals("")) {
			request.setAttribute("status", "Invalidemail");
		    dispatcher = request.getRequestDispatcher("registration.jsp");
		    dispatcher.forward(request,  response);
		}
		if(upwd == null || upwd.equals("")) {
			request.setAttribute("status", "InvalidConfirmPassword");
		    dispatcher = request.getRequestDispatcher("registration.jsp");
		    dispatcher.forward(request,  response);
		}
		else if(!upwd.equals(Reupwd)){
			request.setAttribute("status", "Invalidpwd");
		    dispatcher = request.getRequestDispatcher("registration.jsp");
		    dispatcher.forward(request,  response);
			
		}
		if(ucontact == null || ucontact.equals("")) {
			request.setAttribute("status", "Invalidcontact");
		    dispatcher = request.getRequestDispatcher("registration.jsp");
		    dispatcher.forward(request,  response);
		}
		else if(ucontact.length() > 10) {
			request.setAttribute("status", "InvalidMobileLength");
		    dispatcher = request.getRequestDispatcher("registration.jsp");
		    dispatcher.forward(request,  response);
		}
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance?useSSL=false","root","Root@123");
			PreparedStatement pst = con
					.prepareStatement("insert into users(uname,upwd,uemail,ucontact,udob,uaddress,gender) values(?,?,?,?,?,?,?)");
			pst.setString(1, uname);
			pst.setString(2, upwd);
			pst.setString(3, uemail);
			pst.setString(4, ucontact);
			pst.setString(5, udob);
			pst.setString(6, uaddress);
			pst.setString(7, gender);
			
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
