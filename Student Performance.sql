# Create student performance table

CREATE TABLE student_performance (
    StudentID INT PRIMARY KEY,
    Age TINYINT,
    Gender TINYINT,                
    Ethnicity TINYINT,            
    Parental_Education TINYINT,    
    Study_Time_Weekly DECIMAL(5,2), 
    Absences INT,
    Tutoring TINYINT,             
    Parental_Support TINYINT,     
    Extracurricular TINYINT,     
    Sports TINYINT,              
    Music TINYINT,              
    Volunteering TINYINT,         
    GPA DECIMAL(4,2),             
    Grade_Class TINYINT            
);


# The Gender Distribution of Total Students
SELECT Gender, COUNT(*) AS total_students
FROM student_performance
GROUP BY Gender;

# The Impact of Absenteeism on Students’ GPA
SELECT Absences, ROUND(AVG(gpa), 2) AS average_gpa
FROM student_performance
GROUP BY Absences
ORDER BY Absences;


# How Participation in Sports Affects Students Academic Performance
SELECT Sports, ROUND(AVG(gpa), 2) AS average_gpa
FROM student_performance
GROUP BY Sports;


# The Relationship Between Music Participation and GPA
SELECT Music, ROUND(AVG(gpa), 2) AS average_gpa
FROM student_performance
GROUP BY Music;


# Age Trends Across Different Grade Classifications
SELECT Age, Grade_Class, COUNT(*) AS total_students
FROM student_performance
GROUP BY Age, Grade_Class
ORDER BY Age, Grade_Class;


# Parental Support on Student Achievement
SELECT Parental_Support, Grade_Class, COUNT(*) AS total_students
FROM student_performance
GROUP BY Parental_Support, Grade_Class
ORDER BY Parental_Support, Grade_Class;


# GPA Patterns and Distribution Across Grade Class Levels
SELECT Grade_Class, ROUND(AVG(gpa), 2) AS average_gpa
FROM student_performance
GROUP BY Grade_Class
ORDER BY Grade_Class;
