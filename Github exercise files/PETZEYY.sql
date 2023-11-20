create database Petzey;
use Petzey;

 


create table Doctor_Credentials(
Doctor_ID varchar(10)primary key,
Userame varchar(45),
Password varchar(45) not null
);
select * from Doctor_Credentials;




create table  Clinic_Address(
 Clinic_ID varchar(10) primary key,
 Clinic_name varchar(45),
 Country varchar(45),
 Country_code varchar(45),
 State varchar(45),
 City varchar(45)
);


create table Receptionist_details(
Receptionist_ID varchar(10) primary key,
Nmae varchar(45),
User_name varchar(45),
Password varchar(45),
Mobile_number long,
Location varchar(45)
);
 
 
 CREATE TABLE Appointment(
Appointment_ID VARCHAR(10) PRIMARY KEY,
Date DATE,
Time TIME,
Status VARCHAR(45),
Patient_ID VARCHAR(10) REFERENCES Patient_Details(Patient_ID),
Pet_ID VARCHAR(10) REFERENCES Pet_Details(Pet_ID),
NPI_ID VARCHAR(20) REFERENCES Doctor_Details(NPI_ID)
);

create table Owner_details(
Owner_ID varchar (10) primary key,
Name varchar(45),
UserName varchar(45),
Password varchar(45),
Mobile_number long,
Location varchar(45),
Appointment_Appointment_ID varchar (10),
foreign key(Appointment_Appointment_ID ) references Appointment(Appointment_ID)
);


create table Pet_details(
Pet_ID varchar(10) primary key,
Pet varchar(45),
Pet_name varchar(45),
Pet_type varchar(45),
Gender varchar(45),
Age int,
Blood_group varchar(45),
Date_of_birth int,
Owner_details_Owner_ID varchar(10),
foreign key(Owner_details_Owner_ID) references Owner_details(Owner_ID)
);

create table Feedback(
Feedback_ID varchar (10) primary key,
Feedback_result varchar(45),
Date datetime,
Owner_details_Owner_ID varchar(10),
Doctor_details_Doctor_id varchar(10),
foreign key(Owner_details_Owner_ID) references Owner_details(Owner_ID)
-- foreign key(Doctor_details_Doctor_id ) references Doctor_details(Doctor_ID)
);


create table Doctor_Details(
NPI_ID int primary key,
Nmae varchar(45),
Speciality varchar(45),
Mobile_number long,
Email varchar(45),
Active_status boolean,
Clinic_Address_Clinic_ID varchar(10),
Receptionist_details_Receptionist_ID varchar(10),
Doctor_ID VARCHAR(10),

 foreign key(Clinic_Address_Clinic_ID) references Clinic_Address(Clinic_ID),
 foreign key(Receptionist_details_Receptionist_ID) references Receptionist_details(Receptionist_ID),
 foreign key(Doctor_ID) references Doctor_Credentials(Doctor_ID )
 );
 
 CREATE TABLE DOC_FEED (
    NPI_ID int ,
    Feedback_ID VARCHAR(10)  ,
    PRIMARY KEY (NPI_ID, Feedback_ID),
    FOREIGN KEY (NPI_ID) REFERENCES Doctor_Details(NPI_ID),
    FOREIGN KEY (Feedback_ID) REFERENCES Feedback(Feedback_ID)
);

 
 
 create table Comment(
 Comment_ID varchar (10) primary key,
 Suggestion text,
 Doctor_Details_NPI_ID int,
 Owner_details_Owner_ID varchar(10),
 foreign key (Doctor_Details_NPI_ID) references Doctor_Details(NPI_ID),
 foreign key(Owner_details_Owner_ID) references Owner_details(Owner_ID)
 );
 
 


-- CREATE TABLE DOC_FEED(
-- Doctor_details_NPI_ID VARCHAR(10),
-- Feedback_Feedback_ID VARCHAR(10),
-- Foreign key (Doctor_details_NPI_ID) REFERENCES Doctor_Details(NPI_ID),
-- Foreign key (Feedback_Feedback_ID) REFERENCES Feedback(Feedback_ID));





CREATE TABLE Vitals(
Vital_ID varchar(10) PRIMARY KEY,
Heart_beat_BPM int,
Temp int,
Lungs_BPM int,
Date Datetime
);








CREATE TABLE Symptoms(
Symptom_ID VARCHAR(45) PRIMARY KEY,
Symptom_name VARCHAR(45)
-- Patient_ID VARCHAR(10) REFERENCES Patient_Details(Patient_ID)
);



CREATE TABLE Patient_Details(
Patient_ID int PRIMARY KEY,
Reason_for_Visit varchar(45),
NPI_ID int  ,
Pet_ID  varchar(10),
Symptom_ID  varchar(10) ,
Vital_ID varchar(10),
FOREIGN KEY(NPI_ID) REFERENCES Doctor_Details(NPI_ID),
FOREIGN KEY(Pet_ID) REFERENCES Pet_details(Pet_ID),
FOREIGN KEY(Symptom_ID) REFERENCES Symptoms(Symptom_ID),
FOREIGN KEY(Vital_ID) REFERENCES Vitals(Vital_ID)
);
CREATE TABLE Patient_Symptom (
    Patient_ID INT  ,
    Symptom_ID VARCHAR(45)  ,
    PRIMARY KEY (Patient_ID, Symptom_ID),
    FOREIGN KEY (Patient_ID)REFERENCES Patient_Details(Patient_ID),
    FOREIGN KEY (Symptom_ID)REFERENCES Symptoms(Symptom_ID)
);


create table Test(
Test_ID varchar(10) primary key,
Test_name varchar(45),
Date datetime,
Patient_details_patient_ID int,
foreign key(Patient_details_patient_ID) references Patient_Details(Patient_ID)
);



CREATE TABLE  Medicine(
Medicine_ID VARCHAR(10) PRIMARY KEY,
Medicine_Name VARCHAR(45),
Prescription_ID VARCHAR(10)
-- FOREIGN KEY (Prescription_ID) REFERENCES Prescription(Prescription_ID)
);



CREATE TABLE Prescription(
Prescription_ID VARCHAR(10) PRIMARY KEY,
Days int,
Precaution VARCHAR(100),
Date Date,
-- Medicine_ID VARCHAR(10) REFERENCES Medicine(Medicine_ID),
Patient_ID VARCHAR(10) REFERENCES Patient_Details(Patient_ID)
);


CREATE TABLE Medicine_Precriptions(
Prescription_ID VARCHAR(10) ,
Medicine_ID VARCHAR(10) ,
PRIMARY KEY(Prescription_ID, Medicine_ID),
FOREIGN KEY (Prescription_ID) REFERENCES Prescription(Prescription_ID),
FOREIGN KEY (Medicine_ID)REFERENCES Medicine(Medicine_ID)
);



