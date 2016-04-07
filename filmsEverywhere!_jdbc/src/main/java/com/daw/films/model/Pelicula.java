/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.daw.films.model;


/**
 *
 * @author Susana y Carlos
 */
public class Pelicula {
    private int id;
    private String titulo;
    private String sinopsis;
    private String imagen;

    
    public Pelicula(){
        this.id=0;
        this.titulo="desconocido";
        this.sinopsis="desconocida";
        this.imagen="desconocida";
    }
    public Pelicula(int _id,String _titulo, String _sinopsis, String _imagen) {
        this.id=_id;
        this.titulo = _titulo;
        this.sinopsis = _sinopsis;
        this.imagen=_imagen;
    }
    
    public Pelicula(Pelicula orig){
        this.id=orig.id;
        this.titulo = orig.titulo;
        this.sinopsis = orig.sinopsis;
    }

    public String getTitulo() {
        return this.titulo;
    }

    /**
     * @param _titulo the titulo to set
     */
    public void setTitulo(String _titulo) {
        this.titulo = _titulo;
    }

    /**
     * @return the sinopsis
     */
    public String getSinopsis() {
        return this.sinopsis;
    }

    /**
     * @param _sinopsis the sinopsis to set
     */
    public void setSinopsis(String _sinopsis) {
        this.sinopsis = _sinopsis;
    }

    /**
     * @return the id
     */
    public int getId() {
        return this.id;
    }

    /**
     * @param _id the id to set
     */
    public void setId(int _id) {
        this.id = _id;
    }
    
    public String getImagen(){
        return this.imagen;
    }
    
    public void setImagen(String _imagen){
        this.imagen=_imagen;
    }

}
