<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page import="br.com.fatecpg.quiz.Questao"%>
<%@include file="WEB-INF/jspf/header.jspf"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <title>Quiz</title>
    </head>
    <body style="background-color:#DCDCDC">        
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
        <center>
        <form>
            <%int cont = 1;%>
            <%for(Questao q: Quiz.getQuestoes()){%>
            <h6 style="color:#007BFF"><%= cont%>) <%=q.getPergunta()%></h6> 
            <input type="radio" name="<%=q.getPergunta() %>" value="<%=q.getAlternativas()[0] %>"/> <%=q.getAlternativas()[0]%>
            <input type="radio" name="<%=q.getPergunta() %>" value="<%=q.getAlternativas()[1] %>"/> <%=q.getAlternativas()[1]%>
            <input type="radio" name="<%=q.getPergunta() %>" value="<%=q.getAlternativas()[2] %>"/> <%=q.getAlternativas()[2]%>
            <% cont++; }%>
            <br/><br/>
            <input type="submit" name="finalizar" value="Enviar Respostas"/>
        </form>
            </center>
            <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
