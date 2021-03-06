USE [Interrogas]
GO
/****** Object:  StoredProcedure [dbo].[Users_Update_UserPass]    Script Date: 05/13/22 9:50:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Roel Foronda
-- Create date: 05/03/22
-- Description: Users_Update_UserPass allows the current user to update password. 
--								
-- Code Reviewer: Ronall Sunhip

-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================

ALTER PROC [dbo].[Users_Update_UserPass]

					@Password nvarchar(MAX)
					,@Id int
AS

/*--------------------------- Test Code -------------------------------

		DECLARE      @Password nvarchar(MAX) = 'someotherpasswordhashhere'
					,@Id int = 31

				EXECUTE dbo.Users_Update_UserPass
										@Password
										,@Id
		Select * from 
		[dbo].[Users]
		WHERE Id = 31
*/---------------------------------------------------------------------


BEGIN

DECLARE @now datetime2(7) = GETUTCDATE()

UPDATE  [dbo].[Users]

SET	    [Password] = @Password
	   ,[DateModified] = @now

WHERE   [Id] = @Id
				 
END