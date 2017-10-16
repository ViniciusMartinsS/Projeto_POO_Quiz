<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login-Quiz</title>
    </head>
    <body>
        <h1>Cadastrar usuário</h1>
        <%try{
            if (request.getParameter("salvar") != null){
                String player = request.getParameter("usuario");
                HttpSession sessão = request.getSession();
                sessão.setAttribute("teste", player);
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
            <form>Digite seu nome:  </br>
                <input type="text" name="usuario" value=""/></br>
                <input type="submit" name="salvar" value="salvar"/>
            </form> 
    </body>
</html>
