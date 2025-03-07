# ITI Examination System Database

## Project Overview

The ITI Examination System is a comprehensive database designed to manage exams, questions, student data, and instructor information. This system helps organize and streamline examination processes, including student-course enrollments, exam questions, and score tracking.

## Development Process

Our team followed an organized and methodical approach to develop this project, which included the following steps using [Miro](https://miro.com/welcomeonboard/UVI3MXRCTUVjdFl0RDdpUEg0d0pIVitaSFFpYmpkczh3bDlEMW5WUzY0QUszY3lvWGdwSEJ6ZXp1SmVJRzRvWThVblZTYVNJRHFEQ1p3NVFKTTlyR2d0N2ZoYW9VSU0xM05QbnREblJ6RkF6K0c2dGQvNFY2Uk9HNnNIUUxIdWdnbHpza3F6REdEcmNpNEFOMmJXWXBBPT0hdjE=?share_link_id=118538550579):

1. **Requirement Collection**: Collaborated on Miro to gather and refine project requirements.
2. **Entity-Relationship Diagram (ERD)**: Designed the ERD to visualize database relationships.
3. **Mapping**: Defined the relationships between entities and attributes.
4. **Table Creation**: Built tables with appropriate constraints and relationships.
5. **Data Insertion**: Populated tables with sample data for testing.
6. **Stored Procedures & Triggers**: Implemented procedures and triggers for advanced functionality and automation.

## Database Structure

The database consists of the following tables:

- **Instructor**: Contains instructor details (ID, name, password, salary, email, and specialization).
- **ins_phone**: Stores instructor phone numbers.
- **Course**: Lists courses along with their duration and assigned instructor.
- **Branch**: Contains branch information (ID, name, city, and zip code).
- **br_phone**: Stores branch phone numbers.
- **Track**: Represents educational tracks, including start and end dates.
- **Student**: Holds student data (ID, name, gender, address, age, email, phone, and track ID).
- **Exam**: Manages exams with start time, duration, total marks, and associated course and student IDs.
- **Questions**: Stores exam questions, their answers, marks, and question type (MCQ/True-False).
- **Choice**: Contains choices for MCQs, indicating the correct answers.
- **Student_Course**: Links students to the courses they are enrolled in.
- **Answers**: Tracks student answers for exams, along with scores and timestamps.
- **Track_Branch**: Links tracks to their respective branches.
- **Track_Course**: Connects courses to tracks.
- **Ins_Track**: Maps instructors to the tracks they are involved in.
- **Exam_Question**: Associates questions with specific exams.

## How to Run

1. Clone this repository:
   ```bash
   https://github.com/EmanElsayed2002/Database-Project.git
<p align="center">
  <strong>Made by:</strong><br>
  Eman Elsayed - Eman Sameh - Amira Gaber - Omar Mohamed - Michael - Saifeldin Ahmos -  Ahmed Tamer
</p>
