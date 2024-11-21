
/* 1. Obtener la cantidad de películas por género
   no SE PUEDE HACER facilmente porque los generos son strings que representan arrays de objetos ?
   si estuviera bien seria algo asi
*/ 
select genres, count(*) from movies_metadata group by genres;

/*
   2. Encontrar la película con mayor recaudación
 */

select max(budget) from movies_metadata;

/*
	3. Crear una consulta SQL que cuente el número de películas para adultos
*/

select count(*) from movies_metadata where adult = true;

/*
	4. Calcular la duración promedio de las películas
*/

select avg(runtime) from movies_metadata;

/*
	5. Listar películas con una puntuación de audiencia específica o superior (superior a 8)
*/

select * from movies_metadata where vote_average >= 8;

/*
	6. Contar la cantidad de películas por idioma original
*/

select count(*), original_language from movies_metadata group by original_language;

/*
	7. Encontrar todas las películas lanzadas en un año específico (1995-09-22)
	release_date es un string, quizas hay alguna forma de convertirlo a una fecha y sacar el año?
*/

select * from movies_metadata where release_date = '1995-09-22';

/*
	8. Seleccionar películas que aún no han sido lanzadas (según la columna 'status')
*/

select * from movies_metadata where status != 'Released';

/*
    9. Listar las películas que pertenecen a una colección
  
 */

select * from movies_metadata where belongs_to_collection is not null and belongs_to_collection != '';
/*
 *  10. Calcular la rentabilidad de las películas (suponiendo que los campos 'budget' y 'revenue' están completos y son correctos)

 */

select revenue - budget as result from movies_metadata where budget != 0 and revenue != 0;









