<%@page import="java.sql.*"%>
<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
s1=request.getParameter("t1");
s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");
s5=request.getParameter("t5");
s6=request.getParameter("t6");
s7=request.getParameter("t7");
s8=request.getParameter("t8");
s9=request.getParameter("t9");

Connection con;
Statement stmt;

try
{
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cost_estimation","root","");
    stmt=con.createStatement();

    int k=stmt.executeUpdate("update sale_house set area='"+s2+"',city='"+s3+"',address='"+s4+"',facilities='"+s5+"',photo='"+s6+"',cost='"+s7+"',added_by='"+s8+"',sale_status='"+s9+"' where house_type='"+s1+"'");
    %>
    <script>
        alert("one record updated successfully");
        document.location="view_sale_house.jsp";
    </script>
    <%
}
catch(Exception e)
{
    out.println(e);

}
%>
