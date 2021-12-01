select count(*) as count_constructors from Constructors where engine = 'ferrari';




select avg(races_entered) as avg_entered from Constructors where country ='British';




select t1.constructor, t1.birthday from Drivers as t1, (select constructor, max(birthday) as youngest from Drivers group by constructor) as t2 where t1.constructor = t2.constructor and t1.birthday = t2.youngest;




select avg(height) from Constructors, Drivers where Drivers.country = 'German' and Drivers.constructor = Constructors.constructor;




select constructor, count(race_rank) from Results as R, Drivers as D where R.driver = D.name and R.race_rank='first place' group by constructor;




select count(distinct t1.constructor) as numberConstructor from Results as R, Drivers as D, (select constructor from Drivers group by constructor having count(name) >= 2) as t1 where (t1.constructor = D.constructor and R.race_rank = 'first place' and D.name = R.driver);




select Constructors.country, Constructors.constructor, avg(timestampdiff(year, birthday, now())) as age from Drivers, Constructors where Constructors.constructor = Drivers.constructor group by Constructors.country, constructor order by country;




select race, constructor, count(driver) from Drivers join Results on drivers.name = Results.driver group by race, constructor having count(driver)>=2;