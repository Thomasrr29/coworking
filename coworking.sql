create table rooms (
	id SERIAL PRIMARY KEY, 
	"name" VARCHAR(20)        	
); 

create table workspaces (
	"id" SERIAL PRIMARY KEY, 
	"name" VARCHAR(100), 
	"row" INT, 
	"column" INT,
	"status" VARCHAR(100), 
	roomId INT 
);

create table users (
	id SERIAL primary key, 
	"name" VARCHAR(30),
	email VARCHAR(30),
	cellphone VARCHAR(10)
);

create table reservations (
    id SERIAL PRIMARY KEY, 
    sesionId INT,
    workspaceId INT,
    UserId INT
);

create table session (
    id SERIAL PRIMARY KEY,
    "name" VARCHAR(20),
    "since" DATE,
    "until" DATE
);

select * from session 


ALTER TABLE workspaces
ADD CONSTRAINT fk_workspace
FOREIGN KEY (roomId) REFERENCES rooms(id);

alter table reservations 
add constraint fk_user
foreign key (userId) references users(id)

alter table reservations 
add constraint fk_workspace
foreign key (workspaceId) references workspaces(id)

ALTER TABLE rooms
ADD CONSTRAINT fk_room
FOREIGN KEY (WorkspaceId) REFERENCES workspace(id);
 
ALTER TABLE "session" 
ADD constraint "userId" 
foreign key ("userId") REFERENCES users(id)


SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'users' AND column_name = 'name';

GO

INSERT INTO "rooms" (name)
VALUES 
('Room A'),
('Room B'),
('Room C'),
('Room D'),
('Room E');



select * from rooms;

select * from workspaces;
INSERT INTO workspaces (name, row, "column", status, roomId) VALUES
('Workspace 1-1-1', 1, 1, 'Busy', 1),
('Workspace 1-1-2', 1, 2, 'Available', 1),
('Workspace 1-1-3', 1, 3, 'Busy', 1),
('Workspace 1-1-4', 1, 4, 'Available', 1),
('Workspace 1-1-5', 1, 5, 'Busy', 1),
('Workspace 1-2-1', 2, 1, 'Available', 1),
('Workspace 1-2-2', 2, 2, 'Busy', 1),
('Workspace 1-2-3', 2, 3, 'Available', 1),
('Workspace 1-2-4', 2, 4, 'Busy', 1),
('Workspace 1-2-5', 2, 5, 'Available', 1),
('Workspace 1-3-1', 3, 1, 'Busy', 1),
('Workspace 1-3-2', 3, 2, 'Available', 1),
('Workspace 1-3-3', 3, 3, 'Busy', 1),
('Workspace 1-3-4', 3, 4, 'Available', 1),
('Workspace 1-3-5', 3, 5, 'Busy', 1),
('Workspace 1-4-1', 4, 1, 'Available', 1),
('Workspace 1-4-2', 4, 2, 'Busy', 1),
('Workspace 1-4-3', 4, 3, 'Available', 1),
('Workspace 1-4-4', 4, 4, 'Busy', 1),
('Workspace 1-4-5', 4, 5, 'Available', 1),
('Workspace 1-5-1', 5, 1, 'Busy', 1),
('Workspace 1-5-2', 5, 2, 'Available', 1),
('Workspace 1-5-3', 5, 3, 'Busy', 1),
('Workspace 1-5-4', 5, 4, 'Available', 1),
('Workspace 1-5-5', 5, 5, 'Busy', 1),
('Workspace 2-1-1', 1, 1, 'Available', 2),
('Workspace 2-1-2', 1, 2, 'Busy', 2),
('Workspace 2-1-3', 1, 3, 'Available', 2),
('Workspace 2-1-4', 1, 4, 'Busy', 2),
('Workspace 2-1-5', 1, 5, 'Available', 2),
('Workspace 2-2-1', 2, 1, 'Busy', 2),
('Workspace 2-2-2', 2, 2, 'Available', 2),
('Workspace 2-2-3', 2, 3, 'Busy', 2),
('Workspace 2-2-4', 2, 4, 'Available', 2),
('Workspace 2-2-5', 2, 5, 'Busy', 2),
('Workspace 2-3-1', 3, 1, 'Available', 2),
('Workspace 2-3-2', 3, 2, 'Busy', 2),
('Workspace 2-3-3', 3, 3, 'Available', 2),
('Workspace 2-3-4', 3, 4, 'Busy', 2),
('Workspace 2-3-5', 3, 5, 'Available', 2),
('Workspace 2-4-1', 4, 1, 'Busy', 2),
('Workspace 2-4-2', 4, 2, 'Available', 2),
('Workspace 2-4-3', 4, 3, 'Busy', 2),
('Workspace 2-4-4', 4, 4, 'Available', 2),
('Workspace 2-4-5', 4, 5, 'Busy', 2),
('Workspace 2-5-1', 5, 1, 'Available', 2),
('Workspace 2-5-2', 5, 2, 'Busy', 2),
('Workspace 2-5-3', 5, 3, 'Available', 2),
('Workspace 2-5-4', 5, 4, 'Busy', 2),
('Workspace 2-5-5', 5, 5, 'Available', 2);

