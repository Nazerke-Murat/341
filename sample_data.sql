
INSERT INTO "user" (email, given_name, surname, city, phone_number, profile_description, password) VALUES
('alice.johnson@email.com', 'Alice', 'Johnson', 'Astana', '+77011234567', 'Experienced caregiver with 5 years in elderly care. Certified nursing assistant.', 'pass123'),
('bob.smith@email.com', 'Bob', 'Smith', 'Almaty', '+77017654321', 'Friendly babysitter who loves children. Education degree from NU.', 'pass123'),
('carol.davis@email.com', 'Carol', 'Davis', 'Astana', '+77012345678', 'Professional elderly caregiver with CPR certification.', 'pass123'),
('david.wilson@email.com', 'David', 'Wilson', 'Almaty', '+77013456789', 'Creative playmate for children. Art and music teacher.', 'pass123'),
('emma.brown@email.com', 'Emma', 'Brown', 'Astana', '+77014567890', 'Certified babysitter with first aid training.', 'pass123'),
('frank.miller@email.com', 'Frank', 'Miller', 'Almaty', '+77015678901', 'Senior care specialist with 8 years experience.', 'pass123'),
('grace.lee@email.com', 'Grace', 'Lee', 'Astana', '+77016789012', 'Child development expert. Masters in early childhood education.', 'pass123'),
('henry.taylor@email.com', 'Henry', 'Taylor', 'Almaty', '+77017890123', 'Elderly companion specializing in dementia care.', 'pass123'),
('isabella.moore@email.com', 'Isabella', 'Moore', 'Astana', '+77018901234', 'Babysitter with first aid training and art therapy skills.', 'pass123'),
('jack.anderson@email.com', 'Jack', 'Anderson', 'Almaty', '+77019012345', 'Playmate and tutor for children with special needs.', 'pass123'),
('arman.armanov@email.com', 'Arman', 'Armanov', 'Astana', '+77011111111', 'Family man looking for caregiver for elderly father.', 'pass123'),
('amina.aminova@email.com', 'Amina', 'Aminova', 'Astana', '+77012222222', 'Mother of two children seeking reliable babysitter.', 'pass123'),
('kairat.nurzhanov@email.com', 'Kairat', 'Nurzhanov', 'Almaty', '+77013333333', 'Son needs elderly care for father with mobility issues.', 'pass123'),
('madina.abdullayeva@email.com', 'Madina', 'Abdullayeva', 'Astana', '+77014444444', 'Working mother seeking after-school care for daughter.', 'pass123'),
('nurlan.kazakhov@email.com', 'Nurlan', 'Kazakhov', 'Almaty', '+77015555555', 'Need playmate for autistic child with structured activities.', 'pass123'),
('sara.novak@email.com', 'Sara', 'Novak', 'Astana', '+77016666666', 'Looking for elderly care for mother.', 'pass123'),
('tom.white@email.com', 'Tom', 'White', 'Almaty', '+77017777777', 'Need babysitter for twins.', 'pass123'),
('lisa.green@email.com', 'Lisa', 'Green', 'Astana', '+77018888888', 'Seeking playmate for daughter.', 'pass123'),
('mike.black@email.com', 'Mike', 'Black', 'Almaty', '+77019999999', 'Elderly care needed for father.', 'pass123'),
('anna.gray@email.com', 'Anna', 'Gray', 'Astana', '+77011010101', 'Babysitter for after-school care.', 'pass123');


INSERT INTO caregiver (caregiver_user_id, photo, gender, caregiving_type, hourly_rate) VALUES
(1, 'alice.jpg', 'F', 'Elderly Care', 15.00),
(2, 'bob.jpg', 'M', 'Babysitter', 12.00),
(3, 'carol.jpg', 'F', 'Elderly Care', 18.00),
(4, 'david.jpg', 'M', 'Playmate', 10.00),
(5, 'emma.jpg', 'F', 'Babysitter', 4.00),
(6, 'frank.jpg', 'M', 'Elderly Care', 20.00),
(7, 'grace.jpg', 'F', 'Babysitter', 6.00),
(8, 'henry.jpg', 'M', 'Elderly Care', 7.00),
(9, 'isabella.jpg', 'F', 'Babysitter', 13.00),
(10, 'jack.jpg', 'M', 'Playmate', 11.00);

INSERT INTO member (member_user_id, house_rules, dependent_description) VALUES
(11, 'No smoking, No pets, Please remove shoes', 'My 75-year old father needs daily assistance with mobility and medication'),
(12, 'Vegetarian household, No loud noises after 9 PM', 'I have two children: 3-year old girl and 6-year old boy who loves painting'),
(13, 'No pets rule, Must be patient and soft-spoken', 'My 80-year old father has dementia and needs constant supervision'),
(14, 'Must have first aid certification, No smoking', 'My 4-year old daughter is very active and creative'),
(15, 'Experience with special needs children required', 'My 7-year old son is autistic and responds well to structured activities'),
(16, 'No pets, No smoking', 'My 78-year old mother needs assistance'),
(17, 'Must be CPR certified', 'I have twin 5-year old boys'),
(18, 'Creative activities preferred', 'My 6-year old daughter loves art'),
(19, 'Experience with dementia required', 'My 82-year old father has dementia'),
(20, 'First aid certification required', 'My 5-year old son needs after-school care');


