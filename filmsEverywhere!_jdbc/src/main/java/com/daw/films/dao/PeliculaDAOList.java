/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.daw.films.dao;

import com.daw.films.model.Pelicula;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author Carlos
 */
public class PeliculaDAOList implements PeliculaDAO {
    
    private ArrayList<Pelicula> peliculas=null;
    private static int idPelicula=1;
    
    public PeliculaDAOList(){
        if (peliculas == null){
            peliculas = new ArrayList();

            peliculas.add(new Pelicula(idPelicula++,"Origen","Dom Cobb es un ladrón hábil, el mejor de todos, especializado en el peligroso arte de la extracción: el robo de secretos valiosos desde las profundidades del subconsciente durante el estado de sueño cuando la mente es más vulnerable.  Esta habilidad excepcional de Cobb le ha hecho un jugador codiciado en el traicionero nuevo mundo del espionaje corporativo, pero, al mismo tiempo, le ha convertido en un fugitivo internacional y le ha hecho sacrificar todo lo que le importaba. Ahora a Cobb se le ofrece una oportunidad para redimirse. Con un último trabajo podría recuperar su vida anterior, pero solamente si logra lo imposible. En vez de llevar a cabo el atraco perfecto, Cobb y su equipo de especialistas tienen que invertir la operación: la tarea no consiste en robar una idea, sino en insertar una. Si tienen éxito, podría ser el crimen perfecto. No obstante, ni la cuidadosa planificación ni su pericia pueden preparar al equipo de Cobb para los peligros de la mente a los que se enfrentan.","origen.jpg"));
            peliculas.add(new Pelicula(idPelicula++,"50 primeras citas","Henry Roth (Adam Sandler) es un biólogo marino de Hawaii que se pasa la vida inventando excusas para no comprometerse con las numerosas chicas con las que sale. Sin embargo, cuando conoce a la chica de sus sueños, la encantadora Lucy Whitmore (Drew Barrymore), surge un extraño problema en la relación: cuando Lucy se levanta por las mañanas no recuerda absolutamente nada de lo ocurrido el día anterior,de modo que Henry no tendrá más remedio que reconquistarla cada día.","50primeras.jpg"));
            peliculas.add(new Pelicula(idPelicula++,"Harry Potter","El día en que cumple once años, Harry Potter se entera de que es hijo de dos destacados hechiceros, de los que ha heredado poderes mágicos. En la escuela Hogwarts de Magia y Hechicería, donde se educa con otros niños que también tienen poderes especiales,aprenderá todo lo necesario para ser mago.","hp.jpg"));
            
        }
    }
    
    @Override
    public Pelicula buscaId(Integer _id){
        Pelicula encontrada=null;
        for (Pelicula p: peliculas){
            if (p.getId()==_id) encontrada=p;
        }
        return encontrada;
        
    }
    
    @Override
    public Pelicula buscaTitulo(String Title){
        Pelicula p=null;
        return p;
    }
    
    @Override
    public List<Pelicula> buscaTodos(){
        return peliculas;
    }
    
    @Override
    public boolean crea(Pelicula p){
        Pelicula np=new Pelicula(p);
        np.setId(idPelicula);
        peliculas.add(np);
        p.setId(idPelicula);
        idPelicula++;
        return true;
    }
    
    @Override
    public boolean guarda(Pelicula p) {
        boolean result=false;
        Pelicula np=new Pelicula(p);
        for (int i=0; i<peliculas.size();i++) {
            if (peliculas.get(i).getId()==np.getId()) {
                peliculas.set(i, np);
                result=true;
            }
        }       
        return result;
    }
    
    @Override
    public boolean borra(Integer id) {
        boolean result=false;
        for (int i=0; i<peliculas.size();i++) {
            if (peliculas.get(i).getId()==id) {
                peliculas.remove(i);
                result=true;
            }
        }       
        return result;
    }
    
    public int numClientes() {
        return peliculas.size();
    }
}
