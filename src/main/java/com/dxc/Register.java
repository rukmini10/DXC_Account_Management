package com.dxc;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Register() {
        super();
        
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		System.out.println("\nI am inside Register...");
		PrintWriter out=response.getWriter();
		String uname=request.getParameter("uname");
		String fullname=request.getParameter("fullname");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String securityQuestion=request.getParameter("securityQuestion");
		String openingAmount=request.getParameter("openingAmount");
		String accountType=request.getParameter("accountType");
		String openingDate=request.getParameter("openingDate");
		String panCard=request.getParameter("panCard");
		
		
		Member member=new Member(uname,fullname,password,email,phone,address,securityQuestion,openingAmount,accountType,openingDate,panCard);
		RegisterDao rDao=new RegisterDao();
		String result=rDao.insert(member);
		out.print(result);
		System.out.println(result);
		
	}

}
