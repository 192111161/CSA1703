% Define the relationships between students, teachers, subjects, and codes.

% Students, represented as student(ID, Name).
student(1, 'Alice').
student(2, 'Bob').
student(3, 'Charlie').
student(4, 'David').
student(5, 'Eve').

% Teachers, represented as teacher(ID, Name).
teacher(101, 'Mr. Smith').
teacher(102, 'Mrs. Johnson').
teacher(103, 'Dr. Brown').

% Subjects, represented as subject(SubjectCode, SubjectName).
subject(math101, 'Mathematics 101').
subject(eng101, 'English 101').
subject(hist101, 'History 101').
subject(chem101, 'Chemistry 101').

% Define which student is taught by which teacher for a subject.
teaches(1, 101, math101).
teaches(2, 101, math101).
teaches(3, 102, eng101).
teaches(4, 103, hist101).
teaches(5, 102, chem101).

% Query to find which teacher teaches a specific subject to a student.
teaches_subject(StudentID, TeacherID, SubjectCode) :-
    teaches(StudentID, TeacherID, SubjectCode).

% Example queries:
% 1. Find the teacher who teaches Mathematics 101 to Alice.
% ?- teaches_subject(1, TeacherID, math101).
%
% 2. Find the teacher who teaches Chemistry 101 to Bob.
% ?- teaches_subject(2, TeacherID, chem101).
%
% 3. Find the subject that Dr. Brown teaches to David.
% ?- teaches_subject(4, 103, SubjectCode).