select * from users;
INSERT INTO users (name, email, cellphone) VALUES
('John Doe', 'john.doe@example.com', '1234567890'),
('Jane Smith', 'jane.smith@example.com', '2345678901'),
('Alice Johnson', 'alice.johnson@example.com', '3456789012'),
('Bob Brown', 'bob.brown@example.com', '4567890123'),
('Charlie Black', 'charlie.black@example.com', '5678901234'),
('David White', 'david.white@example.com', '6789012345'),
('Eva Green', 'eva.green@example.com', '7890123456'),
('Frank Blue', 'frank.blue@example.com', '8901234567'),
('Grace Yellow', 'grace.yellow@example.com', '9012345678'),
('Hank Purple', 'hank.purple@example.com', '0123456789'),
('Ivy Orange', 'ivy.orange@example.com', '1234567809'),
('Jack Grey', 'jack.grey@example.com', '2345678910'),
('Kara Pink', 'kara.pink@example.com', '3456789021'),
('Liam Cyan', 'liam.cyan@example.com', '4567890132'),
('Mia Magenta', 'mia.magenta@example.com', '5678901243'),
('Noah Red', 'noah.red@example.com', '6789012354'),
('Olivia Blue', 'olivia.blue@example.com', '7890123465'),
('Paul Brown', 'paul.brown@example.com', '8901234576'),
('Quinn Violet', 'quinn.violet@example.com', '9012345687'),
('Rachel Indigo', 'rachel.indigo@example.com', '0123456798'),
('Sam White', 'sam.white@example.com', '1234567819'),
('Tina Black', 'tina.black@example.com', '2345678920'),
('Uma Green', 'uma.green@example.com', '3456789031'),
('Victor Blue', 'victor.blue@example.com', '4567890142'),
('Wendy Yellow', 'wendy.yellow@example.com', '5678901253'),
('Xander Purple', 'xander.purple@example.com', '6789012364'),
('Yara Orange', 'yara.orange@example.com', '7890123475'),
('Zane Grey', 'zane.grey@example.com', '8901234586'),
('Abby Pink', 'abby.pink@example.com', '9012345697'),
('Ben Cyan', 'ben.cyan@example.com', '0123456708'),
('Cara Magenta', 'cara.magenta@example.com', '1234567829'),
('Dean Red', 'dean.red@example.com', '2345678930'),
('Ella Blue', 'ella.blue@example.com', '3456789041'),
('Finn Brown', 'finn.brown@example.com', '4567890152'),
('Gina Violet', 'gina.violet@example.com', '5678901263'),
('Hugo Indigo', 'hugo.indigo@example.com', '6789012374'),
('Isla White', 'isla.white@example.com', '7890123485'),
('Jake Black', 'jake.black@example.com', '8901234596'),
('Kira Green', 'kira.green@example.com', '9012345607'),
('Leo Blue', 'leo.blue@example.com', '0123456718'),
('Maya Yellow', 'maya.yellow@example.com', '1234567839'),
('Nina Purple', 'nina.purple@example.com', '2345678940'),
('Omar Orange', 'omar.orange@example.com', '3456789051'),
('Pia Grey', 'pia.grey@example.com', '4567890162'),
('Quinn Pink', 'quinn.pink@example.com', '5678901273'),
('Ravi Cyan', 'ravi.cyan@example.com', '6789012384'),
('Sara Magenta', 'sara.magenta@example.com', '7890123495'),
('Tom Red', 'tom.red@example.com', '8901234506'),
('Uma Blue', 'uma.blue@example.com', '9012345617');


