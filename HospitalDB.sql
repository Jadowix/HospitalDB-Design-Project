CREATE TABLE Patient (
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    Gender VARCHAR(10)
);
INSERT INTO Patient (
        PatientID,
        FirstName,
        LastName,
        BirthDate,
        Gender
    )
VALUES (
        1,
        'Ali',
        'Hassan',
        '1985-03-15',
        'Male'
    ),
    (
        2,
        'Leila',
        'Khalil',
        '1992-08-22',
        'Female'
    ),
    (
        3,
        'Karim',
        'Fawaz',
        '1980-05-10',
        'Male'
    ),
    (
        4,
        'Rima',
        'Saliba',
        '1995-12-01',
        'Female'
    ),
    (
        5,
        'Fadi',
        'Sleiman',
        '1978-11-19',
        'Male'
    ),
    (
        6,
        'Lina',
        'Nassar',
        '1989-04-08',
        'Female'
    ),
    (
        7,
        'Hassan',
        'Makhlouf',
        '1970-06-25',
        'Male'
    ),
    (
        8,
        'Sara',
        'Ghazali',
        '1982-09-17',
        'Female'
    );
CREATE TABLE MedicalHistory (
    MedicalHistoryID INT PRIMARY KEY,
    PatientID INT,
    NoSignificantHistory BIT,
    AllergiesToPenicillin BIT,
    HeartDisease BIT,
    Diabetes BIT,
    Asthma BIT,
    Hypertension BIT,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);
INSERT INTO MedicalHistory (
        MedicalHistoryID,
        PatientID,
        NoSignificantHistory,
        AllergiesToPenicillin,
        HeartDisease,
        Diabetes,
        Asthma,
        Hypertension
    )
VALUES (1, 1, 1, 0, 0, 1, 0, 1),
    (2, 2, 0, 1, 1, 0, 1, 0),
    (3, 3, 0, 0, 1, 1, 0, 0),
    (4, 4, 1, 0, 0, 0, 1, 0),
    (5, 5, 0, 0, 1, 0, 1, 1),
    (6, 6, 0, 1, 0, 0, 1, 0),
    (7, 7, 0, 1, 1, 0, 0, 0),
    (8, 8, 1, 0, 0, 1, 0, 1);
CREATE TABLE Doctor (
    DoctorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Specialization VARCHAR(50)
);
INSERT INTO Doctor (
        DoctorID,
        FirstName,
        LastName,
        Specialization
    )
