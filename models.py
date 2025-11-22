"""
SQLAlchemy models for the Online Caregivers Platform database.
All models correspond to existing tables in the database.
"""
from sqlalchemy import Column, Integer, String, Date, Time, Numeric, ForeignKey, Text
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship

Base = declarative_base()


class User(Base):
    """USER table model"""
    __tablename__ = 'user'
    
    user_id = Column(Integer, primary_key=True)
    email = Column(String(255), nullable=False, unique=True)
    given_name = Column(String(100), nullable=False)
    surname = Column(String(100), nullable=False)
    city = Column(String(100))
    phone_number = Column(String(20))
    profile_description = Column(Text)
    password = Column(String(255), nullable=False)
    
    # Relationships
    caregiver = relationship("Caregiver", back_populates="user", uselist=False, cascade="all, delete-orphan")
    member = relationship("Member", back_populates="user", uselist=False, cascade="all, delete-orphan")


class Caregiver(Base):
    """CAREGIVER table model"""
    __tablename__ = 'caregiver'
    
    caregiver_user_id = Column(Integer, ForeignKey('user.user_id', ondelete='CASCADE'), primary_key=True)
    photo = Column(String(255))
    gender = Column(String(20))
    caregiving_type = Column(String(100))
    hourly_rate = Column(Numeric(10, 2))
    
    # Relationships
    user = relationship("User", back_populates="caregiver")
    job_applications = relationship("JobApplication", back_populates="caregiver", cascade="all, delete-orphan")
    appointments = relationship("Appointment", back_populates="caregiver", cascade="all, delete-orphan")


class Member(Base):
    """MEMBER table model"""
    __tablename__ = 'member'
    
    member_user_id = Column(Integer, ForeignKey('user.user_id', ondelete='CASCADE'), primary_key=True)
    house_rules = Column(Text)
    dependent_description = Column(Text)
    
    # Relationships
    user = relationship("User", back_populates="member")
    addresses = relationship("Address", back_populates="member", cascade="all, delete-orphan")
    jobs = relationship("Job", back_populates="member", cascade="all, delete-orphan")
    appointments = relationship("Appointment", back_populates="member", cascade="all, delete-orphan")


class Address(Base):
    """ADDRESS table model"""
    __tablename__ = 'address'
    
    member_user_id = Column(Integer, ForeignKey('member.member_user_id', ondelete='CASCADE'), primary_key=True)
    house_number = Column(String(50))
    street = Column(String(255))
    town = Column(String(100))
    
    # Relationships
    member = relationship("Member", back_populates="addresses")


class Job(Base):
    """JOB table model"""
    __tablename__ = 'job'
    
    job_id = Column(Integer, primary_key=True)
    member_user_id = Column(Integer, ForeignKey('member.member_user_id', ondelete='CASCADE'), nullable=False)
    required_caregiving_type = Column(String(100))
    other_requirements = Column(Text)
    date_posted = Column(Date)
    
    # Relationships
    member = relationship("Member", back_populates="jobs")
    job_applications = relationship("JobApplication", back_populates="job", cascade="all, delete-orphan")


class JobApplication(Base):
    """JOB_APPLICATION table model"""
    __tablename__ = 'job_application'
    
    caregiver_user_id = Column(Integer, ForeignKey('caregiver.caregiver_user_id', ondelete='CASCADE'), primary_key=True)
    job_id = Column(Integer, ForeignKey('job.job_id', ondelete='CASCADE'), primary_key=True)
    date_applied = Column(Date)
    
    # Relationships
    caregiver = relationship("Caregiver", back_populates="job_applications")
    job = relationship("Job", back_populates="job_applications")


class Appointment(Base):
    """APPOINTMENT table model"""
    __tablename__ = 'appointment'
    
    appointment_id = Column(Integer, primary_key=True)
    caregiver_user_id = Column(Integer, ForeignKey('caregiver.caregiver_user_id', ondelete='CASCADE'), nullable=False)
    member_user_id = Column(Integer, ForeignKey('member.member_user_id', ondelete='CASCADE'), nullable=False)
    appointment_date = Column(Date)
    appointment_time = Column(Time)
    work_hours = Column(Numeric(5, 2))
    status = Column(String(50))  # e.g., 'pending', 'accepted', 'declined'
    
    # Relationships
    caregiver = relationship("Caregiver", back_populates="appointments")
    member = relationship("Member", back_populates="appointments")


