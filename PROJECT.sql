CREATE TABLE IF NOT EXISTS Employee(
	SSN INTEGER PRIMARY KEY,
	First_Name VARCHAR(255),
	Last_Name VARCHAR(255),
	Address VARCHAR(255),
	Employee_t VARCHAR(255));

CREATE TABLE IF NOT EXISTS Aircrew(
	SSN INTEGER PRIMARY KEY,
	First_Name VARCHAR(255),
	Last_Name VARCHAR(255),
	Skill VARCHAR(255),
	Flight_hours INTEGER,
	Liscense_ID INTEGER,
	Departure_date DATE,
	Flight_n VARCHAR(255),
	FOREIGN KEY (Departure_date),
	REFERENCES Departure(Departure_date),
	FOREIGN KEY (Flight_n),
	REFERENCES Departure(Flight_n));

CREATE TABLE IF NOT EXISTS Aircraft(
	Registration_n INTEGER PRIMARY KEY,
	Type VARCHAR(255),
	Capability VARCHAR(255),
	Autonomy VARCHAR(255));

CREATE TABLE IF NOT EXISTS Flight(
	Flight_n VARCHAR(255) PRIMARY KEY,
	Passenger_n INTEGER,
	Departure_date DATE,
	Validty_p DATE,
	Route_n INTEGER,
	Aircraft VARCHAR(255),
	FOREIGN KEY (Passenger_n),
	REFERENCES Passenger(Passenger_n),
	FOREIGN KEY (Departure_date),
	REFERENCES Departure(Departure_date),
	FOREIGN KEY (Route_n),
	REFERENCES Route(Route_n)
);

CREATE TABLE IF NOT EXISTS Departure(
	Departure_date DATE PRIMARY KEY,
	Flight_n VARCHAR(255),
	Ticket_n INTEGER,
	Type of Place VARCHAR(255),
	FOREIGN KEY (Ticket_n),
	REFERENCES Ticket(Ticket_n)
);

CREATE TABLE IF NOT EXISTS Route(
	Route_n INTEGER PRIMARY KEY,
	Place_departure VARCHAR(255),
	Destination VARCHAR(255));

CREATE TABLE IF NOT EXISTS Passenger(
	Passenger_n INTEGER PRIMARY KEY,
	Ticket_n INTEGER,
	First_Name VARCHAR(255),
	Last_Name VARCHAR(255),
	Bank Name VARCHAR(255),
	FOREIGN KEY (Ticket_n),
	REFERENCES Ticket(Ticket_n)
);

CREATE TABLE IF NOT EXISTS Ticket(
	Ticket_n INTEGER PRIMARY KEY,
	Departure_date DATE,
	Flight Name VARCHAR(255),
	First_Name VARCHAR(255),
	Last_Name VARCHAR(255),
	Purchase_date DATE,
	Ticket Price INTEGER,
	FOREIGN KEY (Departure_date),
	REFERENCES Departure(Departure_date)
);






INSERT INTO Employee VALUES(123456789,'Terry','Jones','123 Strawhill','Crew');
INSERT INTO Employee VALUES(987654321,'Mary','Ake','456 Turnway','Crew');
INSERT INTO Employee VALUES(375395184,'Verena','Lopez','789 Acorn','Ground');
INSERT INTO Employee VALUES(597312654,'Karim','Aribi','658 Birdbank','Ground');
INSERT INTO Employee VALUES(963214785,'Karl','Trapp','329 Wesley','Crew');

INSERT INTO Aircrew VALUES(111111111,'Eden','Trapp','Hostess',82,0,'21/Apr/21','AT24');
INSERT INTO Aircrew VALUES(222222222,'Lee','Thomas','Hostess',78,0,'14/Mar/21','VA29');
INSERT INTO Aircrew VALUES(333333333,'Vero','Lane','Security',145,0,'06/Jun/20','XZ40');
INSERT INTO Aircrew VALUES(444444444,'Katie','Freeman','Pilot',365,1234,'21/Apr/21','AT24');
INSERT INTO Aircrew VALUES(555555555,'Chase','Hunter','Security',55,0,'02/Jan/21','LM77');

INSERT INTO Aircraft VALUES(888,'Domestic','Yes','Yes');
INSERT INTO Aircraft VALUES(999,'Domestic','Yes','Yes');
INSERT INTO Aircraft VALUES(777,'International','No','No');
INSERT INTO Aircraft VALUES(333,'International','Yes','Yes');
INSERT INTO Aircraft VALUES(222,'Domestic','Yes','Yes');

INSERT INTO Flight VALUES('KP34',1,'21/Apr/21','21/Apr/21-23/Apr/21',12,'Boeing');
INSERT INTO Flight VALUES('ET23',2,'14/Mar/21','14/Mar/21-16/Mar/21',23,'Boeing');
INSERT INTO Flight VALUES('SB56',3,'06/Jun/20','06/Jun/20-08/Jun/20',43,'Airbus');
INSERT INTO Flight VALUES('FZ78',4,'21/Apr/21','21/Apr/21-23/Apr/21',55,'Boeing');
INSERT INTO Flight VALUES('NA09',5,'02/Jan/21','02/Jan/21-04/Jan/21',79,'Airbus');

INSERT INTO Departure VALUES('21/Apr/21','AT24',11,'Empty');
INSERT INTO Departure VALUES('14/Mar/21','VA29',22,'Reserved');
INSERT INTO Departure VALUES('06/Jun/20','XZ40',33,'Reserved');
INSERT INTO Departure VALUES('21/Apr/21','AT24',44,'Empty');
INSERT INTO Departure VALUES('02/Jan/21','LM77',55,'Empty');

INSERT INTO Route VALUES(12,'Los Angeles','New York');
INSERT INTO Route VALUES(23,'Texas','Pennsylvania');
INSERT INTO Route VALUES(43,'New York','India');
INSERT INTO Route VALUES(55,'New York','Belgium');
INSERT INTO Route VALUES(79,'Pennsylvania','Los Angeles');

INSERT INTO Passenger VALUES(1,11,'Larreau','Anette','Bank of America');
INSERT INTO Passenger VALUES(2,22,'Dolan','Mark','Santander');
INSERT INTO Passenger VALUES(3,33,'Terri','Smith','Wells Fargo');
INSERT INTO Passenger VALUES(4,44,'Rita','Freeman','Chase Bank');
INSERT INTO Passenger VALUES(5,55,'Steven','Nickolson','Citizens Bank');

INSERT INTO Ticket VALUES(11,'21/Apr/21','Flight 1','Larreau','Anette','13/Jun/20',$1000);
INSERT INTO Ticket VALUES(22,'14/Mar/21','Flight 2','Dolan','Mark','13/Mar/21',$2300);
INSERT INTO Ticket VALUES(33,'06/Jun/20','Flight 3','Terri','Smith','23/Nov/19',$6734);
INSERT INTO Ticket VALUES(44,'21/Apr/21','Flight 4','Rita','Freeman','04/Oct/20',$535);
INSERT INTO Ticket VALUES(55,'02/Jan/21','Flight 5','Steven','Nickolson','07/Aug/20',$432);