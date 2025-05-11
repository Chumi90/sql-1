-- Ejercicio 1: Seleccionar todos los usuarios y sus lenguajes asociados.
-- SELECT * FROM usuarios_lenguajes;


-- Ejercicio 2: Contar cuántos usuarios hay en total.
-- SELECT count(id_usuarios) from usuarios_lenguajes.usuarios_lenguajes;


-- Ejercicio 3: Seleccionar los usuarios mayores de 30 años.
-- SELECT count(edad) from usuarios_lenguajes where edad>30;


-- Ejercicio 4: Contar cuántos usuarios saben JavaScript.
-- select count(lenguaje) from usuarios_lenguajes where lenguaje="JavaScript";


-- Ejercicio 5 OPCION 2: Seleccionar los usuarios que tienen 28 años. 
-- select nombre, apellido from usuarios_lenguajes where edad like 28;


-- Ejercicio 6: Encontrar el usuario con el email 'juan.gomez@example.com'.
-- select nombre, apellido, email from usuarios_lenguajes where email like "juan.gomez@example.com";


-- Ejercicio 7: Seleccionar los usuarios que saben Java y tienen menos de 25 años.
-- select nombre, apellido, edad from usuarios_lenguajes where edad>25 and lenguaje like "Java";


-- Ejercicio 8 OPCION 2: Contar cuántos usuarios con edades diferentes saben el lenguaje 'Java'.
-- select nombre, apellido, edad from usuarios_lenguajes where edad and lenguaje NOT like "Java";


-- Ejercicio 9: Seleccionar los usuarios que no saben ningún lenguaje.
-- select count(lenguaje) from usuarios_lenguajes where lenguaje=null


-- Ejercicio 10: Encontrar el nombre y edad del usuario más joven.
-- select nombre, edad from usuarios_lenguajes where edad=(select min(edad) from usuarios_lenguajes);


-- Ejercicio 11: Seleccionar los usuarios y sus edades ordenados por edad de forma descendente.
-- select * from usuarios_lenguajes order by edad desc;


-- Ejercicio 12: Contar cuántos usuarios tienen más de 28 años.
-- select count(edad) from usuarios_lenguajes where edad>28;


-- Ejercicio 13: Seleccionar los usuarios cuyo apellido contiene la letra 'a'.
-- select nombre, apellido from usuarios_lenguajes where apellido like "%a%" or "a%" or "%a";


-- Ejercicio 14: Encontrar el lenguaje más popular entre los usuarios menores de 30 años.
-- select lenguaje, count(*) cantidad from usuarios_lenguajes where edad<30 group by lenguaje order by cantidad desc limit 1;


-- Ejercicio 15: Seleccionar el usuario  mayor de 25 y que sepa el lenguaje 'TypeScript'.
-- select nombre, apellido, edad from usuarios_lenguajes where edad>25 and lenguaje like "TypeScript"


-- Ejercicio 16: Contar cuántos usuarios tienen un lenguaje asociado llamado 'Python'.
-- select count(lenguaje) from usuarios_lenguajes where lenguaje like "python";


-- Ejercicio 17: Seleccionar los usuarios y sus lenguajes asociados, si tienen alguno, ordenados por nombre de usuario.
-- SELECT nombre, apellido, lenguaje FROM usuarios_lenguajes ORDER BY nombre ASC;


-- Ejercicio 18: Encontrar los usuario con el email que contiene la palabra 'example'.
-- select nombre, apellido, email from usuarios_lenguajes where email like "%example%";


-- Ejercicio 19: Seleccionar los usuarios que saben al menos un lenguaje y tienen una edad entre 25 y 35 años.
-- SELECT nombre, apellido, edad, lenguaje FROM usuarios_lenguajes WHERE edad BETWEEN 25 AND 35 AND lenguaje IS NOT NULL;


-- Ejercicio 20: Contar cuántos usuarios tienen un lenguaje asociado llamado 'CSS' y tienen menos de 30 años.
-- SELECT COUNT(*) AS total_usuarios FROM usuarios_lenguajes WHERE lenguaje = 'CSS' AND edad < 30;


-- Ejercicio 21: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la cantidad de lenguajes que tienen.
-- select nombre, lenguaje from usuarios_lenguajes order by nombre asc;


