	<%@ page import="java.sql.*" %>
<%
String n=request.getParameter("val");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javatpoint?user=root&password=dinga");
PreparedStatement ps=con.prepareStatement("select * from city1_user where name=?");
ps.setString(1,n);
ResultSet rs=ps.executeQuery();
boolean status=rs.next();

if(status)
out.println("Invalid user! userName already exists");
else
out.println("Valid user");

con.close();
}catch(Exception e){e.printStackTrace();}

%>