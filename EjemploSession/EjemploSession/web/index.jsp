<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="servlets.BD"%>
         <%
    String name;
    String pass;
    BD BD = new BD();
    BD.Connection();
    ResultSet Arr;
    Arr = BD.query("SELECT * from usuario");
   
   while(Arr.next()){
                     
                     name=Arr.getString("nam");
                     System.out.println("hi");
                     pass=Arr.getString("pass");
                     out.println("<table border=1>");
                     out.println("<tr>");
                     out.println("<th>usuario</th><th>contraseña</th>");
                     out.println("</tr>");
                     out.println("<tr>");
                     out.print("<td>"+name+"</td>");
                     out.print("<td>"+pass+"</td>");
                     out.println("</tr>");
                    
                 }
                 BD.CloseConnection(); 
    
    
   
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejemplo de Sesiones</title>
    </head>
    <body>
        <h1>Ejemplo de Sesiones</h1>
        <br>
        <form action='SesionesServlet' method="POST">
           NOMBRE: <input type="text" name="NOMBRE">
         <br />
           APELLIDO: <input type="text" name="APELLIDO" />
         <input type="submit" value="Submit" />
        </form>
        
        
    </body>
</html>
