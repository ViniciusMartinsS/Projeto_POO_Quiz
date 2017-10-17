<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page import="br.com.fatecpg.quiz.Usuario"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home-Quiz</title>
    </head>
    <body>
        
        <%
           if (session.getAttribute("local") == null)
           {%>
           
                  <li class="active"><a href="login.jsp">Login</a></li>
           <%}else
           {
            String player = session.getAttribute("local").toString();
           
        %>
        <nav class="navbar navbar-default">
              
            <li class="active"><a href="login.jsp">Olá, <%= player %></a></li>
              <form>
                    <input class="btn btn-danger navbar-btn" style="margin-left: 10px;" type="submit" name="btnSair" value="Sair"/>  
              </form>
           
           </nav> 
        
        
            
        <center>
        <h3>Quiz - Conhecimentos gerais</h3>
        <h4><a href="quiz.jsp"><button type="button" class="btn btn-default">Realizar teste</button></a></h4>
        <h3>Testes realizados: <%= Quiz.quantidade %></h3>
        <h3>Média: <%= Quiz.getMedia() %> </h3>
        <%Usuario pessoa = new Usuario();%>
        <h3>nota usuario: <%= pessoa.getNota() %> </h3>
        </center>
    <hr>
    <h3>Últimos 10 testes realizados</h3>
        <table border="1">
            <tr>
                <th>Indice</th>
                <th>Nome</th>
                <th>Nota</th>
            </tr>
             <%for (int i=1; i<=10; i++){%>
            <tr>
                <td><%=i%></td>
                 <td><%pessoa.getUsuario();%></td>
                 <td><%pessoa.getNota();%></td>
            </tr>
            <%}%>
            </table>    
        <%}
            if (request.getParameter("btnSair") != null)
            {
                
                session.invalidate();
                response.sendRedirect("home.jsp");
                
            }
        %>
        <h3>Top 10 melhores notas</h3>
        <table border="1">
            <tr>
                <th>Indice</th>
                <th>Nome</th>
                <th>Nota</th>
            </tr>
             <%for (int i=1; i<=10; i++){%>
            <tr>
                <td><%=i%></td>
                <td><%%></td>
                 <td><%%></td>
            </tr>
            <%}%>
           </table>
    </body>
</html> 