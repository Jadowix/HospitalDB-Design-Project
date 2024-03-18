# Healthcare Management System SQL Database

This repository contains SQL scripts for creating and managing a healthcare management system database. The database schema is designed to store information about patients, medical history, diagnoses, prescriptions, admissions, lab tests, treatments, follow-ups, and payments within a healthcare facility.

1. Table of Contents
2. Overview
3. Database Schema
4. SQL Scripts
5. Usage
6. Licensing
7. Contributing

## Overview

This healthcare management system database is intended to streamline the storage and retrieval of patient-related information within a medical facility. It facilitates the management of patient records, medical histories, diagnoses, treatments, prescriptions, admissions, lab tests, follow-ups, and payments.

## Database Schema

The database consists of the following tables:

- **Patient**: Stores information about patients, including their names, birth dates, genders, and unique identifiers.
- **MedicalHistory**: Contains medical history records associated with patients, indicating any significant medical conditions or allergies.
- **Doctor**: Stores details about doctors, including their names, specialties, and unique identifiers.
- **Diagnosis**: Records diagnoses made by doctors for patients, along with relevant details such as diagnosis text and date.
- **Prescription**: Contains prescriptions issued by doctors for patients, specifying medications, dosages, and prescription dates.
- **Admission**: Stores information about patient admissions to the medical facility, including admission dates, room numbers, and attending doctors.
- **LabTest**: Records lab tests conducted for patients, including test names, dates, results, and the attending doctors.
- **Treatment**: Contains details about treatments administered to patients, including treatment descriptions and dates.
- **FollowUp**: Stores information about follow-up appointments scheduled for patients, including follow-up dates and any relevant notes.
- **Payment**: Records payments made by patients, specifying payment dates, amounts, and the attending doctors.

## SQL Scripts

The SQL scripts provided in this repository include:

- Table creation scripts for each database table, defining their structure and relationships.
- Data insertion scripts to populate the tables with sample data for demonstration purposes.
- Select queries to retrieve information from the database, including patient details, diagnoses, prescriptions, admissions, lab tests, treatments, follow-ups, and payments.

## Usage

To use this healthcare management system database:

1. Execute the SQL scripts in a compatible database management system (DBMS) such as MySQL, PostgreSQL, or SQLite.
2. Optionally, modify the scripts or database schema to suit your specific requirements.
3. Populate the tables with actual patient and medical data as needed.
4. Execute the provided select queries to retrieve information from the database as required.

## Licensing

This project is licensed under the [MIT License](LICENSE). See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions to improve the database schema, SQL scripts, or documentation are welcome. If you have suggestions, feature requests, or bug reports, please feel free to open an issue or submit a pull request.
