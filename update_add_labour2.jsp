<%@page import="java.sql.*"%>
<%
String s1,s2,s3,s4,s5;
s1=request.getParameter("t1");
s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");
s5=request.getParameter("t5");

Connection con;
Statement stmt;

try
{
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cost_estimation","root","");
    stmt=con.createStatement();

    int k=stmt.executeUpdate("update add_labour set city='"+s2+"',address='"+s3+"',no_of_workers='"+s4+"',mobile_no='"+s5+"' where labour_head='"+s1+"'");
    %>
    <script>
        alert("one record updated successfully");
        document.location="view_labour.jsp";
    </script>
    <%
}
catch(Exception e)
{
    out.println(e);

}
%>
