USE `GameManagement`;

#View score of all player
SELECT * FROM `Score`;

#View all player name
SELECT `Player_id`, `Player_name` FROM `Score`;

#View player name and their highest score
SELECT `Score`.`Player_name`, `Analytics`.`Highest_Score`
FROM `Score`
INNER JOIN `Analytics` ON `Score`.`Player_ID` = `Analytics`.`Player_ID`;

#View each player setting
SELECT * FROM `Setting`;

#View each player general information about the player
SELECT * FROM `Analytics`;

#View information about the game
SELECT `Title`, `Developer`, `Release_date` FROM `FlappyBird`;