CREATE DATABASE LEAGUE_MANAGEMENT_SYS;

DROP DATABASE LEAGUE_MANAGEMENT_SYS;

USE LEAGUE_MANAGEMENT_SYS;

CREATE TABLE LEAGUE (
	League_ID varchar(25) NOT NULL,
    League_name varchar(255) NOT NULL,
    Sport varchar(150) NOT NULL,
    Start_date DATE,
    End_date DATE,
    Location varchar(255),
    PRIMARY KEY (League_ID)
);

SELECT * FROM LEAGUE;

INSERT INTO LEAGUE VALUES
	('L1', 'Premier League', 'Football', '2023-08-10', '2024-05-25', 'England'),
    ('L2', 'La Liga', 'Football', '2023-08-15', '2024-05-24', 'Spain'),
    ('L3', 'Serie A', 'Football', '2023-08-18', '2024-05-26', 'Italy'),
    ('L4', 'Bundesliga', 'Football', '2023-08-16', '2024-05-25', 'Germany'),
    ('L5', 'Ligue 1', 'Football', '2023-08-09', '2024-05-24', 'France'),
    ('L6', 'Eredivisie', 'Fotoball', '2023-08-09', '2024-05-23', 'Netherlands');

CREATE TABLE TEAM (
	Team_ID varchar(25) NOT NULL,
    Team_name varchar(255) NOT NULL,
    League_ID varchar(10) NOT NULL,
    City varchar(150),
    PRIMARY KEY (Team_ID)
);

SELECT * FROM TEAM;

INSERT INTO TEAM VALUES 
	('T1', 'Manchester United', 'L1', 'Manchester'),
    ('T10', 'AC Milan', 'L2', 'Milan'),
    ('T11', 'Liverpool', 'L2', 'Liverpool'),
    ('T12', 'Manchester City', 'L2', 'Manchester'),
    ('T2', 'Real Madrid', 'L1', 'Madrid'),
    ('T3', 'Juventus', 'L1', 'Turin'),
    ('T4', 'Bayern Munich', 'L1', 'Munich'),
    ('T5', 'Paris Saint-German', 'L1', 'Paris'),
    ('T6', 'Ajax', 'L1', 'Amsterdam'),
    ('T7', 'Barcelona', 'L2', 'Barcelona'),
    ('T8', 'Atletico Madrid', 'L2', 'Madrid'),
    ('T9', 'Inter Milan', 'L2', 'Milan');

CREATE TABLE PLAYER (
	Player_ID varchar(25) NOT NULL,
    First_name varchar(100) NOT NULL,
    Last_name varchar(100) NOT NULL,
    Team_ID varchar(25) NOT NULL,
    Birthday DATE NOT NULL,
    Position varchar(100),
    Jersey_number int,
    PRIMARY KEY (Player_ID)
);

SELECT * FROM PLAYER;

INSERT INTO PLAYER VALUES
	('P1', 'Cristiano', 'Ronaldo', 'T2', '1980-02-05', 'Forward', 7),
    ('P2', 'Lionel', 'Messi', 'T5', '1987-06-24', 'Forward', 10),
    ('P3', 'Neymar', 'Jr.', 'T5', '1992-02-05', 'Forward', 11),
    ('P4', 'Robert', 'Lewandowski', 'T7', '1988-08-02', 'Forward', 9),
    ('P5', 'Mohamed', 'Salah', 'T11', '1992-06-15', 'Forward', 8),
    ('P6', 'Kevin', 'De Bruyne', 'T12', '1991-06-28', 'Midfielder', 17),
    ('P7', 'Virgil', 'van Dijk', 'T11', '1991-07-08', 'Defender', 4),
    ('P8', 'Kylian', 'Mbappe', 'T5', '1998-12-20', 'Forward', 7);

CREATE TABLE SPONSOR (
	Sponsor_ID varchar(25) NOT NULL,
    Company_name varchar(255) NOT NULL,
    Contact_number varchar(50),
    Email varchar(255),
    Category varchar(50),
    PRIMARY KEY (Sponsor_ID)
);

SELECT * FROM SPONSOR;

INSERT INTO SPONSOR VALUES
	('S1', 'Nike', '123-456-7890', 'info@nike.com', 'Apparel'),
    ('S2', 'Adidas', '987-654-3210', 'info@adidas.com', 'Apparel'),
    ('S3', 'Pepsi', '456-789-0123', 'info@pepsi.com', 'Beverage'),
    ('S4', 'Coca-Cola', '789-012-3456', 'info@coca-cola.com', 'Beverage');

CREATE TABLE LEAGUE_SPONSOR (
	League_ID varchar(25) NOT NULL,
    Sponsor_ID varchar(25) NOT NULL,
    PRIMARY KEY (League_ID, Sponsor_ID)
);

