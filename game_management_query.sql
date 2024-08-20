USE GameManagement;

#View score of all player
SELECT * FROM Score;

#View all player name
SELECT Player_id, Player_name FROM Score;

#View player name and their highest score
SELECT Score.Player_name, Analytics.Highest_Score
FROM Score
INNER JOIN Analytics ON Score.Player_ID = Analytics.Player_ID;

#View each player setting
SELECT * FROM Setting;

-- Assuming the new score achieved is 700 in FlappyBird for Player_ID 1
UPDATE Score SET Score = 700 WHERE Player_ID = 1;

-- Assuming the new highest score is 700 and the number of games played increased by 1
UPDATE Analytics 
SET Highest_Score = 700, Number_of_Games_Played = Number_of_Games_Played + 1
WHERE Player_ID = 1;


#View each player general information about the player
SELECT * FROM Analytics;

#View information about the game
SELECT Title, Developer, Release_date FROM Game_Menu;