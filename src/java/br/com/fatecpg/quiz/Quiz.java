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
                    " Qual o resultado da equação 30-20+2x=10?",
                    "" + "<b>0</b>",
                    new String[]{"" + "<b>10</b>", "" + "<b>45</b>", "" + "<b>0</b>"}
            );
            questoes.add(q);
            Questao q2 = new Questao(
                    "Qual o resultado da equação x+30 = 40?",
                    "" + "<b>10<b/>",
                    new String[]{"" + "<b>-10<b/>", "" + "<b>10<b/>", "" + "<b>70</b>"}
            );
            questoes.add(q2);
            Questao q3 = new Questao(
                    "Qual o resultado da equação 13x-23-45=-7x+12?",
                    "" + "<b>4</b>",
                    new String[]{"" + "<b>4</b>", "" + "<b>10</b>", "" + "<b>-56</b>"}
            );
            questoes.add(q3);
            Questao q4 = new Questao(
                    "Qual o resultado da equação -50 + 2x = 100?",
                    "" + "<b>75</b>",
                    new String[]{"" + "<b>25</b>", "" + "<b>75</b>", "" + "<b>50</b>"}
            );
            questoes.add(q4);
            Questao q5 = new Questao(
                    "Qual a alternativa que correponde as letras A, B e C, da equação x²+9x+8=0?",
                    "" + "<b>A = 1, B = 9 e C = 8</b>",
                    new String[]{"" + "<b>A = 1, B = 9 e C = 8</b>", "" + "<b>A = 9, B = 2 e C = 8</b>", "" + "<b>A = 2, B = 9 e c = 8</b>"}
            );
            questoes.add(q5);

            Questao q6 = new Questao(
                    " Delta = b²-4ac - Essa afirmação é Verdadeira ou Falsa?",
                    "" + "<b>Verdadeira</b>",
                    new String[]{"" + "<b>Verdadeira</b>", "" + "<b>Falsa - Correta é b²+4ac</b> ", "" + "<b>Falsa - Correta é b²-4ca</b> "}
            );
            questoes.add(q6);

            Questao q7 = new Questao(
                    "O conjunto verdade em R da equação x² - 100 = 0 é:",
                    "" + "<b>{10, -10}</b>",
                    new String[]{"" + "<b>{10}</b>", "" + "<b>{10, -10}</b>", "" + "<b>{10,10}</b>"}
            );
            questoes.add(q7);

            Questao q8 = new Questao(
                    "Uma equação de 2º grau tem:",
                    "" + "<b>2 soluções, 1 solução ou nenhuma solução</b>",
                    new String[]{"" + "<b> 2 soluções</b>", "" + "<b>2 soluções ou 1 solução</b>", "" + "<b>2 soluções, 1 solução ou nenhuma solução</b>"}
            );
            questoes.add(q8);

            Questao q9 = new Questao(
                    "Qual o resultado da equação x²-3x-4=0?",
                    "" + "<b>S={-1 e 4}</b>",
                    new String[]{"" + "<b>S={1 e 4}</b>", "" + "<b>S={-1 e 4}</b>", "" + "<b>S={4 e 1}</b>"}
            );
            questoes.add(q9);
            Questao q10 = new Questao(
                    "Com o delta negativo, vamos obter quantas raizes?",
                    "" +  "<b>Nenhuma</b>",
                    new String[]{"" + "<b>2 distintas</b>", "" + "<b>2 iguais</b>", "" + "<b>Nenhuma</b>"}
            );
            questoes.add(q10);
        }
        Collections.shuffle(questoes);
        return questoes;
    }
}
 