IF DB_ID('GameBacklog') IS NOT NULL
    DROP DATABASE GameBacklog;
GO

CREATE DATABASE GameBacklog;
GO

USE GameBacklog;
GO

--DDL DATA--

CREATE TABLE Users (
    User_id            INT IDENTITY(1,1)   PRIMARY KEY,
    Username           VARCHAR(100)        NOT NULL,
    User_Email         VARCHAR(50)         NOT NULL,
    User_Password_hash VARCHAR(20)         NOT NULL,
    Created_at         DATETIME            NOT NULL
);

CREATE TABLE Game (
    Game_ID       INT IDENTITY(1,1)   PRIMARY KEY,
    Game_Title         VARCHAR(50)         NOT NULL,
    Game_Release_year  INT                 NOT NULL,
    Genre_ID    INT                 NOT NULL,
    Platform_ID  INT                 NOT NULL,
    Game_Developer     VARCHAR(50)         NOT NULL
);

CREATE TABLE Genre (
    Genre_ID      INT IDENTITY(1,1)  PRIMARY KEY,
    Genre_Name    VARCHAR(50)        NOT NULL
);

CREATE TABLE Platforms (
    Platform_ID   INT IDENTITY(1,1)  PRIMARY KEY,
    Platform_Name VARCHAR(50)        NOT NULL,
    Platform_Manufacturer VARCHAR(30) NOT NULL
);

CREATE TABLE BacklogEntry (
    Entry_ID      INT IDENTITY(1,1)  PRIMARY KEY,
    User_ID       INT                NOT NULL,
    Game_ID       INT                NOT NULL,
    Entry_Status  VARCHAR(50)        NOT NULL,
    Entry_Rating  INT                NOT NULL,
    Entry_DateAdded DATETIME         NOT NULL
);

--Adding Foreign Keys--
ALTER TABLE Game
ADD CONSTRAINT FK_Game_Genre_ID
FOREIGN KEY(Genre_ID)
REFERENCES Genre(Genre_ID);

ALTER TABLE Game
ADD CONSTRAINT FK_Game_Platform_ID
FOREIGN KEY(Platform_ID)
REFERENCES Platforms(Platform_ID);

ALTER TABLE BacklogEntry
ADD CONSTRAINT FK_BacklogEntry_User_ID
FOREIGN KEY(User_ID)
REFERENCES Users(User_ID);

ALTER TABLE BacklogEntry
ADD CONSTRAINT FK_BacklogEntry_Game_ID
FOREIGN KEY(Game_ID)
REFERENCES Users(Game_ID);