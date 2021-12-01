SELECT constructor, country FROM Constructors WHERE races_entered >=100;

SELECT constructor, engine, races_entered FROM Constructors WHERE height<>95 AND width<180 ORDER BY engine ASC, races_entered ASC;

SELECT constructor FROM Constructors WHERE engine='Ferrari';

SELECT name as newBoys FROM Drivers WHERE EXTRACT(YEAR FROM birthday)>=1980;

SELECT driver, race FROM Results Where race_rank = 'first place';

SELECT name FROM Races WHERE area='Europe' ORDER BY name ASC;

SELECT all name from Drivers WHERE name LIKE 'H%';

SELECT constructor FROM Constructors WHERE constructor LIKE '% %';