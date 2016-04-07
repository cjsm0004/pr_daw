/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.daw.films.dao;

import com.daw.films.model.Pelicula;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class PeliculaDAOJDBC implements PeliculaDAO {
    
    private static final String dbTable="Peliculas";
    private static final String[] autoField={"id"}; //Autogenerated field for new records
    private static final String connPoolName="java:comp/env/jdbc/gestClub";  //Tomcat
    //private static String connPoolName="jdbc/gestClub";               //Glassfish
    private static final String SQL_BUSCAID="SELECT * FROM Clientes where id=?";
    private static final String SQL_BUSCATODOS="SELECT * FROM Peliculas";
    private static final String SQL_CREA="INSERT INTO Peliculas (titulo,sinopsis,imagen) VALUES (?,?,?)";
    private static final String SQL_ACTUALIZA="UPDATE Clientes set TITULO=?, SINOPSIS=?, IMAGEN=? WHERE id=?";
    private static final String SQL_BORRA="DELETE FROM Clientes WHERE id=?";

    private DataSource ds=null;
    
    public PeliculaDAOJDBC() {
        if (ds==null) {
            try {
                Context context = new InitialContext();
                ds = (DataSource) context.lookup(connPoolName);
            } catch (NamingException ex) {
                Logger.getLogger(PeliculaDAOJDBC.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
            }
        }
    }
    
    /**Recupera un Cliente del registro actual del RS (MAPPING)*/
    private static Pelicula clienteMapper(ResultSet rs) throws SQLException {
        Pelicula p;
        p=new Pelicula( rs.getInt("id"),
                        rs.getString("TITULO"),
                        rs.getString("SINOPSIS"),
                        rs.getString("IMAGEN")
                        
        );
        return p;
    }  
   
    @Override
    public Pelicula buscaId(Integer id) {
        Pelicula c=null;
        try (Connection conn=ds.getConnection();
             PreparedStatement stmn=conn.prepareStatement(SQL_BUSCAID)) {
            stmn.setInt(1,id);
            try( ResultSet rs=stmn.executeQuery()) {
                rs.next();
                c=clienteMapper(rs);                
            }
        } catch (SQLException ex) {
            Logger.getLogger(PeliculaDAOJDBC.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
        }
        return c;
    }

    @Override
    public List<Pelicula> buscaTodos() {
        List<Pelicula> l=new ArrayList<>();
        try (Connection conn=ds.getConnection();
            Statement stmn=conn.createStatement();
            ResultSet rs=stmn.executeQuery(SQL_BUSCATODOS);
        ){
            while (rs.next()) {
                l.add(clienteMapper(rs));
            }                
        } catch (Exception ex) {
            Logger.getLogger(PeliculaDAOJDBC.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
        }
        return l;
    }

    @Override
    public boolean crea(Pelicula p) {
        boolean result=false;
        try (Connection conn=ds.getConnection();
            PreparedStatement stmn=conn.prepareStatement(SQL_CREA,autoField);
        ){
            stmn.setString(1,p.getTitulo());
            stmn.setString(2,p.getSinopsis());
            stmn.setString(3, p.getImagen());
            stmn.executeUpdate();
            try (ResultSet rs=stmn.getGeneratedKeys()) {
                //Get autogenerated field value
                if (rs!=null && rs.next()) {
                    int nuevoId=rs.getInt(1); //RS has only one field with key value
                    p.setId(nuevoId);
                }
            } catch (Exception ex) {
                Logger.getLogger(PeliculaDAOJDBC.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
            }
        } catch (Exception ex) {
            Logger.getLogger(PeliculaDAOJDBC.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
        }
        return result;
    }

    @Override
    public boolean guarda(Pelicula p) {
        boolean result=false;
        try (Connection conn=ds.getConnection();
            PreparedStatement stmn=conn.prepareStatement(SQL_ACTUALIZA);
        ){
            stmn.setString(1,p.getTitulo());
            stmn.setString(2,p.getSinopsis());
            stmn.setString(3, p.getImagen());
            stmn.setInt(4,p.getId());
            result=(stmn.executeUpdate()==1);
        } catch (Exception ex) {
            Logger.getLogger(PeliculaDAOJDBC.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
        }
        return result;
    }
    @Override    
    public boolean borra(Integer id) {
        boolean result=false;
        try (Connection conn=ds.getConnection();
            PreparedStatement stmn=conn.prepareStatement(SQL_BORRA);
        ){
            stmn.setInt(1,id);
            result=(stmn.executeUpdate()==1);
        } catch (Exception ex) {
            Logger.getLogger(PeliculaDAOJDBC.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
        }         
        return result;
    }
}