CREATE TABLE Admission (
  admission_id   varchar2(25) NOT NULL, 
  admission_date date, 
  discharge_date date, 
  Staffstaff_id  varchar2(25) NOT NULL, 
  PRIMARY KEY (admission_id));
CREATE TABLE Appointment (
  appointment_id    varchar2(25) NOT NULL, 
  time              number(10), 
  status            varchar2(255), 
  Doctordoctor_id   varchar2(25) NOT NULL, 
  Patientpatient_id varchar2(25) NOT NULL, 
  PRIMARY KEY (appointment_id));
CREATE TABLE bed (
  bed_id                varchar2(25) NOT NULL, 
  bed_number            varchar2(255), 
  is_occupied           number(10), 
  wardward_id           varchar2(25) NOT NULL, 
  Admissionadmission_id varchar2(25) NOT NULL, 
  PRIMARY KEY (bed_id));
CREATE TABLE Bill (
  bill_id           varchar2(25) NOT NULL, 
  issue_date        date, 
  total_amount      double precision, 
  is_paid           number(10), 
  Patientpatient_id varchar2(25) NOT NULL, 
  PRIMARY KEY (bill_id));
CREATE TABLE Doctor (
  doctor_id varchar2(25) NOT NULL, 
  name      varchar2(255), 
  specialty varchar2(255), 
  PRIMARY KEY (doctor_id));
CREATE TABLE MedicalTests (
  test_id           varchar2(25) NOT NULL, 
  test_type         varchar2(255), 
  test_time         number(10), 
  result            number(10), 
  Patientpatient_id varchar2(25) NOT NULL, 
  Staffstaff_id     varchar2(25) NOT NULL, 
  PRIMARY KEY (test_id));
CREATE TABLE Patient (
  patient_id varchar2(25) NOT NULL, 
  name       varchar2(255), 
  dob        date, 
  gender     varchar2(255), 
  address    varchar2(255), 
  phone      varchar2(255), 
  email      varchar2(255), 
  PRIMARY KEY (patient_id));
CREATE TABLE Payment (
  payment_id    varchar2(25) NOT NULL, 
  payment_type  varchar2(255), 
  amount        double precision, 
  payment_date  date, 
  Billbill_id   varchar2(25) NOT NULL, 
  Staffstaff_id varchar2(25) NOT NULL, 
  PRIMARY KEY (payment_id));
CREATE TABLE Staff (
  staff_id varchar2(25) NOT NULL, 
  name     varchar2(255), 
  role     number(10), 
  PRIMARY KEY (staff_id));
CREATE TABLE ward (
  ward_id varchar2(25) NOT NULL, 
  name    varchar2(255), 
  PRIMARY KEY (ward_id));
ALTER TABLE bed ADD CONSTRAINT FKbed576942 FOREIGN KEY (Admissionadmission_id) REFERENCES Admission (admission_id);
ALTER TABLE bed ADD CONSTRAINT FKbed776105 FOREIGN KEY (wardward_id) REFERENCES ward (ward_id);
ALTER TABLE Admission ADD CONSTRAINT FKAdmission612604 FOREIGN KEY (Staffstaff_id) REFERENCES Staff (staff_id);
ALTER TABLE Payment ADD CONSTRAINT FKPayment961605 FOREIGN KEY (Staffstaff_id) REFERENCES Staff (staff_id);
ALTER TABLE "MedicalTests"
 ADD CONSTRAINT FKMedicalTes985401 FOREIGN KEY (Staffstaff_id) REFERENCES Staff (staff_id);
ALTER TABLE "MedicalTests"
 ADD CONSTRAINT FKMedicalTes232046 FOREIGN KEY (Patientpatient_id) REFERENCES Patient (patient_id);
ALTER TABLE Payment ADD CONSTRAINT FKPayment978950 FOREIGN KEY (Billbill_id) REFERENCES Bill (bill_id);
ALTER TABLE Bill ADD CONSTRAINT FKBill812710 FOREIGN KEY (Patientpatient_id) REFERENCES Patient (patient_id);
ALTER TABLE Appointment ADD CONSTRAINT FKAppointmen615677 FOREIGN KEY (Patientpatient_id) REFERENCES Patient (patient_id);
ALTER TABLE Appointment ADD CONSTRAINT FKAppointmen836596 FOREIGN KEY (Doctordoctor_id) REFERENCES Doctor (doctor_id);
