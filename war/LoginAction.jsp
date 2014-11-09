<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
	<title>Style Phuket</title>
<%
String strUsername = "admin";
String strPassword = "1234";
String strName = "Narongchai";	

String username = request.getParameter("username");
	String password = request.getParameter("password");
	

	
	out.println("<h1>Welcome to Phang-nga</h1>");
	if (username.equals(username) && password.equals(password)) {
		out.println("ยินดีต้อนรับสู่จังหวัคกระบี่");	
		session.setAttribute("username_ses" ,username);  //เก็บ username ไว้ใน  sessin oject
		session.setAttribute("name_ses" ,strName);
		response.sendRedirect("index.jsp");
	}else{
		out.println("กรุณาตรวจสอบ username และ password อีกครั้ง!!!");
}
%>
  </head>
  <center>
		<input onclick="history.go(-1);return true;" type="submit" value="back" >
	</center>
	
</body>
</html>