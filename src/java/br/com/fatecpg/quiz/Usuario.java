package br.com.fatecpg.quiz;
import java.util.ArrayList;

public class Usuario {
    private String player;
   
    private static ArrayList<Usuario> pessoa;
    public static ArrayList<Usuario> getUsuario(){
        if (pessoa == null){
            pessoa = new ArrayList<>();
        }
        return pessoa;
    
    public String getPlayer() {
        return player;
    }

    public void setPlayer(String player) {
        this.player = player;
    }    
    
}