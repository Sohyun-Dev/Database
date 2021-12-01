SELECT name FROM Constructors, Drivers WHERE Constructors.country = 'Italian' and Constructors.constructor = Drivers.constructor;

SELECT name FROM Constructors, Drivers WHERE Constructors.constructor = Drivers.constructor and Constructors.country = Drivers.country;

SELECT Results.driver, Constructors.engine, Constructors.races_entered FROM Results, Drivers, Constructors where (Results.race = 'Monaco Grand Prix' and Results.driver = Drivers.name and Drivers.constructor = Constructors.constructor);

SELECT constructor from Drivers group by constructor having count(name)=1;

SELECT distinct(Drivers.name) from Drivers, Results WHERE (Results.driver = Drivers.name and Results.race = 'Spanish Grand Prix' or Drivers.constructor = 'BMW Sauber');

SELECT Drivers.name, Constructors.races_entered from Drivers, Constructors WHERE Drivers.constructor = Constructors.constructor ORDER BY Constructors.races_entered DESC, Drivers.name DESC;

(select country from Constructors where engine='Cosworth') union (select country from Constructors where engine='Mercedes');

with first(driver) as (select driver from Results where race_rank = 'first place'), secthr(driver) as (select driver from Results where (race_rank = 'second place' or race_rank = 'third place')) select distinct first.driver from first,secthr where first.driver=secthr.driver;

SELECT Results.driver, DATE_FORMAT(Races.date, '%m-%Y') as beginDate FROM Results, Races WHERE (YEAR(Races.date)='2008' or YEAR(Races.date)='2009') and Races.name=Results.race;

