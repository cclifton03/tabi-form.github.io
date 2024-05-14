USE [Tabi]
GO
/****** Object:  StoredProcedure [dbo].[Venues_Delete_ById]    Script Date: 4/25/2024 5:19:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- ==================================
--	Author: CJ Clifton
--	Create date: 04/04/2024
--	Description: Used to delete a venue by Id
--	Code Reviewer: Blake R

--	Modified by: N/A
--	Modified date: N/A
--	Code Reviewer: N/A
--	Note: N/A
-- ===================================

CREATE proc [dbo].[Venues_Delete_ById]
					@Id int
as

/* TEST CODE -----------------
		
		Select*
		From dbo.Venues

		Declare @Id int = 11

		Execute dbo.Venues_Delete_ById @Id

		Select*
		From dbo.Venues
*/

BEGIN

		DELETE
		FROM dbo.Venues
		Where Id = @Id;

END
GO
