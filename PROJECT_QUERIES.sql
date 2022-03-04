/*Query #1*/
Select Distinct Aircraft from Flight;

/*Query #2*/
Select Distinct Employee_t from Employee;

/*Query #3*/
SELECT Skill, count(*) from Aircrew
GROUP BY Skill;

/*Query #4*/
SELECT First_Name, Last_Name from Passenger where First_Name, Last_Name in (
SELECT First_Name, Last_Name from Ticket);

/*Query #5*/
