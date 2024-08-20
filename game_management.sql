DROP SCHEMA IF EXISTS GameManagement;
DROP DATABASE IF EXISTS GameManagement;
CREATE SCHEMA IF NOT EXISTS GameManagement;
USE GameManagement;
CREATE DATABASE IF NOT EXISTS GameManagement;
USE GameManagement;	

CREATE TABLE IF NOT EXISTS Score (
    Player_ID INT PRIMARY KEY AUTO_INCREMENT,
    Player_name VARCHAR(255) NOT NULL,
    Score INT NOT NULL,
    Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS Setting (
    Settings_ID INT PRIMARY KEY AUTO_INCREMENT,
    Difficulty_Level VARCHAR(50),
    Sound_Settings VARCHAR(50),
    Other_Custom_Settings VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Analytics (
	Highest_Score INT PRIMARY KEY AUTO_INCREMENT,
    Player_ID INT,
    Number_of_Games_Played INT,
    Average_Score DECIMAL(10, 2),
    Lowest_Score INT,
    FOREIGN KEY(Player_ID)
		REFERENCES GameManagement.Score(Player_ID)
);
CREATE TABLE IF NOT EXISTS User (
	Player_ID INT PRIMARY KEY AUTO_INCREMENT,
    Player_Name VARCHAR(200) NOT NULL,
    Age INT,
    FOREIGN KEY(Player_ID)
		REFERENCES GameManagement.Score(Player_ID)
);
    

CREATE TABLE IF NOT EXISTS Game_Menu (
    Title VARCHAR(255) PRIMARY KEY,
    Player_ID INT,
    Highest_Score INT,
    Settings_ID INT,
    Developer VARCHAR(255) NOT NULL,
    Release_date DATE NOT NULL,
    FOREIGN KEY(Player_ID) REFERENCES GameManagement.Score(Player_ID),
    FOREIGN KEY(Settings_ID) REFERENCES GameManagement.Setting(Settings_ID),
    FOREIGN KEY(Highest_Score) REFERENCES GameManagement.Analytics(Highest_Score),
    FOREIGN KEY(Player_ID) REFERENCES GameManagement.User(Player_ID)  
);