SELECT * FROM LEAGUE_SPONSOR;

INSERT INTO LEAGUE_SPONSOR VALUES
	('L1', 'S1'),
    ('L1', 'S3'),
    ('L2', 'S2'),
    ('L2', 'S4');

CREATE TABLE TEAM_SPONSOR (
	Team_ID varchar(25) NOT NULL,
    Sponsor_ID varchar(25) NOT NULL,
    PRIMARY KEY (Team_ID, Sponsor_ID)
);

SELECT * FROM TEAM_SPONSOR;

INSERT INTO TEAM_SPONSOR VALUES
	('T1', 'S1'),
    ('T2', 'S2'),
    ('T3', 'S3'),
    ('T4', 'S4');

CREATE TABLE REFEREE (
	Referee_ID varchar(25) NOT NULL,
    First_name varchar(100) NOT NULL,
    Last_name varchar(100) NOT NULL,
    Referee_grade varchar(10),
    PRIMARY KEY (Referee_ID)
);

SELECT * FROM REFEREE;

INSERT INTO REFEREE VALUES
	('R1', 'Michael', 'Oliver', 'A'),
    ('R2',  'Felix', 'Brych', 'B'),
    ('R3', 'Bjorn', 'Kuipers', 'A'),
    ('R4', 'Antonio', 'Mateu', 'C'),
    ('R5', 'Daniele', 'Orsato', 'B'),
    ('R6', 'Clement', 'Turpin', 'A'),
    ('R7', 'Artur', 'Dias', 'C'),
    ('R8', 'Ovidiu', 'Hategan', 'B');

CREATE TABLE VENUE (
	Venue_ID varchar(25) NOT NULL,
    Venue_name varchar(255) NOT NULL,
    Capacity int NOT NULL,
    Country varchar(100),
    PRIMARY KEY (Venue_ID)
);

SELECT * FROM VENUE;

INSERT INTO VENUE VALUES
	('V1', 'Old Trafford', 74879, 'England'),
    ('V10', 'Emirates Stadium', 60260, 'England'),
    ('V2', 'Santiago Bernabeu', 81044, 'Spain'),
    ('V3', 'Allianz Arena', 75000, 'Germany'),
    ('V4', 'Camp Nou', 99354, 'Spain'),
    ('V5', 'Anfield', 53394, 'England'),
    ('V6', 'San Siro', 80018, 'Italy'),
    ('V7', 'Parc des Princes', 48662, 'France'),
    ('V8', 'Johan Cruyff Arena', 54891, 'Netherlands'),
    ('V9', 'Signal Iduna Park', 81365, 'Germany');

CREATE TABLE GAME (
	Game_ID varchar(25) NOT NULL,
    Venue_ID varchar(25) NOT NULL,
    Winning_Team_ID varchar(25) DEFAULT NULL,
    PRIMARY KEY (Game_ID)
);

SELECT * FROM GAME;

INSERT INTO GAME VALUES
	('G1', 'V1', 'T1'),
    ('G2', 'V2', 'T4'),
    ('G3', 'V4', 'T5'),
    ('G4', 'V6', 'T7'),
    ('G5', 'V8', 'T10'),
    ('G6', 'V7', 'T11');

CREATE TABLE GAME_TEAM (
	Game_ID varchar(25) NOT NULL,
    Team_ID varchar(25) NOT NULL,
    Winner_flag BOOLEAN DEFAULT NULL,
    PRIMARY KEY (Game_ID, Team_ID)
);

SELECT * FROM GAME_TEAM;

INSERT INTO GAME_TEAM VALUES
	('G1', 'T1', 1),
    ('G1', 'T2', 0),
    ('G2', 'T3', 0),
    ('G2', 'T4', 1),
    ('G3', 'T5', 1),
    ('G3', 'T6', 0),
    ('G4', 'T7', 1),
    ('G4', 'T8', 0),
    ('G5', 'T10', 1),
    ('G5', 'T9', 0),
    ('G6', 'T11', 1),
    ('G6', 'T12', 0);

CREATE TABLE GAME_REFEREE (
	Game_ID varchar(25) NOT NULL,
    Referee_ID varchar(25) NOT NULL,
    PRIMARY KEY (Game_ID, Referee_ID)
);

SELECT * FROM GAME_REFEREE;

INSERT INTO GAME_REFEREE VALUES
	('G1', 'R1'),
    ('G1', 'R4'),
    ('G2', 'R3'),
    ('G2', 'R8'),
    ('G3', 'R2'),
    ('G3', 'R6'),
    ('G4', 'R1'),
    ('G4', 'R7'),
    ('G5', 'R5'),
    ('G5', 'R6'),
    ('G6', 'R3'),
    ('G6', 'R7');

