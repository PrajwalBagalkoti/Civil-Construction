<%@page import="java.sql.*"%>
<%
String s1,s2,s3,s4,s5,s6,s7;
s1=request.getParameter("t1");
s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");
s5=request.getParameter("t5");
s6=request.getParameter("t6");


Connection con;
Statement stmt;

try
{
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cost_estimation","root","");
    stmt=con.createStatement();

    int k=stmt.executeUpdate("update market_price  set company_name='"+s2+"',uom='"+s3+"',cost='"+s4+"',size='"+s5+"',location='"+s6+"' where raw_material='"+s1+"'");
    %>
    <script>
        alert("one record updated successfully");
        document.location="view_market_price.jsp";
    </script>
    <%
}
catch(Exception e)
{
    out.println(e);

}
%>
