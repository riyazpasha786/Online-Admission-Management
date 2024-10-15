<%-- 
    Document   : db
    Created on : Dec 7, 2023, 6:10:48 PM
    Author     : Riyaz pasha and team
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <%
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/itm","root","root");
            Statement s=cn.createStatement();
            String query="select email,password from "+
            "signup where email='"+email+"' and password='"+password+"'";
            ResultSet rs=s.executeQuery(query);
            if(rs.next())
            {
                %>
                <jsp:forward page="studentinfo.html"></jsp:forward>
             <%   
            }
            else
            {
            %>
            <jsp:include page="Register.jsp"></jsp:include>
            <%
            }
        %>
    </body>
</html>
