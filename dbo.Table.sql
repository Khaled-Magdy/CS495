CREATE TABLE [dbo].[Table] (
    [student_FirstName]   NVARCHAR (50) NOT NULL,
    [student_ID]          NVARCHAR (50) NOT NULL,
    [student_Gender]      NVARCHAR (1)  NULL,
    [student_Birthdate]   DATETIME      NOT NULL,
    [student_Email]       NVARCHAR (50) NOT NULL,
    [student_phonenumber] NVARCHAR (50) NOT NULL,
    [student_Address]     NVARCHAR (50) NOT NULL,
    [student_Password]    NVARCHAR (50) NOT NULL,
    [student_Nationality] NVARCHAR (50) NOT NULL,
    [student_Faculty]     NCHAR(10)           NOT NULL,
    [student_Bus]         NVARCHAR (3)  NULL,
    [student_LastName]    NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED ([student_ID] ASC)
);

