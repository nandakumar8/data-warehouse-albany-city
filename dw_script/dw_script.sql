use parking_DW
go

select DB_NAME() as db_name

CREATE TABLE license_Dim(

license_key INTEGER IDENTITY(1,1) PRIMARY KEY,
vehicle_license_plate VARCHAR(50),
car_type VARCHAR(50),
)

CREATE TABLE state_Dim(

state_key INTEGER IDENTITY(1,1) PRIMARY KEY,
vehicle_state VARCHAR(50),
stateDesc VARCHAR(50),
vehicle_region VARCHAR(50)
)

CREATE TABLE owner_Dim(

owner_key INTEGER IDENTITY(1,1) PRIMARY KEY,
driver_Id VARCHAR(50),
first_Name VARCHAR(50),
last_Name VARCHAR(50),
age INTEGER,
gender VARCHAR(50)
)


select @@SERVERNAME
CREATE TABLE citation_Fact5(

 license_key int not null,
 state_key int not null,
 owner_key int not null,
 citation_ticekt_no varchar(255) not null,
 original_Amount INTEGER,
 penalties INTEGER,
 balance_due INTEGER
 constraint p_key PRIMARY KEY(owner_key,citation_ticekt_no)
)

drop table citation_Fact5
CREATE TABLE citation_Fact(

 license_key int not null,
 state_key int not null,
 owner_key int not null,
 citation_ticekt_no varchar(255) not null,
 original_Amount INTEGER,
 penalties INTEGER,
 balance_due INTEGER
 constraint primary_key PRIMARY KEY(owner_key,citation_ticekt_no)
)


