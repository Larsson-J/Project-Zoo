drop database IF exists Zoo;
create database Zoo;
Use Zoo;

create table Cage(
	Cid int primary key not null auto_increment,
    Size char(1),
    Climate varchar(255)
);

insert into Cage
(Size, Climate)
values
("3", "Snow"),
("5", "Africa"),
("1", "Water");


create table Animal(
	Aid int primary key not null auto_increment,
    A_name varchar(255),
    A_Type varchar(255),
    quantity varchar(255),
    Cid_fk int references Cage (Cid)
    
    );



Insert into Animal
(A_name, A_type, Cid_fk, quantity)
values
("Emperor Penguins", "penguin", 1, 12),
("Polar Bear", "Bear" ,1, 1),
("Arctic Fox", "Fox" , 1, 4),
("Chimpanzee", "Monkey", 2, 8),
("Lion", "Felidae", 2, 3),
("Elepahant", " Elephantidae", 2, 2),
("Bottlenose Dolphin", "Dolphin", 3, 1),
("Gray Seal", "Seal", 3, 16),
("Koi Fish", "Fish", 3, 22);

Create Table Employee(
Eid int primary key not null auto_increment,
Position varchar(255),
E_Name varchar(255),
Salary varchar (255)

);

Insert into Employee
(E_Name, Position, Salary)
values
("Amie Henry", "Janitor",250 ),
("Izzie Mcgill", "Animal Lover",900 ),
("Laibah Barnard", "Chef",400),
("Ffion Boyd", "Feeder",550),
("Antony Morrow", "Cleaner", 370),
("Julio Brewer", "Cleaner", 370),
("Rosie Wheeler", "Feeder", 550),
("Ricardo Ellis", "Animal Lover",900),
("Gail Craig", "Janitor", 250),
("Jean Brown", "Chef", 400);


Create Table _Events(
Evid int primary key not null auto_increment,
Ev_Name varchar(255),
Position varchar(255),
Eid_fk int references Employee(Eid)
);

Insert into _Events
(Ev_name, Position, Eid_fk)
values
("Party", 64, 3),
("Free Food", 43, 2),
("Animal Disco", 32, 1);

Create Table Costumers(
Cid int primary key not null auto_increment,
C_Age varchar(255),
C_Name varchar(255),
Aid_fk int references Animals(Aid)
);

Insert into Costumers
(C_Name, C_Age, Aid_fk)
values
("Johan", 24, 1),
("Chris", 25, 1),
("Bobo", 22, 3),
("Donald", 73, 2),
("Troy", 43, 1),
("Carmen", 10, 2),
("Lois", 30, 3),
("Peter", 37, 1),
("Georgie", 20, 2),
("Jamie", 33, 2),
("Adam", 12, 2),
("Zak", 15, 3);


Create table Hosting(
	HostID int not null primary key auto_increment, 
	Time_Of_Host date,
    Aid_fk int references Animals(AID),
    Evid_fk int references Event(Ev_fk),
    H_Time varchar(255)
    );
    
    insert into Hosting
    (Time_Of_Host, AId_fk, Evid_fk)
    values
    ("2019-09-10",1, 4),
    ("2019-12-22",4, 2),
    ("2020-02-10",3, 5);
	



select * from _Events inner join Employee on EId_fk;

select * from _Events inner join Costumers on Aid_fk;

select * from animal;

select * from Employee;
