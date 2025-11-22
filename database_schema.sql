-- database_schema.sql
DROP TABLE IF EXISTS message, appointment, job_application, job, address, member, caregiver, "user";

-- Create USER table
CREATE TABLE "user" (
    user_id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    given_name VARCHAR(100) NOT NULL,
    surname VARCHAR(100) NOT NULL,
    city VARCHAR(100),
    phone_number VARCHAR(50),
    profile_description TEXT,
    password VARCHAR(255) NOT NULL
);

-- Create CAREGIVER table
CREATE TABLE caregiver (
    caregiver_user_id INTEGER PRIMARY KEY,
    photo TEXT,
    gender CHAR(1) CHECK (gender IN ('M', 'F', 'O')),
    caregiving_type VARCHAR(50) NOT NULL CHECK (caregiving_type IN ('Babysitter', 'Elderly Care', 'Playmate')),
    hourly_rate DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (caregiver_user_id) REFERENCES "user"(user_id) ON DELETE CASCADE
);

-- Create MEMBER table
CREATE TABLE member (
    member_user_id INTEGER PRIMARY KEY,
    house_rules TEXT,
    dependent_description TEXT,
    FOREIGN KEY (member_user_id) REFERENCES "user"(user_id) ON DELETE CASCADE
);

-- Create ADDRESS table
CREATE TABLE address (
    member_user_id INTEGER PRIMARY KEY,
    house_number VARCHAR(20),
    street VARCHAR(255),
    town VARCHAR(100),
    FOREIGN KEY (member_user_id) REFERENCES member(member_user_id) ON DELETE CASCADE
);

-- Enhanced JOB table
CREATE TABLE job (
    job_id SERIAL PRIMARY KEY,
    member_user_id INTEGER NOT NULL,
    required_caregiving_type VARCHAR(50) NOT NULL CHECK (required_caregiving_type IN ('Babysitter', 'Elderly Care', 'Playmate')),
    person_age INTEGER,
    preferred_time_start TIME,
    preferred_time_end TIME,
    service_frequency VARCHAR(50),
    other_requirements TEXT,
    date_posted DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (member_user_id) REFERENCES member(member_user_id) ON DELETE CASCADE
);

-- Create JOB_APPLICATION table
CREATE TABLE job_application (
    caregiver_user_id INTEGER,
    job_id INTEGER,
    date_applied DATE DEFAULT CURRENT_DATE,
    PRIMARY KEY (caregiver_user_id, job_id),
    FOREIGN KEY (caregiver_user_id) REFERENCES caregiver(caregiver_user_id) ON DELETE CASCADE,
    FOREIGN KEY (job_id) REFERENCES job(job_id) ON DELETE CASCADE
);

-- Create APPOINTMENT table
CREATE TABLE appointment (
    appointment_id SERIAL PRIMARY KEY,
    caregiver_user_id INTEGER NOT NULL,
    member_user_id INTEGER NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    work_hours NUMERIC(5, 2) NOT NULL CHECK (work_hours > 0),
    status VARCHAR(20) DEFAULT 'pending' CHECK (status IN ('pending', 'accepted', 'declined')),
    FOREIGN KEY (caregiver_user_id) REFERENCES caregiver(caregiver_user_id),
    FOREIGN KEY (member_user_id) REFERENCES member(member_user_id)
);
