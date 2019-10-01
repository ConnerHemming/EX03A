# EX03A
-CREATE  TABLE DEPARTMENT (
    DepartmentName  Char(35)    PRIMARY KEY,
    BudgetCode      Char(30)    NOT NULL,
    OfficeNumber    Char(15)    NOT NULL,
    DepartmentPhone Char(12)    NOT NULL,
    );

CREATE  TABLE Employee (
    EmployeeNumber  Int             PRIMARY KEY,
    FirstName       Char(25)        NOT NULL,
    LastName        Char(25)        NOT NULL,
    Department      Char(35)        NOT NULL, DEFAULT "Human Resources",
    Position        Char(35)        NULL,
    Supervisor      Int             NULL,
    OfficePhone     Char(12)        NULL,
    EmailAddress    VarChar(100)    NULL,
    CONSTRAINT      EMPLOYEE_PK     PRIMARY KEY (EmployeeNumber),
    CONSTRAINT      EMP_DEPART_FK   FOREIGN KEY (Department)
                        REFERENCES DEPARTMENT (DepartmentName)
                            ON UPDATE CASCADE,
    CONSTRAINT      EMP_SUPER_FK    FOREIGN KEY (Supervisor)
                        REFERENCES EMPLOYEE (EmployeeNumber)
);

CREATE TABLE Project (projectid)
    projectid       Int             NOT NULL IDENTITY (1000, 100),
    ProjectName     Char(50)        NOT NULL,
    Department      Char(35)        NOT NULL,
    MaxHours        numeric(8,2)    NOT NULL DEFAULT 100,
    StartDate       Date            NULL,
    EndDate         Date            NULL,
    CONSTRAINT      PROJECT_PK      PRIMARY KAY (projectid),
    CONSTRAINT      PROJ_DEPART_PK  FOREIGN KEY (DepartmentName)
                            REFERENCES Department (DepartmentName)
                                ON UPDATE CASCADE
);

CREATE TABLE Assignment (assignmentid) 
    projectid       Int             NOT NULL,
    EmployeeNumber  Int             NOT NULL,
    hoursworked     numeric(6,2)    NULL,
    CONSTRAINT      ASSIGNMENT_PK   PRIMARY KEY (projectid, EmployeeNumber),
    CONSTRAINT      ASSIGN_PROJ_FK  FOREIGN KEY (projectid)
                     REFRENCES PROJECT (projectid)
                            ON UPDATE NO ACTION
                            ON DELETE CASCADE,
    CONSTRAINT      ASSIGN_EMP_FK   FOREIGN KEY (EmployeeNumber)
                        REFERENCES EMPLOYEE (EmployeeNumber)
                            ON UPDATE NO ACTION
                            ON DELETE NO ACTION
);
