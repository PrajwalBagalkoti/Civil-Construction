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

    int k=stmt.executeUpdate("update upload_blue_print set home_type='"+s2+"' where construction_type='"+s1+"'");
    %>
    <script>
        alert("one record updated successfully");
        document.location="view_upload_blue_print.jsp";
    </script>
    <%
}
catch(Exception e)
{
    out.println(e);

}
%>
