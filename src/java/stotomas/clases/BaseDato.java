/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package stotomas.clases;

import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;


public class BaseDato {
    private Connection conex;
    
    public BaseDato() {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conex = DriverManager.getConnection("jdbc:mysql://localhost:3306/NAME_BD","USER","YOUR_PASS");
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | SQLException ex) {
            conex = null;
        }
       
    }
    public void insertarMensaje (Mensaje m) {
        
        if (conex != null) {
            try {
                Statement st = conex.createStatement();
                st.executeUpdate(String.format("INSERT INTO mensajes (id_user, mensaje) VALUES (%d, '%s')", m.getId_user(), m.getMensaje()));
                st.close();
            } catch (SQLException ex) {
            }
        }
    }
    
    public void modificarMensaje (Mensaje m) {
        if (conex != null) {
            try {
                Statement st = conex.createStatement();
                st.executeUpdate(String.format("UPDATE mensajes SET mensaje='%s' WHERE id_mensaje = %d", m.getMensaje(), m.getId_mensaje()));
                st.close();
            } catch (SQLException ex) {
            }
        }
    }
    
    public Mensaje getMensaje (int id) {
        Statement st;
        Mensaje m = null;
        
        if (conex != null) {
            try {
                st = conex.createStatement();
                ResultSet rs = st.executeQuery(String.format("SELECT * FROM mensajes WHERE id_mensaje=%d", id));
                if (rs.next())
                    m = new Mensaje(rs.getInt("id_mensaje"), rs.getInt("id_user"), rs.getTimestamp("fecha"), rs.getString("mensaje"),rs.getString("user"));
                st.close();
            } catch (SQLException ex) {
            }
        }
        
        return m;
    }
    
    public List<Mensaje> getMensajes (int id) {
        List<Mensaje> mensajes = new ArrayList<>();
        Statement st;
        
        if (conex != null) {
            try {
                st = conex.createStatement();
                ResultSet rs = st.executeQuery(String.format("select * from mensajes inner join usuario on mensajes.id_user=usuario.id_user where usuario.id_user=%d", id));
                while (rs.next())
                    mensajes.add(new Mensaje(rs.getInt("id_mensaje"), rs.getInt("id_user"), rs.getTimestamp("fecha"), rs.getString("mensaje"), rs.getString("user")));
                st.close();
            } catch (SQLException ex) {
            }
        }
        return mensajes;
    }
    
    
    
     public List<Mensaje> getAllMensajes() {
        List<Mensaje> mensajes = new ArrayList<>();
        Statement st;
        
        if (conex != null) {
            try {
                st = conex.createStatement();
                ResultSet rs = st.executeQuery(String.format("select * from mensajes inner join usuario on mensajes.id_user=usuario.id_user ORDER BY fecha DESC"));
                while (rs.next())
                    mensajes.add(new Mensaje(rs.getInt("id_mensaje"), rs.getInt("id_user"), rs.getTimestamp("fecha"), rs.getString("mensaje"),rs.getString("user")));
                st.close();
            } catch (SQLException ex) {
            }
        }
        return mensajes;
    }
    
    public Usuario getUsuario (int id) {
        Statement st;
        Usuario u = null;
        
        if (conex != null) {
            try {
                st = conex.createStatement();
                ResultSet rs = st.executeQuery(String.format("SELECT * FROM usuario WHERE id_user=%d", id));
                if (rs.next())
                    u = new Usuario(rs.getInt("id_user"), rs.getString("user"), rs.getString("pass"), rs.getString("nombre"), rs.getString("email"), rs.getInt("tipo"));
                st.close();
            } catch (SQLException ex) {
            }
        }
        
        return u;
    }
    
    public void deleteUsuario (int id_user) {
        
        if (conex != null) {
            try {
                
                Statement st = conex.createStatement();
                st.executeUpdate(String.format("DELETE FROM mensajes WHERE id_user=%d", id_user));
                st.executeUpdate(String.format("DELETE FROM usuario WHERE id_user=%d", id_user));
                //st.executeUpdate(String.format("delete mensajes, usuario from mensajes inner join usuario where mensajes.id_user=usuario.id_user and usuario.id_user=%d", id_user));
                st.close();
            } catch (SQLException ex) {
            }
        }
    }
    
    
    public void deleteMensaje (int id_mensaje) {
        
        if (conex != null) {
            try {
                
                Statement st = conex.createStatement();
                st.executeUpdate(String.format("DELETE FROM mensajes WHERE id_mensaje=%d", id_mensaje));
                st.close();
            } catch (SQLException ex) {
            }
        }
    }
    
    public Usuario getUsuario (String user, String pass) {
        Statement st;
        Usuario u = null;
        
        if (conex != null) {
            try {
                st = conex.createStatement();
                ResultSet rs = st.executeQuery(String.format("SELECT * FROM usuario WHERE user='%s' AND pass='%s'", user, pass));
                if (rs.next())
                    u = new Usuario(rs.getInt("id_user"), rs.getString("user"), rs.getString("pass"), rs.getString("nombre"), rs.getString("email"), rs.getInt("tipo"));
                st.close();
            } catch (SQLException ex) {
            }
        }
        
        return u;
    }
    
    public List<Usuario> getUsuarios () {
        Statement st;
        List<Usuario> lst = new ArrayList<>();
        
        if (conex != null) {
            try {
                st = conex.createStatement();
                ResultSet rs = st.executeQuery(String.format("SELECT * FROM usuario"));
                while (rs.next())
                    lst.add(new Usuario(rs.getInt("id_user"), rs.getString("user"), rs.getString("pass"), rs.getString("nombre"), rs.getString("email"), rs.getInt("tipo")));
                st.close();
            } catch (SQLException ex) {
            }
        }
        
        return lst;
    }
    public void insertarUsuario (Usuario u) {
        
        if (conex != null) {
            try {
                Statement st = conex.createStatement();
                st.executeUpdate(String.format("INSERT INTO usuario (user, pass, nombre, email, tipo) VALUES ('%s', '%s', '%s', '%s', %d)", u.getUser(), u.getPass(), u.getNombre(), u.getEmail(), u.getTipo()));
                st.close();
            } catch (SQLException ex) {
            }
        }
    }
    
    public void RegistrarUsuario (Usuario u) {
        
        if (conex != null) {
            try {
                Statement st = conex.createStatement();
                st.executeUpdate(String.format("INSERT INTO usuario (user, pass, nombre, email) VALUES ('%s', '%s', '%s', '%s')", u.getUser(), u.getPass(), u.getNombre(), u.getEmail()));
                st.close();
            } catch (SQLException ex) {
            }
        }
    }
    public void modificarUsuario (Usuario u) {
        
        if (conex != null) {
            try {
                Statement st = conex.createStatement();
                st.executeUpdate(String.format("UPDATE usuario SET user='%s', nombre='%s', email='%s', tipo=%d WHERE id_user=%d", u.getUser(), u.getNombre(), u.getEmail(), u.getTipo(), u.getId_user()));
                st.close();
            } catch (SQLException ex) {
            }
        }
    }
    
     
    
    
    public List<User_mensaje> getUser_mensaje(String usuario) { 
        Statement st;
        List<User_mensaje> lst = new ArrayList<>();
       
        if (conex != null) {
            try {
                st = conex.createStatement();
                ResultSet rs;
                rs = st.executeQuery(String.format("SELECT * FROM user_mensaje WHERE user = '%s'", usuario)); 
                while (rs.next()) {
                    lst.add(new User_mensaje(rs.getString("user"),rs.getString("mensaje"),rs.getTimestamp("fecha")));
                }
                st.close();
            } catch (SQLException ex) {
                
            }
        }
        
        return lst;
        
    }
    
    public List<User_mensaje> getALLUser_mensaje() { 
        Statement st;
        List<User_mensaje> lst = new ArrayList<>();
       
        if (conex != null) {
            try {
                st = conex.createStatement();
                ResultSet rs;
                rs = st.executeQuery(String.format("SELECT * FROM user_mensaje ORDER BY fecha DESC")); 
                while (rs.next()) {
                    lst.add(new User_mensaje(rs.getString("user"),rs.getString("mensaje"),rs.getTimestamp("fecha")));
                }
                st.close();
            } catch (SQLException ex) {
                
            }
        }
        
        return lst;
        
    }
}
