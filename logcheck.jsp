<%@page import="java.sql.* "%>
<%
String s1,s2;
s1=request.getParameter("t1");
s2=request.getParameter("t2");

session.setAttribute("uname",s1);

Connection con;
Statement stmt;

try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cost_estimation","root","");
stmt=con.createStatement();

ResultSet rs=stmt.executeQuery("select * from login where username='"+s1+"' and password='"+s2+"' ");

if(rs.next())
{
    String s3=rs.getString(3);

    if(s3.equals("admin"))
    {
        %>
        <script>
            alert("you have logged as admin");
            document.location="admin_home.jsp";
        </script>
        <%
    }
    else if(s3.equals("customer"))
    {
        %>
        <script>
            alert("you logged as customer");
            document.location="customer_home.jsp";
        </script>
      <%  
    }
    else
    {
        out.println("wrong enterd username or password");
    %>
    <script>
        alert("wrong enterd username or password");
        document.location="Login.html";
    </script>
    <%
}
}
}
catch(Exception e)
{
    out.println(e);
}
%>