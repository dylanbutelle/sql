# sql

### Les titres et dates de sorties des films du plus récent au plus ancien.
```sql
SELECT title,releaseDate FROM movies ORDER BY releaseDate DESC
```

### Les noms, prénoms et ages des acteurs de plus de 30 ans dans l'ordre alphabétique.
```sql
SELECT lastname,firstname,dateOfBirthday FROM actors WHERE YEAR(dateOfBirthday)<1991 ORDER BY lastname,firstname ASC
```

### La liste des acteurs pour un film donné.
```sql
SELECT movies.title,actors.firstname,actors.lastname FROM linked INNER JOIN movies ON linked.idMovies=movies.id INNER JOIN actors ON linked.idActor=actors.id WHERE movies.title="Avengers"
```

### La liste des films pour un acteur donné.
```sql
SELECT movies.title,actors.firstname,actors.lastname FROM linked INNER JOIN movies ON linked.idMovies=movies.id INNER JOIN actors ON linked.idActor=actors.id WHERE actors.firstname="Robert" && actors.lastname="Downey Jr."
```
