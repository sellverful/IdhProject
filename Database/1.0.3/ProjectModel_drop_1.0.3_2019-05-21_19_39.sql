-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2019-05-21 17:38:30.726

-- foreign keys
ALTER TABLE BuildingComplaints DROP CONSTRAINT BuildingComplaints_BuildingLocation;

ALTER TABLE BuildingComplaints DROP CONSTRAINT BuildingComplaints_Complaint;

ALTER TABLE BuildingComplaints DROP CONSTRAINT BuildingComplaints_DateEntered;

ALTER TABLE BuildingComplaints DROP CONSTRAINT BuildingComplaints_Disposition;

ALTER TABLE BuildingComplaints DROP CONSTRAINT BuildingComplaints_DispositionDate;

ALTER TABLE BuildingComplaints DROP CONSTRAINT BuildingComplaints_InspectionDate;

-- tables
DROP TABLE BuildingComplaints;

DROP TABLE BuildingLocation;

DROP TABLE Complaint;

DROP TABLE DateEntered;

DROP TABLE Disposition;

DROP TABLE DispositionDate;

DROP TABLE InspectionDate;

-- End of file.

