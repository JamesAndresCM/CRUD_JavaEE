/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package stotomas.clases;


public class Usuario {
    private int id_user;
    private String user;
    private String pass;
    private String nombre;
    private String email;
    private int tipo;

    public Usuario(){
        
    }
    public Usuario(int id_user, String user, String pass, String nombre, String email, int tipo) {
        this.id_user = id_user;
        this.user = user;
        this.pass = pass;
        this.nombre = nombre;
        this.email = email;
        this.tipo = tipo;
    }
    public Usuario(String user, String pass, String nombre, String email, int tipo) {
        this(0, user, pass, nombre, email, tipo);
    }

    public Usuario(String user, String pass, String nombre, String email) {
        this.user = user;
        this.pass = pass;
        this.nombre = nombre;
        this.email = email;
    }
    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    @Override
    public String toString() {
        return "Usuario{" + "id_user=" + id_user + ", user=" + user + ", pass=" + pass + ", nombre=" + nombre + ", email=" + email + ", tipo=" + tipo + '}';
    }
}
