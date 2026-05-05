USE assignment1;


DROP TABLE IF EXISTS Enrollment;
DROP TABLE IF EXISTS PersonalTrainingSession;
DROP TABLE IF EXISTS ClassSession;
DROP TABLE IF EXISTS ClassType;
DROP TABLE IF EXISTS Member;
DROP TABLE IF EXISTS Trainer;
DROP TABLE IF EXISTS MembershipPlan;
DROP TABLE IF EXISTS Classroom;


CREATE TABLE MembershipPlan (
PlanID INT NOT NULL,
PlanName varchar(20) NOT NULL,
Price DECIMAL(5,2),
Details varchar(200),
constraint Plan_PK primary key (PlanID),
CONSTRAINT PlanName_Check CHECK (PlanName IN ('Student Plan', 'Premium Plan', 'Basic Plan'))
);

CREATE TABLE Member(
MemberID INT NOT NULL,
FirstName varchar(100) NOT NULL,
FamilyName varchar(100) NOT NULL,
Email varchar(100),
Phone varchar(20),
DOB date,
InscriptionDate date,
Gender char(1),
Status varchar(10),
PlanID INT NOT NULL,
constraint Member_PK primary key(MemberID),
constraint Plan_Member_FK foreign key(PlanID) references MembershipPlan (PlanID)
);

CREATE TABLE Trainer(
TrainerID varchar(20) NOT NULL,
TrainerName varchar(100) NOT NULL,
TrainerFamilyName varchar(100) NOT NULL,
HourlyRate Decimal(5,2),
constraint Trainer_PK primary key (TrainerID)
);

CREATE TABLE Classroom(
ClassroomID varchar(10) NOT NULL,
ClassroomName varchar(20),
ClassroomCapacity INT NOT NULL,
constraint Classroom_PK primary key (ClassroomID)
);

CREATE TABLE ClassType(
ClassID varchar(10) NOT NULL,
ClassName varchar(20) NOT NULL,
ClassTime varchar(20) NOT NULL,
ClassDuration INT,
constraint Class_PK primary key (ClassID)
);

CREATE TABLE ClassSession(
SessionID INT NOT NULL,
TrainerID varchar(20),
ClassID varchar(10) NOT NULL,
Day_class date,
ClassroomID varchar(10) NOT NULL,
constraint SessionID_PK primary key (SessionID),
constraint Trainer_Session_FK foreign key (TrainerID) references Trainer (TrainerID),
constraint Class_Session_FK foreign key (ClassID) references ClassType (ClassID),
constraint Classroom_Session_FK foreign key (ClassroomID) references Classroom (ClassroomID)
);

CREATE TABLE Enrollment(
MemberID INT NOT NULL,
SessionID INT NOT NULL,
EnrollmentDate date,
AttendanceStatus varchar(10),
constraint Enrollment_PK primary key (MemberID, SessionID),
constraint Member_Enrollment_FK foreign key (MemberID) references Member (MemberID),
constraint Session_Enrollment_FK foreign key (SessionID) references ClassSession (SessionID)
);

CREATE TABLE PersonalTrainingSession(
MemberID INT NOT NULL,
TrainerID varchar(10) NOT NULL,
SessionDate date,
SessionType varchar(10),
constraint Session_PK primary key (MemberID, TrainerID),
constraint Member_Personal_FK foreign key (MemberID) references Member (MemberID),
constraint Trainer_Personal_FK foreign key (TrainerID) references Trainer (TrainerID)
);
