INSERT INTO Drivers VALUES('Russell', str_to_date('15/02/1998', '%d/%m/%Y'), 'British', 'BMW Sauber');
INSERT INTO Drivers VALUES('Villeneuve', str_to_date('09/04/1971', '%d/%m/%Y'), 'Canadian', 'BMW Sauber');



INSERT INTO Constructors VALUES('Sauber', 'Swiss', 'Mercedes', '0', '93', '180');
INSERT INTO Drivers VALUES('Frentzen', str_to_date('18/05/1967', '%d/%m/%Y'), 'German', 'Sauber');



create table temp1 (driver varchar(15), primary key(driver));
INSERT into temp1 (select driver from Results, Races where race = name and area = 'Asia' and race_rank = 'third place');
delete from Results where driver in (select * from temp1);
delete from Drivers where name in (select * from temp1);




update constructors set width = width/2.5;
update constructors set height = height/2.5;



update Results, Constructors, Drivers set race_rank='drop out' where engine='Honda' and Constructors.constructor = Drivers.constructor and Drivers.name = Results.driver;



create table con(constructor varchar(15), primary key (constructor));
insert into con(select constructor from Drivers group by constructor having count(constructor)>=2);
create table temp2(driver varchar(15), primary key(driver));
insert into temp2 (select name from drivers where constructor in (select * from con));
delete from results where driver in (select * from temp2);
delete from drivers where name in (select * from temp2);