-- Ejercicio 22: Encontrar el lenguaje con más caracteres.
-- select lenguaje from usuarios_lenguajes where length(lenguaje)=(select max(length(lenguaje))from usuarios_lenguajes);


-- Ejercicio 23: Seleccionar los usuarios y mostrar la concatenación de su nombre y apellido.
-- select concat(nombre," ",apellido) as nombreCompleto from usuarios_lenguajes;


-- Ejercicio 24: Contar cuántos lenguajes diferentes conocen los usuarios mayores de 25 años. 
-- select lenguaje from usuarios_lenguajes where edad=25;


-- Ejercicio 25: Seleccionar los usuarios que tienen exactamente la misma edad.
-- select edad, count(*) as cantidad from usuarios_lenguajes group by edad having cantidad > 1;


-- Ejercicio 26: Encontrar el usuario con el lenguaje con mayor número de carácteres y que tenga una edad menor de 30 años. 
-- select nombre,apellido,lenguaje,edad from usuarios_lenguajes where edad<30 order by char_length(lenguaje) desc limit 1;


-- Ejercicio 27: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar sus emails.
-- select nombre, apellido, email from usuarios_lenguajes where lenguaje is not null;


-- Ejercicio 28: Contar cuántos usuarios tienen un apellido que comienza con la letra 'G'.
-- select count(*) as totalUsuarios from usuarios_lenguajes where apellido like "G%";


-- Ejercicio 29: Seleccionar los usuarios que tienen lenguajes que empiecen por 'J' y mostrar solo el que tiene menos caracteres. 
-- select lenguaje from usuarios_lenguajes where lenguaje like "J%" order by char_length(lenguaje) asc limit 1;


-- Ejercicio 30: Encontrar el usuario con edad mayor a 30 y que sabe el lenguaje con menos caracteres.
-- select nombre,apellido,lenguaje,edad from usuarios_lenguajes where edad>30 order by char_length(lenguaje) asc limit 1;


-- Ejercicio 31: Seleccionar los usuarios que saben al menos un lenguaje y ordenarlos por nombre de lenguaje. 
-- select nombre, apellido, lenguaje from usuarios_lenguajes where lenguaje is not null order by lenguaje asc ;


-- Ejercicio 32: Contar cuántos usuarios tienen una edad entre 20 y 25 años y saben al menos un lenguaje. 
-- select count(*) as usuarioTotal from usuarios_lenguajes where edad between 20 and 25 and lenguaje is not null;


-- Ejercicio 33: Seleccionar los usuarios que no tienen un lenguaje asociado llamado 'SQL'.
-- select nombre from usuarios_lenguajes where not lenguaje= "sql";


-- Ejercicio 34: Encontrar el lenguaje con más caracteres entre los usuarios que tienen al menos 30 años.
-- select lenguaje from usuarios_lenguajes where edad >=30 order by char_length(lenguaje) desc limit 1;


-- Ejercicio 35: Seleccionar los usuarios y mostrar la diferencia entre su edad y la edad promedio de todos los usuarios
-- select nombre,apellido,edad, edad-(select avg(edad) from usuarios_lenguajes) as DiferenciaEdad from usuarios_lenguajes;


-- Ejercicio 36: Contar cuántos usuarios tienen un lenguaje asociado que contiene la palabra 'Script'.
-- select count(*) as totalUsuario from usuarios_lenguajes where lenguaje like "%Scritp%";


-- Ejercicio 37: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la longitud de su nombre. 
-- select nombre, apellido, char_length(nombre) as longitudNombre from usuarios_lenguajes where lenguaje is not null;


-- Ejercicio 38: Encontrar el lenguaje del usuario creado más tarde. 
-- select lenguaje from usuarios_lenguajes order by id_usuario desc limit 1;


-- Ejercicio 39: Seleccionar los usuarios y mostrar la suma de sus edades. 
-- select sum(edad) as sumaEdades from usuarios_lenguajes;


-- Ejercicio 40: Contar cuántos usuarios tienen un lenguaje asociado que comienza con la letra 'P' y tienen menos de 28 años.
-- select count(*) as usuarios from usuarios_lenguajes where lenguaje like "p%" and edad<28;

