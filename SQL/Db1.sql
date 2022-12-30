-- Create a new database called 'd'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'db2
        ;'
)
CREATE DATABASE db2;
GO