CREATE TABLE PLAYER_STAT (
	Match_ID varchar(25) NOT NULL,
    Player_ID varchar(25) NOT NULL,
    Goals int,
    Assists int,
    PRIMARY KEY (Match_ID, Player_ID)
);

SELECT * FROM PLAYER_STAT;

INSERT INTO PLAYER_STAT VALUES
	('G1', 'P1', 3, 0),
    ('G3', 'P2', 3, 2),
    ('G3', 'P3', 1, 1),
    ('G3', 'P8', 2, 0),
    ('G4', 'P4', 2, 0),
    ('G6', 'P5', 2, 1),
    ('G6', 'P6', 1, 1),
    ('G6', 'P7', 1, 0);

CREATE TABLE TEAM_STAT (
	Match_ID varchar(25) NOT NULL,
    Team_ID varchar(25) NOT NULL,
    Goals_for int,
    Goals_against int,
    PRIMARY KEY (Match_ID, Team_ID)
);

SELECT * FROM TEAM_STAT;

INSERT INTO TEAM_STAT VALUES
	('G1', 'T1', 4, 3),
    ('G1', 'T2', 3, 4),
    ('G2', 'T3', 1, 3),
    ('G2', 'T4', 3, 1),
    ('G3', 'T5', 6, 2),
    ('G3', 'T6', 2, 6),
    ('G4', 'T7', 3, 2),
    ('G4', 'T8', 2, 3),
    ('G5', 'T10', 2, 1),
    ('G5', 'T9', 1, 2),
    ('G6', 'T11', 4, 3),
    ('G6', 'T12', 3, 4);


