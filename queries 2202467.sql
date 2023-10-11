# 1. query (3 seperate queries)
select * from repair where monthname(repair.Repair_date)= 'november';
select * from repair where monthname(repair.Repair_date)= 'december';
select * from repair where monthname(repair.Repair_date)= 'january';

# 2. query
SELECT part.part_name, part.cost, repair.Id, repair.Repair_date
FROM PART
INNER JOIN repair ON part.Repair_Id = repair.Id
WHERE monthname(repair.Repair_date) = 'december';

# 3. query
SELECT part.part_name, AVG(part.cost), SUM(part.cost), sum(part.quantity)
FROM PART
INNER JOIN repair ON part.Repair_Id = repair.Id
WHERE monthname(repair.Repair_date) = 'december'
GROUP BY part.part_name;

#4 query (3 months and 5 volunteers)
SELECT fault_volunteer.volunteer_Id, AVG(fault_volunteer.time_taken), SUM(fault_volunteer.time_taken), volunteer.Forename, volunteer.Surname
FROM fault_volunteer
INNER JOIN volunteer on fault_volunteer.volunteer_Id = volunteer.Id
WHERE monthname(fault_volunteer.Fault_date) = 'november'
GROUP BY fault_volunteer.volunteer_Id;

SELECT fault_volunteer.volunteer_Id, AVG(fault_volunteer.time_taken), SUM(fault_volunteer.time_taken), volunteer.Forename, volunteer.Surname
FROM fault_volunteer
INNER JOIN volunteer on fault_volunteer.volunteer_Id = volunteer.Id
WHERE monthname(fault_volunteer.Fault_date) = 'december'
GROUP BY fault_volunteer.volunteer_Id;

SELECT fault_volunteer.volunteer_Id, AVG(fault_volunteer.time_taken), SUM(fault_volunteer.time_taken), volunteer.Forename, volunteer.Surname
FROM fault_volunteer
INNER JOIN volunteer on fault_volunteer.volunteer_Id = volunteer.Id
WHERE monthname(fault_volunteer.Fault_date) = 'january'
GROUP BY fault_volunteer.volunteer_Id;

SELECT fault_volunteer.volunteer_Id, AVG(fault_volunteer.time_taken), SUM(fault_volunteer.time_taken), volunteer.Forename, volunteer.Surname
FROM fault_volunteer
INNER JOIN volunteer on fault_volunteer.volunteer_Id = volunteer.Id
WHERE volunteer.Forename = 'Chuck' 
GROUP BY fault_volunteer.volunteer_Id;

SELECT fault_volunteer.volunteer_Id, AVG(fault_volunteer.time_taken), SUM(fault_volunteer.time_taken), volunteer.Forename, volunteer.Surname
FROM fault_volunteer
INNER JOIN volunteer on fault_volunteer.volunteer_Id = volunteer.Id
WHERE volunteer.Forename = 'Dan' 
GROUP BY fault_volunteer.volunteer_Id;

SELECT fault_volunteer.volunteer_Id, AVG(fault_volunteer.time_taken), SUM(fault_volunteer.time_taken), volunteer.Forename, volunteer.Surname
FROM fault_volunteer
INNER JOIN volunteer on fault_volunteer.volunteer_Id = volunteer.Id
WHERE volunteer.Forename = 'Blair' 
GROUP BY fault_volunteer.volunteer_Id;

SELECT fault_volunteer.volunteer_Id, AVG(fault_volunteer.time_taken), SUM(fault_volunteer.time_taken), volunteer.Forename, volunteer.Surname
FROM fault_volunteer
INNER JOIN volunteer on fault_volunteer.volunteer_Id = volunteer.Id
WHERE volunteer.Forename = 'Georgina' 
GROUP BY fault_volunteer.volunteer_Id;

SELECT fault_volunteer.volunteer_Id, AVG(fault_volunteer.time_taken), SUM(fault_volunteer.time_taken), volunteer.Forename, volunteer.Surname
FROM fault_volunteer
INNER JOIN volunteer on fault_volunteer.volunteer_Id = volunteer.Id
WHERE volunteer.Forename = 'Serena' 
GROUP BY fault_volunteer.volunteer_Id;

#5 query (month + volunteer)
SELECT class.Title, class.Class_date, cyclist_class.Cyclist_Id, cyclist_class.Class_Id, cyclist.Forename, cyclist.Surname
FROM CLASS
INNER JOIN cyclist_class ON cyclist_class.Class_Id = class.Id
inner join cyclist on cyclist_class.Cyclist_Id = cyclist.Id
WHERE monthname(class.Class_date) = 'october'
GROUP BY class.Title, class.Class_date, cyclist_class.Cyclist_Id, cyclist_class.Class_Id;
# volunteer
SELECT class.Title, class.Class_date, cyclist_class.Cyclist_Id, cyclist_class.Class_Id, volunteer.Forename, volunteer.Surname, cyclist.Forename, cyclist.Surname
FROM CLASS
INNER JOIN cyclist_class ON cyclist_class.Class_Id = class.Id
INNER JOIN cyclist ON cyclist_class.Cyclist_Id = cyclist.Id
INNER JOIN volunteer ON class.Volunteer_Id = volunteer.Id
WHERE volunteer.Forename = 'Chuck'
GROUP BY class.Title, class.Class_date, cyclist_class.Cyclist_Id, cyclist_class.Class_Id;

# 6. query
SELECT class.Title, COUNT(cyclist_class.Cyclist_Id) AS NumberOfCyclists
FROM cyclist_class
INNER JOIN class ON cyclist_class.Class_Id = class.Id
WHERE MONTHNAME(class.Class_date) = 'october'
GROUP BY class.Title;

SELECT class.Title, COUNT(cyclist_class.Cyclist_Id) AS NumberOfCyclists, volunteer.Forename, volunteer.Surname
FROM cyclist_class
INNER JOIN class ON cyclist_class.Class_Id = class.Id
INNER JOIN volunteer on class.Volunteer_Id = volunteer.Id
WHERE MONTHNAME(class.Class_date) = 'october'
GROUP BY class.Title, volunteer.Forename, volunteer.Surname;

# extra query: to show the top 3 most expensive parts in descending order
SELECT part_Name, cost
FROM part
ORDER BY cost DESC
LIMIT 3;

