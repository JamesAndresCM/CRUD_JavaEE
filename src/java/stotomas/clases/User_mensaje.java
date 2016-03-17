/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package stotomas.clases;

import java.sql.Timestamp;


public class User_mensaje {
    
    private String user;
    private String mensaje;
    private Timestamp fecha;

    

    public User_mensaje(String user, String mensaje, Timestamp fecha) {
        this.user = user;
        this.mensaje = mensaje;
        this.fecha = fecha;
    }
    
    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public Timestamp getFecha() {
        return fecha;
    }

    public void setFecha(Timestamp fecha) {
        this.fecha = fecha;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    @Override
    public String toString() {
        return "User_mensaje{" + "user=" + user + ", mensaje=" + mensaje + ", fecha=" + fecha + '}';
    }
    
    
}
