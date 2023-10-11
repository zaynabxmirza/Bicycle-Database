CREATE DATABASE BBK;
USE BBK;

create table CYCLIST (
	Id					int				not null auto_increment,
    Forename			varchar(20)		not null,
    Surname				varchar(20)		not null,
    Email				varchar(30)		not null,
    MobileNo			varchar(11)		not null,
    DateOfBirth			date			not null,
    primary key (Id),
    unique(Email, MobileNo, DateOfBirth)
);

create table VOLUNTEER (
	Id					int				not null auto_increment,
    Forename			varchar(20)		not null,
    Surname				varchar(20)		not null,
    Email				varchar(30)		not null,
    MobileNo			varchar(11)		not null,
    primary key (Id),
    unique(Email, MobileNo)
);

create table CLASS (
	Id					int				not null auto_increment,
    Volunteer_Id		int				not null,
    Title				varchar(100)	not null,
    Class_Time			time			not null,
    Class_date			date			not null,
    primary key(Id),
    foreign key(Volunteer_Id) references VOLUNTEER(Id)
);
    
create table BICYCLE (
	Id					int				not null auto_increment,
    Cyclist_Id			int				not null,
    Model				varchar(10)		not null,
    primary key(Id),
    foreign key(Cyclist_Id) references CYCLIST(Id)
);
    
create table REPAIR (
	Id					int				not null auto_increment,
    Bicycle_Id			int				not null,
    Repair_date			date			not null,
    primary key(Id),
    foreign key(Bicycle_Id) references BICYCLE(Id)
);
    
create table FAULT (
	Id					int				not null auto_increment,
    Repair_Id			int				not null,
    Description			varchar(200)	not null,
    primary key(Id),
    foreign key(Repair_Id) references REPAIR(Id)
);
    
create table PART (
	Id					int				not null auto_increment,
    Repair_Id			int				not null,
    Part_name			varchar(10)		not null,
    Cost				decimal(10,2)	not null,
    Quantity			int				not null,
    primary key(Id),
    foreign key(Repair_Id) references REPAIR(Id)
);


create table CYCLIST_CLASS (
  Cyclist_Id 			int 			not null,
  Class_Id 				int 			not null,
  primary key (Cyclist_Id, Class_Id),
  foreign key (Cyclist_Id) references CYCLIST(Id),
  foreign key (Class_Id) references CLASS(Id)
);

create table FAULT_VOLUNTEER (
	Fault_Id			int					not null,
    Volunteer_Id		int					not null,
    Fault_date			date				not null,
    Fault_Comment		varchar(200)		not null,
    time_taken			int					not null,
    primary key(Fault_Id, Volunteer_Id),
    foreign key (Fault_Id) references FAULT(Id),
    foreign key (Volunteer_Id) references VOLUNTEER(Id)
);