ALTER TABLE TEAM
ADD CONSTRAINT FK_TEAM
FOREIGN KEY (League_ID) REFERENCES LEAGUE(League_ID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE PLAYER
ADD CONSTRAINT FK_PLAYER
FOREIGN KEY (Team_ID) REFERENCES TEAM(Team_ID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE LEAGUE_SPONSOR
ADD CONSTRAINT FK_LEAGUE_SPONSER1
FOREIGN KEY (League_ID) REFERENCES LEAGUE(League_ID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE LEAGUE_SPONSOR
ADD CONSTRAINT FK_LEAGUE_SPONSER2
FOREIGN KEY (Sponsor_ID) REFERENCES SPONSOR(Sponsor_ID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE TEAM_SPONSOR
ADD CONSTRAINT FK_TEAM_SPONSOR1
FOREIGN KEY (Team_ID) REFERENCES TEAM(Team_ID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE TEAM_SPONSOR
ADD CONSTRAINT FK_TEAM_SPONSOR2
FOREIGN KEY (Sponsor_ID) REFERENCES SPONSOR(Sponsor_ID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE GAME
ADD CONSTRAINT FK_GAME
FOREIGN KEY (Venue_ID) REFERENCES VENUE(Venue_ID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE GAME_TEAM
ADD CONSTRAINT FK_GAME_TEAM1
FOREIGN KEY (Game_ID) REFERENCES GAME(Game_ID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE GAME_TEAM
ADD CONSTRAINT FK_GAME_TEAM2
FOREIGN KEY (Team_ID) REFERENCES TEAM(Team_ID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE GAME_REFEREE
ADD CONSTRAINT FK_GAME_REFEREE1
FOREIGN KEY (Game_ID) REFERENCES GAME(Game_ID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE GAME_REFEREE
ADD CONSTRAINT FK_GAME_REFEREE2
FOREIGN KEY (Referee_ID) REFERENCES REFEREE(Referee_ID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE PLAYER_STAT
ADD CONSTRAINT FK_PLAYER_STAT1
FOREIGN KEY (Match_ID) REFERENCES GAME(Game_ID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE PLAYER_STAT
ADD CONSTRAINT FK_PLAYER_STAT2
FOREIGN KEY (Player_ID) REFERENCES PLAYER(Player_ID) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE TEAM_STAT
ADD CONSTRAINT FK_TEAM_STAT1
FOREIGN KEY (Match_ID) REFERENCES GAME(Game_ID) ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE TEAM_STAT
ADD CONSTRAINT FK_TEAM_STAT2
FOREIGN KEY (Team_ID) REFERENCES TEAM(Team_ID) ON DELETE CASCADE ON UPDATE CASCADE;

/* ******************* TRANSACTIONS ******************* */
-- SELECT OPERATION
SELECT First_name, Last_name, Jersey_number
	FROM PLAYER 
	WHERE First_name = 'Lionel';
    
-- PROJECT OPERATION
SELECT Team_ID, Team_name, City
	FROM TEAM;

-- CARTESIAN PRODUCT
SELECT * FROM PLAYER CROSS JOIN TEAM;

-- CREATING USER VIEWS
CREATE VIEW PlayerTeamView AS
	SELECT P.Player_ID, P.First_name, P.Last_name, T.Team_name, P.Position
    FROM PLAYER P 
    INNER JOIN TEAM T ON P.Team_ID = T.Team_ID;

SELECT * FROM PlayerTeamView;

-- OPERATION RENAMING
SELECT
	T.Team_name AS 'Team Name',
    L.League_name AS 'League Name'
FROM TEAM T
INNER JOIN LEAGUE L ON T.League_ID = L.League_ID;

-- Aggregation (Average goals per match)
SELECT AVG(Goals_for) AS 'Average Goals per Match' FROM TEAM_STAT;

-- USING 'LIKE' KEYWORD
SELECT * 
	FROM PLAYER
    WHERE Last_name LIKE 'R%';
    
/* ***************************** COMPLEX QUERIES ************************** */
-- UNION
SELECT Player_ID, First_name, Last_name FROM PLAYER
UNION
SELECT Sponsor_ID, Company_name, NULL FROM SPONSOR;


-- INTERSECTION
SELECT Player_ID, First_name, Last_name FROM PLAYER
INTERSECT
SELECT Sponsor_ID, Company_name, NULL FROM SPONSOR;


-- INNER JOIN
SELECT 
	P.First_name, 
    P.Last_name, 
    T.Team_name
FROM PLAYER P 
INNER JOIN TEAM T ON P.Team_ID = T.Team_ID;


-- SET DIFFERENCE
SELECT Player_ID, First_name, Last_name
FROM PLAYER
EXCEPT
SELECT Sponsor_ID, Company_name, NULL
FROM SPONSOR;


-- DIVISION
SELECT l.League_name AS Division,
       COUNT(*) AS Total_Games_Played,
       AVG(v.Capacity) AS Average_Attendance
FROM GAME g
INNER JOIN VENUE v ON g.Venue_ID = v.Venue_ID
, LEAGUE l
WHERE NOT EXISTS (
  SELECT 1
  FROM TEAM t
  LEFT JOIN GAME_TEAM gt ON t.Team_ID = gt.Team_ID
  WHERE t.League_ID = l.League_ID  -- Match league with teams
  AND gt.Game_ID IS NULL  -- Ensure no game entries for the team
)
GROUP BY l.League_name;


-- NATURAL JOIN
SELECT * FROM PLAYER NATURAL JOIN TEAM;


-- Left Outer Join
SELECT P.First_name, P.Last_name, COALESCE(T.Team_name, 'No Team') AS Team_name
FROM PLAYER P 
LEFT OUTER JOIN TEAM T ON P.Team_ID = T.Team_ID;


-- RIGHT OUTER JOIN
SELECT COALESCE(P.First_name, 'No Player') AS First_name, COALESCE(P.Last_name, 'No Player') AS Last_name, T.Team_name
FROM PLAYER P 
RIGHT OUTER JOIN TEAM T ON P.Team_ID = T.Team_ID;


-- FULL OUTER JOIN
(SELECT 
	COALESCE(T.Team_ID, 'No ID') AS Team_ID, 
	COALESCE(T.Team_name, 'No Team') AS Team_name
FROM TEAM T
LEFT JOIN TEAM_SPONSOR TS ON T.Team_ID = TS.Team_ID)
UNION
(SELECT 
	COALESCE(T.Team_ID, 'No ID') AS Team_ID, 
	COALESCE(T.Team_name, 'No Team') AS Team_name
FROM TEAM T
RIGHT JOIN TEAM_SPONSOR TS ON T.Team_ID = TS.Team_ID);


-- OUTER UNION
(SELECT Player_ID, First_name, Last_name FROM PLAYER)
UNION
(SELECT Sponsor_ID, Company_name, NULL FROM SPONSOR);


-- NESTED QUERIES
SELECT Team_ID, Team_name
FROM TEAM
WHERE Team_ID IN (
    SELECT Team_ID
    FROM TEAM_SPONSOR
    INTERSECT
    SELECT Team_ID
    FROM PLAYER
);


SELECT AVG(Goals) AS Average_Goals
FROM PLAYER_STAT
WHERE Match_ID IN (
    SELECT Game_ID
    FROM GAME_TEAM
    WHERE Team_ID IN (
        SELECT Team_ID
        FROM TEAM
        WHERE League_ID = 'L1'
    )
);


SELECT *
FROM PLAYER
WHERE Player_ID IN (
    SELECT Player_ID
    FROM PLAYER_STAT
    GROUP BY Player_ID
    HAVING AVG(Goals) > (
        SELECT AVG(Goals)
        FROM PLAYER_STAT
    )
);
    