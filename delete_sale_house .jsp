<%@page import="java.sql.*"%>
<%
Connection con;
Statement stmt;

String sr=request.getParameter("num");
try
{
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cost_estimation","root","");
    stmt=con.createStatement();

    int k=stmt.executeUpdate("delete from sale_house where house_type='"+sr+"'");
    %>
    <script>
        alert("one record deleted successfully");
        document.location="view_sale_house.jsp";
        </script>
        <%
}
catch(Exception e)
{
    out.println(e);
}
%>
