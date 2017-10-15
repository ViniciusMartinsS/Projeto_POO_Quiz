package br.com.fatecpg.quiz;

import java.util.ArrayList;
import java.util.Collections;

public class Quiz {

    public static int quantidade;
    public static double soma;

    public static double getMedia() {
        return soma / (double) quantidade;
    }
    private static ArrayList<Questao> questoes;

    public static ArrayList<Questao> getQuestoes() {
        if (questoes == null) {
            questoes = new ArrayList<>();
            Questao q = new Questao(
                    " Qual o resultado da equação <font style='color:red'> 30-20+2x=10</font>?",
                    "" + "0",
                    new String[]{"" + "10", "" + "45", "" + "0"}
            );
            questoes.add(q);
            Questao q2 = new Questao(
                    "Qual o resultado da equação <font style='color:red'> x+30 = 40</font>?",
                    "" + "10",
                    new String[]{"" + "-10", "" + "10", "" + "70"}
            );
            questoes.add(q2);
            Questao q3 = new Questao(
                    "Qual o resultado da equação <font style='color:red'>13x-23-45=-7x+12</font>?",
                    "" + "4",
                    new String[]{"" + "4", "" + "10", "" + "-56"}
            );
            questoes.add(q3);
            Questao q4 = new Questao(
                    "Qual o resultado da equação <font style='color:red'> -50 + 2x = 100</font>?",
                    "" + "75",
                    new String[]{"" + "25", "" + "75", "" + "50"}
            );
            questoes.add(q4);
            Questao q5 = new Questao(
                    "Qual a alternativa que correponde as letras A, B e C, da equação <font style='color:red'> x²+9x+8=0</font>?",
                    "" + "A = 1, B = 9 e C = 8",
                    new String[]{"" + "A = 1, B = 9 e C = 8", "" + "A = 9, B = 2 e C = 8", "" + "A = 2, B = 9 e c = 8"}
            );
            questoes.add(q5);

            Questao q6 = new Questao(
                    "<font style='color:red'> Delta = b²-4ac </font> - Essa afirmação é Verdadeira ou Falsa?",
                    "" + "Verdadeira",
                    new String[]{"" + "Verdadeira", "" + "Falsa - Correta é b²+4ac ", "" + "Falsa - Correta é b²-4ca "}
            );
            questoes.add(q6);

            Questao q7 = new Questao(
                    "O conjunto verdade em R da equação <font style='color:red'> x² - 100 = 0 </font> é:",
                    "" + "{10, -10}",
                    new String[]{"" + "{10}", "" + "{10, -10}", "" + "{10,10}"}
            );
            questoes.add(q7);

            Questao q8 = new Questao(
                    "Uma <font style='color:red'> equação de 2º grau</font> tem:",
                    "" + "2 soluções, 1 solução ou nenhuma solução",
                    new String[]{"" + " 2 soluções", "" + "2 soluções ou 1 solução", "" + "2 soluções, 1 solução ou nenhuma solução"}
            );
            questoes.add(q8);

            Questao q9 = new Questao(
                    "Qual o resultado da equação <font style='color:red'> x²-3x-4=0 </font>?",
                    "" + "S={-1 e 4}",
                    new String[]{"" + "S={1 e 4}", "" + "S={-1 e 4}", "" + "S={4 e 1}"}
            );
            questoes.add(q9);
            Questao q10 = new Questao(
                    "Com o delta negativo, <font style='color:red'>vamos obter quantas raizes</font>?",
                    "" + "Nenhuma",
                    new String[]{"" + "2 distintas", "" + "2 iguais", "" + "Nenhuma"}
            );
            questoes.add(q10);
        }
        Collections.shuffle(questoes);
        return questoes;
    }
}
 