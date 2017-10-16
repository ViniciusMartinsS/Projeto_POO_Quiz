package br.com.fatecpg.quiz;
import java.util.ArrayList;

public class Usuario {
    private String player;
    private int nota;

    public int getNota() {
        return nota;
    }

    public void setNota(int nota) {
        this.nota = nota;
    }
    
    private static ArrayList<Usuario> pessoa;
    public static ArrayList<Usuario> getUsuario(){
        if (pessoa == null){
            pessoa = new ArrayList<>();
        }
        return pessoa;
    }
    
    private static ArrayList<Usuario> notaUsuario;
    public static ArrayList<Usuario> getNotaUsuario(){
        if (notaUsuario == null){
            notaUsuario = new ArrayList<>();
        }
        return notaUsuario;
    }

    public String getPlayer() {
        return player;
    }

    public void setPlayer(String player) {
        this.player = player;
    }    
    
}