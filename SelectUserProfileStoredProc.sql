USE [Interrogas]
GO
/****** Object:  StoredProcedure [dbo].[Users_Select_UserProfile]    Script Date: 05/13/22 9:51:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Roel Foronda
-- Create date: 04/08/22
-- Description: Users_Select_UserProfile returns the current user's first name, last name, and avatar url. 
--				It the returns the current user's profile data, based on Id, provided that
--				the corresponding user's isConfirmed column is true and status type is Active.
				
-- Code Reviewer:

-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================

ALTER PROC [dbo].[Users_Select_UserProfile]
					@Id int
AS

/* ---- Test code --------------------------------------------


		Declare @Id int = 111
		Execute dbo.Users_Select_UserProfile
					@Id


*/ ------------------------------------------------------------

BEGIN

		SELECT [Id]
			  ,[FirstName]
			  ,[LastName]
			  ,[AvatarUrl]

		FROM dbo.Users

		Where Id = @Id



END