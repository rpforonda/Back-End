USE [Interrogas]
GO
/****** Object:  StoredProcedure [dbo].[Users_Update_UserProfile]    Script Date: 05/13/22 9:52:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Roel Foronda
-- Create date: 04/19/22
-- Description: Users_Update_UserProfile allows the current user to alter first name, last name, and avatar url. 
--								
-- Code Reviewer:

-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer: Vannara Thong
-- Note:
-- =============================================

ALTER PROC [dbo].[Users_Update_UserProfile]
					 @FirstName nvarchar(100)
					,@LastName nvarchar(100)
					,@AvatarUrl nvarchar(MAX)
					,@Id int
AS

/*--------------------------- Test Code -------------------------------

		DECLARE      @FirstName nvarchar(100) = 'Walt'
					,@LastName nvarchar(100) = 'White'
					,@AvatarUrl nvarchar(MAX) = 'https://static.wikia.nocookie.net/breakingbad/images/c/c0/WaltS5.jpg/revision/latest?cb=20120620012205'
					,@Id int = 31

				EXECUTE dbo.Users_Update_UserProfile
										 @FirstName
										,@LastName
										,@AvatarUrl
										,@Id
		Select * from 
		[dbo].[Users]
		WHERE Id = 150
*/---------------------------------------------------------------------


BEGIN

			DECLARE @now datetime2(7) = GETUTCDATE()

			UPDATE [dbo].[Users]

				SET	    [FirstName] = @FirstName
					   ,[LastName] = @LastName
					   ,[AvatarUrl] = @AvatarUrl
					   ,[DateModified] = @now

					   WHERE [Id] = @Id
				 
END