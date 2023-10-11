insert into VOLUNTEER(Forename, Surname, Email, MobileNo)
values ('Chuck', 'Bass', 'chuck55@hotmail.com','07625374926');
insert into VOLUNTEER(Forename, Surname, Email, MobileNo)
values ('Dan', 'Humphery', 'Dan34@gmail.com', '07592583629');
insert into VOLUNTEER(Forename, Surname, Email, MobileNo)
values ('Blair', 'Waldorf', 'blair222@gmail.com', '07369233058');
insert into VOLUNTEER(Forename, Surname, Email, MobileNo)
values ('Georgina', 'Sparks', 'gg36@gmail.com','07393627329');
insert into VOLUNTEER(Forename, Surname, Email, MobileNo)
values ('Serena', 'Woodsen', 'serena4@hotmail.com', '07340263827');

insert into CYCLIST(Forename, Surname, Email, MobileNo, DateOfBirth)
values ('Bella', 'Hadid', 'bellahadid@hotmail.com','07467897836', '1989-03-11');
insert into CYCLIST(Forename, Surname, Email, MobileNo, DateOfBirth)
values ('Yasmeen', 'Gauri', 'yas23@gmail.com', '07683593383','1991-07-06');
insert into CYCLIST(Forename, Surname, Email, MobileNo, DateOfBirth)
values ('Kate', 'Moss', 'katemoss@hotmail.com', '07383739279', '1989-12-02');
insert into CYCLIST(Forename, Surname, Email, MobileNo, DateOfBirth)
values ('Alek', 'Wek', 'alekwek@hotmail.com','07395839636','2000-12-27');
insert into CYCLIST(Forename, Surname, Email, MobileNo, DateOfBirth)
values ('Shalom', 'Harlow', 'shalomharlow@hotmail.com', '07374148738', '1999-01-30');

insert into CLASS(Volunteer_Id, Title, Class_Time, Class_date)
values ('5', 'Advice', '12:00', '2022-10-29');
insert into CLASS(Volunteer_Id, Title, Class_Time, Class_date)
values ('4', 'Brakes', '12:00', '2022-10-05');
insert into CLASS(Volunteer_Id, Title, Class_Time, Class_date)
values ('1', 'Gears', '12:00', '2022-10-12');
insert into CLASS(Volunteer_Id, Title, Class_Time, Class_date)
values ('2', 'Wheels', '12:00', '2022-10-19');
insert into CLASS(Volunteer_Id, Title, Class_Time, Class_date)
values ('3', 'Handles', '12:30', '2022-10-26');
insert into CLASS(Volunteer_Id, Title, Class_Time, Class_date)
values ('4', 'Saddle', '12:30', '2022-11-04');
insert into CLASS(Volunteer_Id, Title, Class_Time, Class_date)
values ('5', 'Child seats', '12:30', '2022-11-08');
insert into CLASS(Volunteer_Id, Title, Class_Time, Class_date)
values ('2', 'Acceleration', '12:30', '2022-11-19');
insert into CLASS(Volunteer_Id, Title, Class_Time, Class_date)
values ('3', 'On the road', '12:30', '2022-12-05');
insert into CLASS(Volunteer_Id, Title, Class_Time, Class_date)
values ('1', 'On mountains', '12:30', '2022-12-11');
insert into CLASS(Volunteer_Id, Title, Class_Time, Class_date)
values ('2', 'Tour de france', '12:30', '2022-12-18');
insert into CLASS(Volunteer_Id, Title, Class_Time, Class_date)
values ('3', 'On mountains', '12:30', '2022-12-21');

insert into BICYCLE(Cyclist_Id, Model)
values ('3', 'GT38');
insert into BICYCLE(Cyclist_Id, Model)
values ('1', 'GT11');
insert into BICYCLE(Cyclist_Id, Model)
values ('2', 'BMX16');
insert into BICYCLE(Cyclist_Id, Model)
values ('4', 'GT01');
insert into BICYCLE(Cyclist_Id, Model)
values ('5', 'BMX15');

insert into REPAIR(Bicycle_Id, Repair_date)
values ('1', '2022-11-02');
insert into REPAIR(Bicycle_Id, Repair_date)
values ('2', '2022-11-08');
insert into REPAIR(Bicycle_Id, Repair_date)
values ('3', '2022-11-12');
insert into REPAIR(Bicycle_Id, Repair_date)
values ('4', '2022-11-19');
insert into REPAIR(Bicycle_Id, Repair_date)
values ('5', '2022-12-03');
insert into REPAIR(Bicycle_Id, Repair_date)
values ('5', '2022-12-04');
insert into REPAIR(Bicycle_Id, Repair_date)
values ('2', '2022-12-10');
insert into REPAIR(Bicycle_Id, Repair_date)
values ('3', '2022-12-17');
insert into REPAIR(Bicycle_Id, Repair_date)
values ('4', '2023-01-04');
insert into REPAIR(Bicycle_Id, Repair_date)
values ('1', '2023-01-14');
insert into REPAIR(Bicycle_Id, Repair_date)
values ('5', '2023-01-23');


