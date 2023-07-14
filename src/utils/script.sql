CREATE TABLE AuditPlan (
    PlanID INT PRIMARY KEY,
    Titile VARCHAR(100),
    AuditYear int,
    AuditObject int,
    AuditType int,
    ApprovalStatus VARCHAR(50),
    PlanState VARCHAR(50),
    AuditState VARCHAR(50),
    DateCreated DATE,
    RiskScore double,
    RiskLevel VARCHAR(50),
    CreatedBy int,
    CreationMethod VARCHAR(50),
    CreationTime TIMESTAMP,
    PlanApprovedBy int,
    PlanApprovalTime TIMESTAMP
);

CREATE TABLE BudgetYear (
  YearID INT PRIMARY KEY,
  Label varchar(20),
  StartDate DATE,
  EndDate DATE,
  IsCurrentYear BOOLEAN
);

CREATE TABLE AuditObject(
	objectId int primary key auto_increment,
    objectName varchar(50) unique,
    object_description varchar(5000),
    category int default null,
    created_by int,
    creation_time Date 
);
create table auditbaleArea(
	areaId int primary key auto_increment,
    areaName varchar(50),
    area_description varchar(500),
    abject_id int
); 

create table checklist(
	checklistID int primary key auto_increment,
    chl_name varchar(200),
    chl_description varchar(500),
    objectives varchar(500),
    relatedRisk varchar(500),
    expected_controls varchar(5000),
    auditObject int,
	auditbale_area int

);
CREATE TABLE auditTeam(
	teamId int primary key auto_increment,
    teamName varchar(100) unique
);

create table RiskItem(
	riskID int primary key,
    riskItemName varchar(50),
    strategicObjectiveLink int,
    risk_type varchar(50)
    
);

create table RiskAuditUniverse(
	planID int,
    riskItemID int,
    likelyHood int,
    impact int,
    isWaited boolean,
    pecentage double,
    score double,
    primary key(planID,riskItemID)
);




INSERT INTO BudgetYear (Label, StartDate, EndDate, IsCurrentYear)
VALUES ('Fiscal Year 2023/24', '2023-07-01', '2024-06-30', 0);

select * from BudgetYear;

delete from BudgetYear where YearID=2;


ALTER TABLE `AMS`.`BudgetYear` 
ADD UNIQUE INDEX `StartDate_UNIQUE` (`StartDate` ASC) VISIBLE;
;




Select * from AuditPlan;