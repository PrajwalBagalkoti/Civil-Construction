<%@page import="java.sql.*"%>
<% 
String s1,s2,s3,s4,s5,s6,s7;
s1=request.getParameter("t1");
s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");
s5=request.getParameter("t5");
s6=request.getParameter("t6");
s7=request.getParameter("t7");
String s8=request.getParameter("t8");
Connection con;
Statement stmt;
try 
{
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cost_estimation","root","");
    stmt=con.createStatement();

    int k=stmt.executeUpdate("insert into contractor_request values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')");

%>
<script>
    alert(" one record inserted successfully");
    document.location="insert_contractor_request.html";
</script>
<%
}
catch(Exception e)
{
    out.println(e);
}
%>
