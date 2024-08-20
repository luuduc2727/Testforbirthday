USE `GameManagement`;

INSERT INTO `Score` (`Player_ID`, `Player_name`, `Score`, `Date`) VALUES
(1, 'Khoi', 100, '2015-08-18'),
(2, 'Duc', 0, '2015-10-30'),
(3, 'Dung', 500, '2022-12-31'),
(4, 'Duong', 9000, '2023-08-03');

INSERT INTO `Setting` (`Settings_ID`, `Difficulty_Level`, `Sound_Settings`, `Other_Custom_Settings`) VALUES
(1, 'Easy', 'On', 'Custom Setting 1'),
(2, 'Medium', 'Off', 'Custom Setting 2'),
(3, 'Easy', 'On', 'Custom Setting 3'),
(4, 'Hard', 'On', 'Custom Setting 4');

INSERT INTO `Analytics` (`Highest_Score`, `Player_ID`, `Number_of_Games_Played`, `Average_Score`, `Lowest_Score`) VALUES
(500, 1,  10, 123.45, 10),
(10, 2, 20, 7.59, 0),
(1000, 3, 50, 760.55, 5),
(10000, 4, '200', 8156.583, 30);

INSERT INTO `User` (`Player_ID`, `Player_Name`,`Age`) VALUES
(13088,'duc',19),
(130222,'khoi',19),
(130,'dung',19);
INSERT INTO `Game_Menu` (Title, Player_ID, Highest_Score, Settings_ID, Developer, Release_date) VALUES
('FlappyBird', 1, 500, 1, 'Nguyen Ha Dong', '2012-05-15');



