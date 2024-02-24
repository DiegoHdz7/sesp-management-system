CREATE LOGIN sesp_admin WITH PASSWORD = 'sesp_admin';
USE SespManagementSystem;  -- Change to your actual database name
CREATE USER sesp_admin FOR LOGIN sesp_admin;
USE SespManagementSystem;
ALTER ROLE db_owner ADD MEMBER sesp_admin;


-- Test the login
USE master; -- Or the master database
SELECT name, is_disabled FROM sys.sql_logins WHERE name = 'sesp_admin';

-- Test the user in a specific database
USE SespManagementSystem; -- Change to your actual database name
SELECT name, type_desc, authentication_type_desc FROM sys.database_principals WHERE name = 'sesp_admin';

USE SespManagementSystem;

CREATE TABLE ManagementUsers (
    id INT PRIMARY KEY IDENTITY(1,1),
    username NVARCHAR(255) NOT NULL,
    firstname NVARCHAR(255) NOT NULL,
    lastname NVARCHAR(255) NOT NULL,
    RFC NVARCHAR(15) NOT NULL,
    email NVARCHAR(255) NOT NULL,
    phone NVARCHAR(15) NOT NULL,
    accesslevel NVARCHAR(50) NOT NULL,
    position NVARCHAR(50) NOT NULL
);


INSERT INTO ManagementUsers (username, firstname, lastname, RFC, email, phone, accesslevel, position)
VALUES
    ('user1', 'John', 'Doe', 'ABC123', 'john.doe@email.com', '1234567890', 'Admin', 'Manager'),
    ('user2', 'Jane', 'Smith', 'DEF456', 'jane.smith@email.com', '9876543210', 'User', 'Developer'),
    ('user3', 'Bob', 'Johnson', 'GHI789', 'bob.johnson@email.com', '5551234567', 'User', 'Analyst'),
    ('user4', 'Alice', 'Williams', 'JKL012', 'alice.williams@email.com', '4449876543', 'Admin', 'Manager'),
    ('user5', 'Charlie', 'Brown', 'MNO345', 'charlie.brown@email.com', '7778889999', 'User', 'Intern');

SELECT * FROM ManagementUsers;



