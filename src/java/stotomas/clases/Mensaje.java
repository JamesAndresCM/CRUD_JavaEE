/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package stotomas.clases;

import java.sql.Timestamp;


public class Mensaje {
    private int id_mensaje;
    private int id_user;
    private Timestamp fecha;
    private String mensaje;

    public Mensaje(int id_user, String mensaje) {
        this.id_user = id_user;
        this.mensaje = mensaje;
    }

    public Mensaje(int id_mensaje, int id_user, Timestamp fecha, String mensaje) {
        this.id_mensaje = id_mensaje;
        this.id_user = id_user;
        this.fecha = fecha;
        this.mensaje = mensaje;
    }
    

    public int getId_mensaje() {
        return id_mensaje;
    }

    public void setId_mensaje(int id_mensaje) {
        this.id_mensaje = id_mensaje;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
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
    

    
    
    
}
