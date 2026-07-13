SHOW DATABASES;
USE MYSQL;
DROP TABLE IF EXISTS covid19;
CREATE TABLE covid19 (
    Record_ID INT PRIMARY KEY,
    Date DATE,
    Country VARCHAR(100),
    Continent VARCHAR(50),
    Region VARCHAR(100),
    Population BIGINT,
    Total_Cases BIGINT,
    New_Cases INT,
    Total_Deaths BIGINT,
    New_Deaths INT,
    Total_Recovered BIGINT,
    Active_Cases BIGINT,
    Hospitalized INT,
    Positivity_Rate DECIMAL(5,2),
    Vaccinated_People BIGINT,
    Vaccination_Rate DECIMAL(5,2),
    Fully_Vaccinated BIGINT,
    Fully_Vaccinated_Rate DECIMAL(5,2),
    Tests_Conducted BIGINT,
    Testing_Rate DECIMAL(8,2),
    ICU_Patients INT,
    Patients_On_Ventilator INT,
    New_Hospitalizations INT,
    Reproduction_Number DECIMAL(4,2),
    Risk_Level VARCHAR(20)
);
LOAD DATA LOCAL INFILE 'C:\Users\SWARALI\OneDrive\Desktop'
INTO TABLE covid19
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
Record_ID,
Date,
Country,
Continent,
Region,
Population,
Total_Cases,
New_Cases,
Total_Deaths,
New_Deaths,
Total_Recovered,
Active_Cases,
Hospitalized,
Positivity_Rate,
Vaccinated_People,
Vaccination_Rate,
Fully_Vaccinated,
Fully_Vaccinated_Rate,
Tests_Conducted,
Testing_Rate,
ICU_Patients,
Patients_On_Ventilator,
New_Hospitalizations,
Reproduction_Number,
Risk_Level
);