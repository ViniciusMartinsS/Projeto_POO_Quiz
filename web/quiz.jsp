<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page import="br.com.fatecpg.quiz.Questao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Math Quiz</h1>
        <h3>Questões: </h3>
        
    <%
        if(request.getParameter("finalizar")!=null){
            int acertos = 0;
            for(Questao q: Quiz.getQuestoes()){
                String resposta = request.getParameter(q.getPergunta());
                if(resposta != null){
                if(resposta.equals(q.getResposta())){
                    acertos++;
                }
            }
        }
            Quiz.quantidade++;
            Quiz.soma+=(100.0*((double)acertos/10.0));
            response.sendRedirect(request.getContextPath()+"/home.jsp");
            }
    %>        
        <form>
            <%int cont = 1;%>
            <%for(Questao q: Quiz.getQuestoes()){%>
            <h4><%= cont%>) <%=q.getPergunta()%></h4> 
            <input type="radio" name="<%=q.getPergunta() %>" value="<%=q.getAlternativas()[0] %>"/> <%=q.getAlternativas()[0]%>
            <input type="radio" name="<%=q.getPergunta() %>" value="<%=q.getAlternativas()[1] %>"/> <%=q.getAlternativas()[1]%>
            <input type="radio" name="<%=q.getPergunta() %>" value="<%=q.getAlternativas()[2] %>"/> <%=q.getAlternativas()[2]%>
            <% cont++; }%>
            <br/><br/>
            <input type="submit" name="finalizar" value="Enviar Respostas"/>
        </form>
    </body>
</html>
