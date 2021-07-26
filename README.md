# sql


SELECT `title`,`releaseDate` FROM movies ORDER BY `releaseDate` DESC


SELECT `lastname`,`firstname`,`dateOfBirthday` FROM actors WHERE YEAR(`dateOfBirthday`)<1991 ORDER BY `lastname`,`firstname` ASC


SELECT movies.title,movies.firstname,actors.lastname FROM linked INNER JOIN movies ON linked.idMovies=movies.id INNER JOIN actors ON linked.idActor=actors.id WHERE movies.title="Avengers"


SELECT movies.title,actors.firstname,actors.lastname FROM linked INNER JOIN movies ON linked.idMovies=movies.id INNER JOIN actors ON linked.idActor=actors.id WHERE actors.firstname="Robert" && actors.lastname="Downey Jr."
