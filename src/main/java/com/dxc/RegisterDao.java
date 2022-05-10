package com.dxc;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegisterDao {
private static String dburl="jdbc:mysql://localhost:3306/dxcdb";
private static String dbuname="root";
private static String dbpassword="Mysql@2710";
private String dbdriver="com.mysql.cj.jdbc.Driver";

public void loadDriver(String dbDriver) {
	try {
		getClass().forName(dbDriver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
}

public static Connection getConnection() {
	Connection con=null;
	try {
		con=DriverManager.getConnection(dburl,dbuname,dbpassword);
		
	}catch(SQLException e) {
		e.printStackTrace();
	}
	return con;
}

public String insert(Member member) {
	loadDriver(dbdriver);
	Connection con=getConnection();
	String result= "data entered successfully";
	
	String sql="insert into member values(?,?,?,?,?,?,?,?,?,?,?)";
	try {
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1, member.getUname());
	ps.setString(2, member.getFullname());
	ps.setString(3, member.getPassword());
	ps.setString(4, member.getEmail());
	ps.setString(5, member.getPhone());
	ps.setString(6, member.getAddress());
	ps.setString(7, member.getSecurityQuestion());
	ps.setString(8, member.getOpeningAmount());
	ps.setString(9, member.getAccountType());
	ps.setString(10, member.getOpeningDate());
	ps.setString(11, member.getPanCard());
	
	ps.executeUpdate();
	}catch(SQLException e) {
		e.printStackTrace();
		result="Data Not entered";
	}
	return result;
	
}

public static int update(Member member){  
	int status=0;  
	try{  
		Connection con=getConnection();  
		PreparedStatement ps=con.prepareStatement(  
				"Update member set Uname=?,Fullname=?,Password=?,Email=?,Phone=?,Address=?,SecurityQuestion=?, OpeningAmount=? ,AccountType=?,OpeningDate=?,PanCard=? where UName=?");  

		ps.setString(1, member.getUname());
		ps.setString(2, member.getFullname());
		ps.setString(3, member.getPassword());
		ps.setString(4, member.getEmail());
		ps.setString(5, member.getPhone());
		ps.setString(6, member.getAddress());
		ps.setString(7, member.getSecurityQuestion());
		ps.setString(8, member.getOpeningAmount());
		ps.setString(9, member.getAccountType());
		ps.setString(10, member.getOpeningDate());
		ps.setString(11, member.getPanCard());
		status=ps.executeUpdate();  
	}catch(Exception e){System.out.println(e);}  
	return status;  
}  


public static int delete(Member memberdata){  
	int status=0;  
	try{  
		Connection con=getConnection();  
		PreparedStatement ps=con.prepareStatement("delete from member where Email=?");  
		ps.setString(1,memberdata.getEmail());  
		status=ps.executeUpdate();  
	}catch(Exception e){System.out.println(e);}  

	return status;  
}

public static Member getRecordByEmail(String Email){  
	Member member=null;  
	try{  
		Connection con=getConnection();  
		PreparedStatement ps=con.prepareStatement("select * from member where Email=?");  
		ps.setString(1,Email);  
		ResultSet rs=ps.executeQuery();  
		while(rs.next()){  
			member=new Member();  
			member.setUname("uname");
			member.setFullname("fullname");
			member.setPassword("password");
			member.setEmail("email");
			member.setPhone("phone");
			member.setAddress("Address");
			member.setSecurityQuestion("securityQuestion");
			member.setOpeningAmount("openingAmount");
			member.setAccountType("accountType");
			member.setOpeningAmount("openingDate");
			member.setPanCard("panCard");
		

		}  
	}catch(Exception e){System.out.println(e);}  
	return member;  
}  
}
