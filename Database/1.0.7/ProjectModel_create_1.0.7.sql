-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2019-06-01 09:37:01.04

-- tables
-- Table: BuildingComplaints
CREATE TABLE BuildingComplaints (
    IdBuildingComplaints int  NOT NULL IDENTITY,
    Complaint_IdComplaint int  NULL,
    DateEntered_IdDateEntered int  NULL,
    InspectionDate_IdInspectionDate int  NULL,
    BuildingLocation_IdBuildingLocation int  NULL,
    DispositionDate_IdDispositionDate int  NULL,
    Disposition_IdDisposition int  NULL,
    CONSTRAINT BuildingComplaints_pk PRIMARY KEY  (IdBuildingComplaints)
);

-- Table: BuildingLocation
CREATE TABLE BuildingLocation (
    IdBuildingLocation int  NOT NULL IDENTITY,
    HouseNumber nvarchar(50)  NULL,
    HouseStreet nvarchar(50)  NULL,
    ZipCode nvarchar(50)  NULL,
    SpecialDistrict nvarchar(50)  NULL,
    CommunityBoard nvarchar(50)  NOT NULL,
    BIN int  NOT NULL,
    CONSTRAINT BuildingLocation_pk PRIMARY KEY  (IdBuildingLocation)
);

-- Table: Complaint
CREATE TABLE Complaint (
    IdComplaint int  NOT NULL IDENTITY,
    ComplaintNumber int  NULL,
    ComplaintCategory nvarchar(5)  NULL,
    ComplaintDescription nvarchar(100)  NULL,
    ComplaintPriority varchar(1)  NULL,
    Unit varchar(50)  NULL,
    Status varchar(50)  NULL,
    CONSTRAINT Complaint_pk PRIMARY KEY  (IdComplaint)
);

-- Table: DateEntered
CREATE TABLE DateEntered (
    IdDateEntered int  NOT NULL IDENTITY,
    Date date  NOT NULL,
    Year int  NOT NULL,
    Month int  NOT NULL,
    MonthName nvarchar(100)  NOT NULL,
    Day int  NOT NULL,
    DayOfWeek int  NOT NULL,
    DayOfTheWeekName nvarchar(100)  NOT NULL,
    CONSTRAINT DateEntered_pk PRIMARY KEY  (IdDateEntered)
);

-- Table: Disposition
CREATE TABLE Disposition (
    IdDisposition int  NOT NULL IDENTITY,
    DispositionCode nvarchar(5)  NULL,
    DispositionDescription nvarchar(100)  NULL,
    CONSTRAINT Disposition_pk PRIMARY KEY  (IdDisposition)
);

-- Table: DispositionDate
CREATE TABLE DispositionDate (
    IdDispositionDate int  NOT NULL IDENTITY,
    Date date  NULL,
    Year int  NULL,
    Month int  NULL,
    MonthName nvarchar(100)  NULL,
    Day int  NULL,
    DayOfWeek int  NULL,
    DayOfTheWeekName nvarchar(100)  NULL,
    CONSTRAINT DispositionDate_pk PRIMARY KEY  (IdDispositionDate)
);

-- Table: InspectionDate
CREATE TABLE InspectionDate (
    IdInspectionDate int  NOT NULL IDENTITY,
    Date date  NULL,
    Year int  NULL,
    Month int  NULL,
    MonthName nvarchar(100)  NULL,
    Day int  NULL,
    DayOfWeek int  NULL,
    DayOfTheWeekName nvarchar(100)  NULL,
    CONSTRAINT InspectionDate_pk PRIMARY KEY  (IdInspectionDate)
);

-- foreign keys
-- Reference: BuildingComplaints_BuildingLocation (table: BuildingComplaints)
ALTER TABLE BuildingComplaints ADD CONSTRAINT BuildingComplaints_BuildingLocation
    FOREIGN KEY (BuildingLocation_IdBuildingLocation)
    REFERENCES BuildingLocation (IdBuildingLocation);

-- Reference: BuildingComplaints_Complaint (table: BuildingComplaints)
ALTER TABLE BuildingComplaints ADD CONSTRAINT BuildingComplaints_Complaint
    FOREIGN KEY (Complaint_IdComplaint)
    REFERENCES Complaint (IdComplaint);

-- Reference: BuildingComplaints_DateEntered (table: BuildingComplaints)
ALTER TABLE BuildingComplaints ADD CONSTRAINT BuildingComplaints_DateEntered
    FOREIGN KEY (DateEntered_IdDateEntered)
    REFERENCES DateEntered (IdDateEntered);

-- Reference: BuildingComplaints_Disposition (table: BuildingComplaints)
ALTER TABLE BuildingComplaints ADD CONSTRAINT BuildingComplaints_Disposition
    FOREIGN KEY (Disposition_IdDisposition)
    REFERENCES Disposition (IdDisposition);

-- Reference: BuildingComplaints_DispositionDate (table: BuildingComplaints)
ALTER TABLE BuildingComplaints ADD CONSTRAINT BuildingComplaints_DispositionDate
    FOREIGN KEY (DispositionDate_IdDispositionDate)
    REFERENCES DispositionDate (IdDispositionDate);

-- Reference: BuildingComplaints_InspectionDate (table: BuildingComplaints)
ALTER TABLE BuildingComplaints ADD CONSTRAINT BuildingComplaints_InspectionDate
    FOREIGN KEY (InspectionDate_IdInspectionDate)
    REFERENCES InspectionDate (IdInspectionDate);

-- End of file.