select * from "session";
INSERT INTO "session" (name, since, until, "userId") VALUES
('Session 1', '2024-01-01', '2024-01-02', 10),
('Session 2', '2024-01-03', '2024-01-04', 11),
('Session 3', '2024-01-05', '2024-01-06', 12),
('Session 4', '2024-01-07', '2024-01-08', 13),
('Session 5', '2024-01-09', '2024-01-10', 14),
('Session 6', '2024-01-11', '2024-01-12', 15),
('Session 7', '2024-01-13', '2024-01-14', 16),
('Session 8', '2024-01-15', '2024-01-16', 17),
('Session 9', '2024-01-17', '2024-01-18', 18),
('Session 10', '2024-01-19', '2024-01-20', 19),
('Session 11', '2024-01-21', '2024-01-22', 20),
('Session 12', '2024-01-23', '2024-01-24', 21),
('Session 13', '2024-01-25', '2024-01-26', 22),
('Session 14', '2024-01-27', '2024-01-28', 23),
('Session 15', '2024-01-29', '2024-01-30', 24),
('Session 16', '2024-01-31', '2024-02-01', 25),
('Session 17', '2024-02-02', '2024-02-03', 26),
('Session 18', '2024-02-04', '2024-02-05', 27),
('Session 19', '2024-02-06', '2024-02-07', 28),
('Session 20', '2024-02-08', '2024-02-09', 29),
('Session 21', '2024-02-10', '2024-02-11', 30),
('Session 22', '2024-02-12', '2024-02-13', 31),
('Session 23', '2024-02-14', '2024-02-15', 32),
('Session 24', '2024-02-16', '2024-02-17', 33),
('Session 25', '2024-02-18', '2024-02-19', 34),
('Session 26', '2024-02-20', '2024-02-21', 35),
('Session 27', '2024-02-22', '2024-02-23', 36),
('Session 28', '2024-02-24', '2024-02-25', 37),
('Session 29', '2024-02-26', '2024-02-27', 38),
('Session 30', '2024-02-28', '2024-02-29', 39),
('Session 31', '2024-03-01', '2024-03-02', 40),
('Session 32', '2024-03-03', '2024-03-04', 41),
('Session 33', '2024-03-05', '2024-03-06', 42),
('Session 34', '2024-03-07', '2024-03-08', 43),
('Session 35', '2024-03-09', '2024-03-10', 44),
('Session 36', '2024-03-11', '2024-03-12', 45),
('Session 37', '2024-03-13', '2024-03-14', 46),
('Session 38', '2024-03-15', '2024-03-16', 47),
('Session 39', '2024-03-17', '2024-03-18', 48),
('Session 40', '2024-03-19', '2024-03-20', 49)

select * from reservations;

INSERT INTO Reservations (sessionId, workspaceId, UserId) VALUES
(42, 101, 1),
(43, 102, 2),
(44, 103, 3),
(45, 104, 4),
(46, 105, 5),
(47, 106, 6),
(48, 107, 7),
(49, 108, 8),
(50, 109, 9),
(51, 110, 10),
(52, 111, 11),
(53, 112, 12),
(54, 113, 13),
(55, 114, 14),
(56, 115, 15),
(57, 116, 16),
(58, 117, 17),
(59, 118, 18),
(60, 119, 19),
(61, 120, 20),
(62, 121, 21),
(63, 122, 22),
(64, 123, 23),
(65, 124, 24),
(66, 125, 25),
(67, 126, 26),
(68, 127, 27),
(69, 128, 28),
(70, 129, 29),
(71, 130, 30),
(72, 131, 31),
(73, 132, 32),
(74, 133, 33),
(75, 134, 34),
(76, 135, 35),
(77, 136, 36),
(78, 137, 37),
(79, 138, 38),
(80, 139, 39),
(42, 140, 40),
(43, 141, 41),
(44, 142, 42),
(45, 143, 43),
(46, 144, 44),
(47, 145, 45),
(48, 146, 46),
(49, 147, 47),
(50, 148, 48),
(51, 149, 49)



select * from workspaces;
SELECT * FROM workspaces w
JOIN reservations ON reservations.workspaceId = w.id
JOIN "session" ON reservations.id = "session".id
WHERE "session".id = 66 AND w.status = 'Available';


select * from workspaces w 
JOIN reservations r ON r.workspaceId = w.id
JOIN  "session" s ON r.id = s.id 
WHERE s.id = 45 AND w.status = 'Busy';
--Los IDS de session van desde 42 hasta 81

select Count(*) AS count_reservations 
FROM "session" s
INNER JOIN reservations r ON r.sessionid = s.id
GROUP BY s.id, s.name 
ORDER BY count_reservations DESC


select Count(*) AS count_reservations 
FROM "session" s
INNER JOIN reservations r ON r.sessionid = s.id
GROUP BY s.id, s.name 
ORDER BY count_reservations ASC


--Los IDS de users van desde 1 hasta 49
select * from users;

--Los IDS de reservations van desde 41 hasta 89
select * from reservations;


--Los IDS de session van desde 42 hasta 81
select * from session


--Los IDS de workspaces van desde 101 hasta 149
select * from workspaces


select * from workspaces w
inner join reservations r ON r.workspaceid = w.id
inner join users u ON r.userid = u.id
where u.id = 2


select * from "session";
select * from workspaces w 
inner join reservations r ON r.workspaceid = w.id 
inner join "session" s ON r.sessionid = s.id 
where sessionid = 2