insert into FAULT(Repair_Id, Description)
values ('3','Frame of the bike weakened due to crack');
insert into FAULT(Repair_Id, Description)
values ('1','Chain fallen off bike');
insert into FAULT(Repair_Id, Description)
values ('4','Handles snapped');
insert into FAULT(Repair_Id, Description)
values ('5','Saddle is slippery');
insert into FAULT(Repair_Id, Description)
values ('7','Wheel is punctured');
insert into FAULT(Repair_Id, Description)
values ('2','Wheel is old');
insert into FAULT(Repair_Id, Description)
values ('11','Broken frame');
insert into FAULT(Repair_Id, Description)
values ('9','Snapped handles');
insert into FAULT(Repair_Id, Description)
values ('10','Chain is rusty');
insert into FAULT(Repair_Id, Description)
values ('8','Saddle can no longer support');
insert into FAULT(Repair_Id, Description)
values ('6','Wheel not working');


insert into PART(Repair_Id, Part_name, Cost, Quantity)
values ('3', 'Frame', '70.00', '1');
insert into PART(Repair_Id, Part_name, Cost, Quantity)
values ('1', 'Chain', '30.00', '1');
insert into PART(Repair_Id, Part_name, Cost, Quantity)
values ('4', 'Handle', '50.00', '2');
insert into PART(Repair_Id, Part_name, Cost, Quantity)
values ('5', 'Saddle', '20.00', '1');
insert into PART(Repair_Id, Part_name, Cost, Quantity)
values ('2', 'Wheel', '55.00', '2');
insert into PART(Repair_Id, Part_name, Cost, Quantity)
values ('6', 'Wheel', '55.00', '2');
insert into PART(Repair_Id, Part_name, Cost, Quantity)
values ('11', 'Frame', '75.00', '1');
insert into PART(Repair_Id, Part_name, Cost, Quantity)
values ('9', 'Handle', '55.00', '2');
insert into PART(Repair_Id, Part_name, Cost, Quantity)
values ('10', 'Chain', '30.00', '1');
insert into PART(Repair_Id, Part_name, Cost, Quantity)
values ('8', 'Saddle', '30.00', '1');
insert into PART(Repair_Id, Part_name, Cost, Quantity)
values ('7', 'Wheel', '55.00', '2');

insert into CYCLIST_CLASS(Cyclist_Id, Class_Id)
values ('1', '5');
insert into CYCLIST_CLASS(Cyclist_Id, Class_Id)
values ('2', '1');
insert into CYCLIST_CLASS(Cyclist_Id, Class_Id)
values ('3', '4');
insert into CYCLIST_CLASS(Cyclist_Id, Class_Id)
values ('4', '3');
insert into CYCLIST_CLASS(Cyclist_Id, Class_Id)
values ('5', '2');
insert into CYCLIST_CLASS(Cyclist_Id, Class_Id)
values ('1', '4');
insert into CYCLIST_CLASS(Cyclist_Id, Class_Id)
values ('3', '3');
insert into CYCLIST_CLASS(Cyclist_Id, Class_Id)
values ('3', '5');
insert into CYCLIST_CLASS(Cyclist_Id, Class_Id)
values ('4', '2');
insert into CYCLIST_CLASS(Cyclist_Id, Class_Id)
values ('5', '1');
insert into CYCLIST_CLASS(Cyclist_Id, Class_Id)
values ('1', '3');


insert into FAULT_VOLUNTEER(Fault_Id, Volunteer_Id, Fault_date, Fault_Comment, time_taken)
values ('1', '3', '2022-11-02', 'Replace frame', '300');
insert into FAULT_VOLUNTEER(Fault_Id, Volunteer_Id, Fault_date, Fault_Comment, time_taken)
values ('2', '4', '2022-11-08',	'Fix and screw chain', '30');
insert into FAULT_VOLUNTEER(Fault_Id, Volunteer_Id, Fault_date, Fault_Comment, time_taken)
values ('3', '2', '2022-11-12', 'Screw new handles and replace wheels', '120');
insert into FAULT_VOLUNTEER(Fault_Id, Volunteer_Id, Fault_date, Fault_Comment, time_taken)
values ('4', '1', '2022-11-19', 'Saddle restore needed', '60');
insert into FAULT_VOLUNTEER(Fault_Id, Volunteer_Id, Fault_date, Fault_Comment, time_taken)
values ('5', '5', '2022-12-03', 'Wheel replacement', '240');
insert into FAULT_VOLUNTEER(Fault_Id, Volunteer_Id, Fault_date, Fault_Comment, time_taken)
values ('6', '5', '2022-12-04', 'Wheel replacement', '240');
insert into FAULT_VOLUNTEER(Fault_Id, Volunteer_Id, Fault_date, Fault_Comment, time_taken)
values ('7', '3', '2022-12-10', 'Replace frame', '280');
insert into FAULT_VOLUNTEER(Fault_Id, Volunteer_Id, Fault_date, Fault_Comment, time_taken)
values ('8', '5', '2022-12-17', 'screw new handles', '45');
insert into FAULT_VOLUNTEER(Fault_Id, Volunteer_Id, Fault_date, Fault_Comment, time_taken)
values ('9', '2', '2023-01-04', 'Fit new chain', '30');
insert into FAULT_VOLUNTEER(Fault_Id, Volunteer_Id, Fault_date, Fault_Comment, time_taken)
values ('10', '1', '2023-01-14', 'Saddle replacement', '90');
insert into FAULT_VOLUNTEER(Fault_Id, Volunteer_Id, Fault_date, Fault_Comment, time_taken)
values ('11', '4', '2023-01-23', 'Wheel replacement', '240');



