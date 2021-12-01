select country from Constructors where races_entered in (select max(races_entered) from Constructors);




select distinct D.constructor from Drivers as D, Results where exists (select * from Results as R where R.driver = D.name and R.race_rank = 'first place');




select distinct name from Constructors, Drivers where Drivers.constructor = all(select constructor from Constructors where engine = 'Mercedes');




select distinct race from Results, Drivers where Results.driver = any(select name from Drivers where constructor = 'Ferrari');




SELECT name FROM drivers WHERE constructor = some (SELECT DISTINCT C1.constructor FROM constructors as C1, constructors as C2 WHERE (C1.height = C2.height AND C1.width > C2.width));