INSERT INTO address (member_user_id, house_number, street, town) VALUES
(11, '15', 'Kabanbay Batyr', 'Astana'),
(12, '23', 'Turan Avenue', 'Astana'),
(13, '7', 'Abay Street', 'Almaty'),
(14, '42', 'Kabanbay Batyr', 'Astana'),
(15, '56', 'Gogol Street', 'Almaty'),
(16, '88', 'Nazarbayev Avenue', 'Astana'),
(17, '99', 'Abay Street', 'Almaty'),
(18, '11', 'Turan Avenue', 'Astana'),
(19, '22', 'Gogol Street', 'Almaty'),
(20, '33', 'Kabanbay Batyr', 'Astana');


INSERT INTO job (member_user_id, required_caregiving_type, person_age, preferred_time_start, preferred_time_end, service_frequency, other_requirements, date_posted) VALUES
(11, 'Elderly Care', 75, '09:00', '13:00', 'daily', 'Must be experienced with dementia patients, soft-spoken, available weekends', '2025-11-01'),
(11, 'Elderly Care', 75, '10:00', '14:00', 'weekly', 'Medication management, light housekeeping, companion for walks', '2025-11-07'),
(12, 'Babysitter', 5, '14:00', '18:00', 'weekends', 'CPR certified, creative, can help with homework, English speaking preferred', '2025-11-02'),
(12, 'Playmate', 6, '15:00', '17:00', 'daily', 'Creative activities, soft-spoken, homework assistance', '2025-11-06'),
(12, 'Babysitter', 3, '16:00', '20:00', 'daily', 'Evening care for two children, meal preparation', '2025-11-12'),
(13, 'Elderly Care', 80, '08:00', '12:00', 'weekly', 'Patience required, experience with mobility issues, no pets policy', '2025-11-03'),
(14, 'Babysitter', 4, '16:00', '20:00', 'daily', 'First aid certified, energetic, art and music skills appreciated', '2025-11-04'),
(15, 'Playmate', 7, '10:00', '14:00', 'weekly', 'Special needs experience,soft-spoken，structured activity planning, gentle approach', '2025-11-05'),
(16, 'Elderly Care', 78, '11:00', '15:00', 'daily', 'Companion care,soft-spoken，medication reminders, light housekeeping', '2025-11-08'),
(17, 'Babysitter', 5, '13:00', '17:00', 'weekends', 'Twin care, CPR certified, structured activities', '2025-11-09'),
(18, 'Playmate', 6, '14:00', '18:00', 'weekly', 'Art activities, creative play, soft-spoken，homework help', '2025-11-10'),
(19, 'Elderly Care', 82, '07:00', '15:00', 'daily', 'Overnight care possible, must be reliable and punctual', '2025-11-11'),
(20, 'Babysitter', 5, '15:00', '19:00', 'daily', 'After-school care, homework supervision, snack preparation', '2025-11-13');


INSERT INTO job_application (caregiver_user_id, job_id, date_applied) VALUES
(1, 1, '2025-11-11'),
(3, 1, '2025-11-11'),
(6, 1, '2025-11-12'),
(2, 2, '2025-11-12'),
(5, 2, '2025-11-13'),
(7, 2, '2025-11-13'),
(4, 4, '2025-11-15'),
(7, 4, '2025-11-15'),
(10, 5, '2025-11-16'),
(4, 5, '2025-11-16'),
(9, 6, '2025-11-17'),
(10, 6, '2025-11-17'),
(8, 3, '2025-11-14'),
(1, 3, '2025-11-14'),
(3, 7, '2025-11-18'),
(2, 8, '2025-11-19'),
(5, 9, '2025-11-20'),
(9, 10, '2025-11-21'),
(7, 11, '2025-11-22'),
(2, 12, '2025-11-23');

INSERT INTO appointment (caregiver_user_id, member_user_id, appointment_date, appointment_time, work_hours, status) VALUES
(1, 11, '2025-11-20', '09:00', 4.00, 'accepted'),
(2, 12, '2025-11-21', '14:00', 3.50, 'accepted'),
(5, 14, '2025-11-23', '16:00', 4.00, 'accepted'),
(7, 12, '2025-11-24', '08:00', 6.00, 'accepted'),
(8, 13, '2025-11-26', '11:00', 4.50, 'accepted'),
(10, 15, '2025-11-28', '09:00', 4.00, 'accepted'),
(4, 15, '2025-11-29', '17:00', 3.00, 'accepted'),
(1, 16, '2025-11-30', '10:00', 4.00, 'accepted'),
(3, 19, '2025-12-01', '08:00', 5.50, 'accepted'),
(6, 16, '2025-12-02', '14:00', 3.00, 'accepted'),
(2, 17, '2025-12-03', '13:00', 2.75, 'accepted'),
(9, 18, '2025-12-04', '14:00', 3.25, 'accepted'),
(5, 20, '2025-12-05', '15:00', 4.75, 'accepted'),
(3, 13, '2025-11-22', '10:00', 5.00, 'pending'),
(9, 14, '2025-11-27', '15:00', 5.00, 'pending'),
(6, 11, '2025-11-25', '13:00', 3.00, 'declined'),
(4, 19, '2025-12-06', '09:00', 2.50, 'pending');