VALUES (1, 'Mohammed', 'Abbas', 'Cardiology'),
    (2, 'Leila', 'Hakim', 'Pediatrics'),
    (3, 'Khaled', 'Said', 'Orthopedics'),
    (4, 'Rita', 'Najjar', 'Dermatology'),
    5,
    'George',
    'Tannous',
    'Neurology'
),
(6, 'Nadia', 'Khoury', 'Ophthalmology'),
(7, 'Ali', 'Hassan', 'Gastroenterology'),
(8, 'Lama', 'Salman', 'Psychiatry');
CREATE TABLE Diagnosis (
    DiagnosisID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    DiagnosisText TEXT,
    DiagnosisDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
INSERT INTO Diagnosis (
        DiagnosisID,
        PatientID,
        DoctorID,
        DiagnosisText,
        DiagnosisDate
    )
VALUES (
        1,
        1,
        1,
        'High blood pressure',
        '2023-01-10'
    ),
    (2, 2, 2, 'Common cold', '2023-02-05'),
    (3, 3, 3, 'Fractured arm', '2023-03-20'),
    (4, 4, 4, 'Skin rash', '2023-04-15'),
    (5, 5, 5, 'Migraine', '2023-05-12'),
    (
        6,
        6,
        6,
        'Allergic reaction',
        '2023-06-18'
    ),
    (7, 7, 7, 'Gastritis', '2023-07-23'),
    (8, 8, 8, 'Depression', '2023-08-30');
CREATE TABLE Prescription (
    PrescriptionID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    Medication VARCHAR(100),
    Dosage VARCHAR(50),
    PrescriptionDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
INSERT INTO Prescription (
        PrescriptionID,
        PatientID,
        DoctorID,
        Medication,
        Dosage,
        PrescriptionDate
    )
VALUES (
        1,
        1,
        1,
        'Lisinopril',
        '10mg once daily',
        '2023-01-11'
    ),
    (
        2,
        2,
        2,
        'Acetaminophen',
        '500mg as needed',
        '2023-02-06'
    ),
    (
        3,
        3,
        3,
        'Ibuprofen',
        '200mg every 6 hours',
        '2023-03-25'
    ),
    (
        4,
        4,
        4,
        'Hydrocortisone cream',
        'Apply as needed',
        '2023-04-30'
    ),
    (
        5,
        5,
        5,
        'Sumatriptan',
        '50mg at onset of migraine',
        '2023-06-01'
    ),
    (
        6,
        6,
        6,
        'Cetirizine',
        '10mg once daily',
        '2023-07-05'
    ),
    (
        7,
        7,
        7,
        'Omeprazole',
        '20mg once daily',
        '2023-08-10'
    ),
    (
        8,
        8,
        8,
        'Sertraline',
        '50mg once daily',
        '2023-09-15'
    );
CREATE TABLE Admission (
    AdmissionID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AdmissionDate DATE,
    RoomNumber INT,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
INSERT INTO Admission (
        AdmissionID,
        PatientID,
        DoctorID,
        AdmissionDate,
        RoomNumber
    )
VALUES (1, 1, 1, '2023-01-10', 101),
    (2, 2, 2, '2023-02-05', 202),
    (3, 3, 3, '2023-03-20', 303),
    (4, 4, 4, '2023-04-15', 404),
    (5, 5, 5, '2023-05-12', 505),
    (6, 6, 6, '2023-06-18', 606),
    (7, 7, 7, '2023-07-23', 707),
    (8, 8, 8, '2023-08-30', 808);
CREATE TABLE LabTest (
    LabTestID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    TestName VARCHAR(100),
    TestDate DATE,
    Result VARCHAR(50),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
INSERT INTO LabTest (
        LabTestID,
        PatientID,
        DoctorID,
        TestName,
        TestDate,
        Result
    )
VALUES (
        1,
        1,
        1,
        'Blood Pressure',
        '2023-01-15',
        '120/80'
    ),
    (
        2,
        2,
        2,
        'Blood Sugar',
        '2023-02-10',
        'Normal'
    ),
    (
        3,
        3,
        3,
        'Cholesterol',
        '2023-03-25',
        '200 mg/dL'
    ),
    (
        4,
        4,
        4,
        'Urinalysis',
        '2023-04-20',
        'Normal'
    );
CREATE TABLE Treatment (
    TreatmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    TreatmentDescription TEXT,
    TreatmentDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
INSERT INTO Treatment (
        TreatmentID,
        PatientID,
        DoctorID,
        TreatmentDescription,
        TreatmentDate
    )
VALUES (
        1,
        1,
        1,
        'Prescribed hypertension medication',
        '2023-01-12'
    ),
    (
        2,
        2,
        2,
        'Recommended rest and increased fluid intake',
        '2023-02-07'
    ),
    (
        3,
        3,
        3,
        'Prescribed medication for cholesterol control',
        '2023-03-22'
    ),
    (
        4,
        4,
        4,
        'Advised topical cream for skin rash',
        '2023-04-18'
    );
CREATE TABLE FollowUp (
    FollowUpID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    FollowUpDate DATE,
    Notes TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
INSERT INTO FollowUp (
        FollowUpID,
        PatientID,
        DoctorID,
        FollowUpDate,
        Notes
    )
VALUES (
        1,
        1,
        1,
        '2023-01-20',
        'Monitor blood pressure regularly'
    ),
    (
        2,
        2,
        2,
        '2023-02-15',
        'Check blood sugar levels after one week'
    ),
    (
        3,
        3,
        3,
        '2023-04-01',
        'Schedule a follow-up for cholesterol review'
    ),
    (
        4,
        4,
        4,
        '2023-05-10',
        'Review effectiveness of prescribed cream'
    );
CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    PaymentDate DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
INSERT INTO Payment (
        PaymentID,
        PatientID,
        DoctorID,
        PaymentDate,
        Amount
    )
VALUES (1, 1, 1, '2023-01-15', 50.00),
    (2, 2, 2, '2023-02-10', 30.00),
    (3, 3, 3, '2023-03-25', 40.00),
    (4, 4, 4, '2023-04-20', 25.00);
SELECT Patient.PatientID,
    Patient.FirstName,
    Patient.LastName,
    Patient.BirthDate,
    Patient.Gender,
    MedicalHistory.NoSignificantHistory,
    MedicalHistory.AllergiesToPenicillin,
    MedicalHistory.HeartDisease,
    MedicalHistory.Diabetes,
    MedicalHistory.Asthma,
    MedicalHistory.Hypertension
FROM Patient
    JOIN MedicalHistory ON Patient.PatientID = MedicalHistory.PatientID;
SELECT Doctor.DoctorID,
    Doctor.FirstName,
    Doctor.LastName,
    Doctor.Specialization
FROM Doctor;
SELECT Diagnosis.DiagnosisID,
    Diagnosis.DiagnosisText,
    Diagnosis.DiagnosisDate,
    Patient.FirstName AS PatientFirstName,
    Patient.LastName AS PatientLastName,
    Doctor.FirstName AS DoctorFirstName,
    Doctor.LastName AS DoctorLastName
FROM Diagnosis
    JOIN Patient ON Diagnosis.PatientID = Patient.PatientID
    JOIN Doctor ON Diagnosis.DoctorID = Doctor.DoctorID;
SELECT Prescription.PrescriptionID,
    Prescription.Medication,
    Prescription.Dosage,
    Prescription.PrescriptionDate,
    Patient.FirstName AS PatientFirstName,
    Patient.LastName AS PatientLastName,
    Doctor.FirstName AS DoctorFirstName,
    Doctor.LastName AS DoctorLastName
FROM Prescription
    JOIN Patient ON Prescription.PatientID = Patient.PatientID
    JOIN Doctor ON Prescription.DoctorID = Doctor.DoctorID;
SELECT Admission.AdmissionID,
    Admission.AdmissionDate,
    Admission.RoomNumber,
    Patient.FirstName AS PatientFirstName,
    Patient.LastName AS PatientLastName,
    Doctor.FirstName AS DoctorFirstName,
    Doctor.LastName AS DoctorLastName
FROM Admission
    JOIN Patient ON Admission.PatientID = Patient.PatientID
    JOIN Doctor ON Admission.DoctorID = Doctor.DoctorID;
SELECT LabTest.LabTestID,
    LabTest.TestName,
    LabTest.TestDate,
    LabTest.Result,
    Patient.FirstName AS PatientFirstName,
    Patient.LastName AS PatientLastName,
    Doctor.FirstName AS DoctorFirstName,
    Doctor.LastName AS DoctorLastName
FROM LabTest
    JOIN Patient ON LabTest.PatientID = Patient.PatientID
    JOIN Doctor ON LabTest.DoctorID = Doctor.DoctorID;
SELECT Treatment.TreatmentID,
    Treatment.TreatmentDescription,
    Treatment.TreatmentDate,
    Patient.FirstName AS PatientFirstName,
    Patient.LastName AS PatientLastName,
    Doctor.FirstName AS DoctorFirstName,
    Doctor.LastName AS DoctorLastName
FROM Treatment
    JOIN Patient ON Treatment.PatientID = Patient.PatientID
    JOIN Doctor ON Treatment.DoctorID = Doctor.DoctorID;
SELECT FollowUp.FollowUpID,
    FollowUp.FollowUpDate,
    FollowUp.Notes,
    Patient.FirstName AS PatientFirstName,
    Patient.LastName AS PatientLastName,
    Doctor.FirstName AS DoctorFirstName,
    Doctor.LastName AS DoctorLastName
FROM FollowUp
    JOIN Patient ON FollowUp.PatientID = Patient.PatientID
    JOIN Doctor ON FollowUp.DoctorID = Doctor.DoctorID;
SELECT Payment.PaymentID,
    Payment.PaymentDate,
    Payment.Amount,
    Patient.FirstName AS PatientFirstName,
    Patient.LastName AS PatientLastName,
    Doctor.FirstName AS DoctorFirstName,
    Doctor.LastName AS DoctorLastName
FROM Payment
    JOIN Patient ON Payment.PatientID = Patient.PatientID
    JOIN Doctor ON Payment.DoctorID = Doctor.DoctorID;