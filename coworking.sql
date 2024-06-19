CREATE TABLE rooms (
id INT PRIMARY KEY, 
"name" VARCHAR(20), 
"rows" INT, 
columns INT, 
WorkspaceId INT 
);

CREATE TABLE workspace (
id INT PRIMARY KEY, 
"name" VARCHAR(100), 
"row" INT, 
"column" INT,
"status" VARCHAR(100), 
roomId INT );


CREATE TABLE reservations (
    id INT PRIMARY KEY, 
    "start" VARCHAR(50),
    "end" VARCHAR(50),
    sesionId INT,
    workspaceId INT,
    roomId INT,
    UserId INT
);


CREATE TABLE users (
    id INT PRIMARY KEY,
    "name" VARCHAR(20),
    email VARCHAR(50),
    cellphone VARCHAR(20)
);
     

CREATE TABLE session (
    id INT PRIMARY KEY,
    "name" VARCHAR(20),
    since DATE,
    until DATE
);


