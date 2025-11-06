--Insert Data to GameBacklog Database--
INSERT INTO Users (Username, User_Email, User_Password_hash, Created_at) VALUES
('ethan', 'ethan@example.com', 'hashed_password_1', '2025-11-01'),
('alex',  'alex@example.com',  'hashed_password_2', '2025-11-02'),
('jess',  'jess@example.com',  'hashed_password_3', '2025-11-03');


INSERT INTO Genre (Genre_Name) VALUES
('Action'),
('RPG'),
('Shooter'),
('Adventure'),
('Platformer'),
('MMO'),
('Horror');

INSERT INTO Platforms (Platform_Name, Platform_Manufacturer) VALUES
('PlayStation 5', 'Sony'),
('Nintendo Switch', 'Nintendo'),
('PC', 'Various'),
('Xbox Series X', 'Microsoft');

INSERT INTO Game (Game_Title, Game_Release_year, Genre_ID, Platform_ID, Game_Developer, Game_Description) VALUES
('Elden Ring', 2022, 2, 3, 'FromSoftware','An open-world action RPG set in the Lands Between.'),
('The Legend of Zelda: Tears of the Kingdom', 2023, 4, 2, 'Nintendo', 'A sequel to Breath of the Wild with new abilities and sky islands.'),
('Halo Infinite', 2021, 3, 4, '343 Industries', 'The Master Chief returns in the latest Halo installment.'),
('Hollow Knight', 2017, 5, 2, 'Team Cherry', 'A hand-drawn action platformer set in a mysterious underground kingdom.'),
('God of War: Ragnarök', 2022, 1, 1, 'Santa Monica Studio', 'Kratos and Atreus face the coming of Ragnarök.');

INSERT INTO BacklogEntry (User_ID, Game_ID, Entry_Status, Entry_Rating, Entry_Notes, Entry_DateAdded) VALUES
(1, 1, 'Playing', 10, 'Absolutely love the world design.', '2025-11-01'),
(1, 2, 'Planned', NULL, 'Waiting until I finish Elden Ring.', '2025-11-02'),
(1, 4, 'Completed', 9, 'Challenging but rewarding.', '2025-11-03'),
(2, 3, 'Playing', 8, 'Multiplayer is fun.', '2025-11-02'),
(3, 5, 'Planned', NULL, 'Next after Zelda.', '2025-11-03');

