<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@include file="WEB-INF/jspf/header.jspf"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

        <title>Home</title>
    </head>
    <body style="background-color:#DCDCDC"><center>
        
        <%HttpSession sessão = request.getSession();
            if(session.getAttribute("user") == null){
         %>
         <a href="login.jsp">Autentique-se</a>
        <%}%>
        <%Usuario pessoa = new Usuario(); %>
       
        <h4 style="color:#007BFF" >Bem-Vindo <%= sessão.getAttribute("user")%> </h4>
        <h5 style="color:#007BFF" >Testes que você realizou: <%= Quiz.quantidade%></h5>
        <h5 style="color:#007BFF" >Sua média: <%= Quiz.getMedia()%></h5>
    <hr>

    <%
        if (request.getParameter("btn") != null) {
            session.invalidate();
            Quiz.quantidade = 0;
            response.sendRedirect("login.jsp");
        }
        int contador = 0 ;
    %>

    <b>Últimos 10 testes realizados</b>
     <%for (Usuario F : Usuario.getUsuario()) { contador++;
     if(contador == 10) break;
     %>
    <table border="1">
        <tr>
           <%for(int i = 0; i<10; i++){ %>
        <tr>
            <td><%=(i+1)%></td>
            <td><%=F.getPlayer()%></td>
            <td><%= F.media_user %></td>
        </tr>
        <%}%>
        <%}%>
    </center>
        <%@include file="WEB-INF/jspf/footer_1.jspf"%>
    </body>
</html> 