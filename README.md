# sql


SELECT `title`,`releaseDate` FROM films ORDER BY `releaseDate` DESC


SELECT `lastname`,`firstname`,`dateOfBirthday` FROM actors WHERE YEAR(`dateOfBirthday`)>1991 ORDER BY `lastname` ASC

SELECT films.title,actors.firstname,actors.lastname FROM linked INNER JOIN films ON linked.idMovies=films.id INNER JOIN actors ON linked.idActor=actors.id WHERE films.title="Avengers"


SELECT films.title,actors.firstname,actors.lastname FROM linked INNER JOIN films ON linked.idMovies=films.id INNER JOIN actors ON linked.idActor=actors.id WHERE actors.firstname="Robert" && actors.lastname="Downey Jr."
