-- insert a new instructor
create procedure addinstructor
    @ins_name varchar(100),
    @salary money,
    @ins_mail varchar(100),
    @specialization varchar(100)
as
begin
    insert into instructor (ins_name, salary, ins_mail, specialization)
    values (@ins_name, @salary, @ins_mail, @specialization);
end;

-- get all instructors
create procedure getallinstructors
as
begin
    select * from instructor;
end;

-- update instructor salary by id
create procedure updateinstructorsalary
    @ins_id int,
    @newsalary money
as
begin
    update instructor
    set salary = @newsalary
    where ins_id = @ins_id;
end;

-- update instructor details by id
create procedure updateinstructor
    @ins_id int,
    @ins_name varchar(100),
    @salary decimal(10, 2),
    @ins_mail varchar(100),
    @specialization varchar(100)
as
begin
    update instructor
    set ins_name = @ins_name, 
        salary = @salary, 
        ins_mail = @ins_mail, 
        specialization = @specialization
    where ins_id = @ins_id;
end;

-- delete an instructor by id
create procedure deleteinstructor
    @ins_id int
as
begin
    delete from instructor where ins_id = @ins_id;
end;

-- get instructors by specialization
create procedure getinstructorsbyspecialization
    @specialization varchar(100)
as
begin
    select * from instructor where specialization = @specialization;
end;

-- get instructor by id
create procedure getinstructorbyid
    @ins_id int
as
begin
    select * from instructor where ins_id = @ins_id;
end;


CREATE PROCEDURE ViewInstructorCourses
    @InstructorID INT
AS
BEGIN
    SELECT C.crs_name AS CourseName, C.duration
    FROM course C
    JOIN Instructor I ON C.Ins_ID = I.Ins_id
    WHERE I.Ins_id = @InstructorID;
END;


CREATE PROCEDURE InstructorLogin
    @Ins_Username VARCHAR(50),
    @Ins_Password VARCHAR(50)
AS
BEGIN
    IF EXISTS (
        SELECT 1 FROM Instructor
        WHERE ins_name = @Ins_Username AND ins_password = @Ins_Password
    )
    BEGIN
        PRINT 'Login successful!';
    END
    ELSE
    BEGIN
        PRINT 'Invalid username or password.';
    END
END;
