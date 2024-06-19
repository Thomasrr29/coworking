create table rooms (

	id SERIAL PRIMARY KEY, 
	"name" VARCHAR(20),  	
); 


create table workspace (

	id SERIAL PRIMARY KEY, 
	"name" VARCHAR(100), 
	"row" INT, 
	"column" INT,
	"status" VARCHAR(100), 
	roomId INT 

);

create table users (

	id SERIAL primary key, 
	name VARCHAR(30),
	email VARCHAR(30),
	cellphone VARCHAR(10)
	
);


create table reservations (
    id SERIAL PRIMARY KEY, 
    sesionId INT,
    workspaceId INT,
    roomId INT,
    UserId INT
);


create table session (
    id SERIAL PRIMARY KEY,
    "name" VARCHAR(20),
    "since" DATE,
    "until" DATE
);

ALTER TABLE workspace
ADD CONSTRAINT fk_workspace
FOREIGN KEY (roomId) REFERENCES rooms(id);

alter table reservations 
add constraint fk_user
foreign key (userId) references users(id)

alter table reservations 
add constraint fk_workspace
foreign key (workspaceId) references workspace(id)

ALTER TABLE reservations
ADD CONSTRAINT fk_room
FOREIGN KEY (WorkspaceId) REFERENCES workspace(id);

ALTER TABLE rooms
ADD CONSTRAINT fk_room
FOREIGN KEY (WorkspaceId) REFERENCES workspace(id);
 

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


INSERT INTO Workspace (name, row, "column", status, roomId) VALUES 
('Workspace 1-1-1', 1, 1, 'Available', 1),
('Workspace 1-1-2', 1, 2, 'Busy', 1),
('Workspace 1-1-3', 1, 3, 'Available', 1),
('Workspace 1-1-4', 1, 4, 'Busy', 1),
('Workspace 1-1-5', 1, 5, 'Available', 1),
('Workspace 1-2-1', 2, 1, 'Busy', 1),
('Workspace 1-2-2', 2, 2, 'Available', 1),
('Workspace 1-2-3', 2, 3, 'Busy', 1),
('Workspace 1-2-4', 2, 4, 'Available', 1),
('Workspace 1-2-5', 2, 5, 'Busy', 1),
('Workspace 1-3-1', 3, 1, 'Available', 1),
('Workspace 1-3-2', 3, 2, 'Busy', 1),
('Workspace 1-3-3', 3, 3, 'Available', 1),
('Workspace 1-3-4', 3, 4, 'Busy', 1),
('Workspace 1-3-5', 3, 5, 'Available', 1),
('Workspace 1-4-1', 4, 1, 'Busy', 1),
('Workspace 1-4-2', 4, 2, 'Available', 1),
('Workspace 1-4-3', 4, 3, 'Busy', 1),
('Workspace 1-4-4', 4, 4, 'Available', 1),
('Workspace 1-4-5', 4, 5, 'Busy', 1),
('Workspace 1-5-1', 5, 1, 'Available', 1),
('Workspace 1-5-2', 5, 2, 'Busy', 1),
('Workspace 1-5-3', 5, 3, 'Available', 1),
('Workspace 1-5-4', 5, 4, 'Busy', 1),
('Workspace 1-5-5', 5, 5, 'Available', 1),
('Workspace 2-1-1', 1, 1, 'Busy', 2),
('Workspace 2-1-2', 1, 2, 'Available', 2),
('Workspace 2-1-3', 1, 3, 'Busy', 2),
('Workspace 2-1-4', 1, 4, 'Available', 2),
('Workspace 2-1-5', 1, 5, 'Busy', 2),
('Workspace 2-2-1', 2, 1, 'Available', 2),
('Workspace 2-2-2', 2, 2, 'Busy', 2),
('Workspace 2-2-3', 2, 3, 'Available', 2),
('Workspace 2-2-4', 2, 4, 'Busy', 2),
('Workspace 2-2-5', 2, 5, 'Available', 2),
('Workspace 2-3-1', 3, 1, 'Busy', 2),
('Workspace 2-3-2', 3, 2, 'Available', 2),
('Workspace 2-3-3', 3, 3, 'Busy', 2),
('Workspace 2-3-4', 3, 4, 'Available', 2),
('Workspace 2-3-5', 3, 5, 'Busy', 2),
('Workspace 2-4-1', 4, 1, 'Available', 2),
('Workspace 2-4-2', 4, 2, 'Busy', 2),
('Workspace 2-4-3', 4, 3, 'Available', 2),
('Workspace 2-4-4', 4, 4, 'Busy', 2),
('Workspace 2-4-5', 4, 5, 'Available', 3); 


select * from reservations 

INSERT INTO Reservations (workspaceid , userid) VALUES 
(1, 10),
(2, 11),
(3, 12),
(4, 13),
(5, 14),
(6, 15),
(7, 16),
(8, 17),
(9, 18),
(10, 19),
(1, 11),
(2, 12),
(3, 13),
(4, 14),
(5, 15),
(6, 16),
(7, 17),
(8, 18),
(9, 19),
(10, 20),
(1, 12),
(2, 13),
(3, 14),
(4, 15),
(5, 16),
(6, 17),
(7, 18),
(8, 19),
(9, 20),
(10, 21),
(1, 13),
(2, 14),
(3, 15)

select * from "session"  

select * from workspace where status = 'Available'

select * from workspace where status = 'Busy'

select * from reservations 
inner join users on reservations.userid  = users.id 