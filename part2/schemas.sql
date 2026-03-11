CREATE TABLE Department (
    Deptcode VARCHAR(5) PRIMARY KEY,
    Deptlocation VARCHAR(100) NOT NULL
);

CREATE TABLE Employee (
    Empno INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Job VARCHAR(100) NOT NULL,
    Hiredate DATE NOT NULL,
    Salary DECIMAL(10,2) NOT NULL,
    Deptcode VARCHAR(5),
    
    CONSTRAINT fk_department
        FOREIGN KEY (Deptcode)
        REFERENCES Department(Deptcode)
        ON UPDATE CASCADE
        ON DELETE SET NULL
);