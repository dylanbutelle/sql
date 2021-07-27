# Requêtes SQL - Base de donnée MCU

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

### Requête pour ajouter un film.
```sql
INSERT INTO movies VALUES('0','Ant-Man','2015','01:58','Peyton Reed',NOW(),NOW())
```

### Requête pour ajouter un acteur.
```sql
INSERT INTO actors VALUES('0','Rudd','Paul','1969-4-6',NOW(),NOW())
```

### Requête pour modifier un film
```sql
UPDATE movies SET duration = '01:58:10', updateDate=NOW() WHERE title = "Ant-Man"
```

### Requête pour supprimer un acteur
```sql
DELETE FROM actors WHERE `firstname` = "Paul" && `lastname`="Rudd"
```

### Afficher les 3 derniers acteurs ajoutés.
```sql
SELECT * FROM actors ORDER BY id DESC LIMIT 3
```
