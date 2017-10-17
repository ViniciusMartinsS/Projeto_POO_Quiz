<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@include file="WEB-INF/jspf/header_1.jspf"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

        <title>Login-Quiz</title>
    </head>
    <body style="background-color:#DCDCDC"><center>
       <br> <b style="color:#007BFF">Olá, Visitante!<br>
        Cadastre-se e comece a pontuar com o Math Quiz.</b></br></br>
        <%try{
            if (request.getParameter("salvar") != null){
                String player = request.getParameter("nome");
                HttpSession sessão = request.getSession();
                sessão.setAttribute("user", player);
                Usuario pessoa = new Usuario();
                pessoa.setPlayer(player);
                Usuario.getUsuario().add(pessoa);
                response.sendRedirect("home.jsp");
               }
            }
            catch(Exception ex)
            {%>
                ex.getMessage();
            <%}%>
            <form><b>Insira seu Username: </b></br></br>
                <input type="text" name="nome" value=""/></br></br>
                <input type="submit" name="salvar" value="Entrar"/>
            </form> 
             <%@include file="WEB-INF/jspf/footer_1.jspf"%>
   </center> </body>
</html>
