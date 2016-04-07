/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.daw.films.dao;

/**
 *
 * @author Carlos y Susana
 */
import java.util.List;

public interface GenericDAO<T,K> {
    
    public T buscaId(K id);
    public List<T> buscaTodos();
    public T buscaTitulo(String title);
    public boolean crea(T c);
    public boolean guarda(T c);    
    public boolean borra(K id);
}
