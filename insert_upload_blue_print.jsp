<%@page import="java.sql.*"%>
<% 
String s1,s2;
s1=request.getParameter("t1");
s2=request.getParameter("t2");


Connection con;
Statement stmt;
try 
{
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cost_estimation","root","");
    stmt=con.createStatement();

    int k=stmt.executeUpdate("insert into upload_blue_print  values('"+s1+"','"+s2+"')");

%>
<script>
    alert(" one record inserted successfully");
    document.location="insert_upload_blue_print.html";
</script>
<%
}
catch(Exception e)
{
    out.println(e);
}
%>
