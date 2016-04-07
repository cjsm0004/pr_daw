/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Susana
 * Created: 04-abr-2016
 */

DROP TABLE Peliculas;
DROP TABLE Usuarios;
DROP TABLE Roles;
CREATE TABLE Peliculas (
    id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),   --autoincrement key
    titulo VARCHAR(50) NOT NULL,
    sinopsis VARCHAR(1000),
    imagen VARCHAR (25)
);

-- Insert sample records
insert into Peliculas (titulo,sinopsis,imagen) VALUES ('Origen','Dom Cobb es un ladrón hábil, el mejor de todos, especializado en el peligroso arte de la extracción: el robo de secretos valiosos desde las profundidades del subconsciente durante el estado de sueño cuando la mente es más vulnerable.  Esta habilidad excepcional de Cobb le ha hecho un jugador codiciado en el traicionero nuevo mundo del espionaje corporativo, pero, al mismo tiempo, le ha convertido en un fugitivo internacional y le ha hecho sacrificar todo lo que le importaba. Ahora a Cobb se le ofrece una oportunidad para redimirse. Con un último trabajo podría recuperar su vida anterior, pero solamente si logra lo imposible. En vez de llevar a cabo el atraco perfecto, Cobb y su equipo de especialistas tienen que invertir la operación: la tarea no consiste en robar una idea, sino en insertar una. Si tienen éxito, podría ser el crimen perfecto. No obstante, ni la cuidadosa planificación ni su pericia pueden preparar al equipo de Cobb para los peligros de la mente a los que se enfrentan.','origen.jpg');
insert into Peliculas (titulo,sinopsis,imagen) VALUES ('Mis 50 primeras citas','Henry Roth (Adam Sandler) es un biólogo marino de Hawaii que se pasa la vida inventando excusas para no comprometerse con las numerosas chicas con las que sale. Sin embargo, cuando conoce a la chica de sus sueños, la encantadora Lucy Whitmore (Drew Barrymore), surge un extraño problema en la relación: cuando Lucy se levanta por las mañanas no recuerda absolutamente nada de lo ocurrido el día anterior,de modo que Henry no tendrá más remedio que reconquistarla cada día.','50primeras.jpg');
insert into Peliculas (titulo,sinopsis,imagen) VALUES ('Harry Potter y la piedra filosofal','El día en que cumple once años, Harry Potter se entera de que es hijo de dos destacados hechiceros, de los que ha heredado poderes mágicos. En la escuela Hogwarts de Magia y Hechicería, donde se educa con otros niños que también tienen poderes especiales,aprenderá todo lo necesario para ser mago.','hp.jpg');


CREATE TABLE Usuarios(
 usuario VARCHAR(50) NOT NULL PRIMARY KEY,
 clave   VARCHAR(50) NOT NULL
);

CREATE TABLE Roles(
 usuario VARCHAR(50) NOT NULL,
 rol VARCHAR(50)
);

insert into Usuarios (usuario,clave) VALUES ('carlos','carlos');
insert into Usuarios (usuario,clave) VALUES ('admin','admin');

insert into Roles (usuario,rol) VALUES ('carlos','user');
insert into Roles (usuario,rol) VALUES ('admin','administrador');