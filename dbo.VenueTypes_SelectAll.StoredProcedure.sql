USE [Tabi]
GO
/****** Object:  StoredProcedure [dbo].[VenueTypes_SelectAll]    Script Date: 4/25/2024 5:19:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- ==================================
--	Author: CJ Clifton
--	Create date: 04/05/2024
--	Description: Used to select all venue types
--	Code Reviewer: Blake R

--	Modified by: N/A
--	Modified date: N/A
--	Code Reviewer: N/A
--	Note: Modified to allow........
-- ===================================

CREATE proc [dbo].[VenueTypes_SelectAll]

as

/*
Execute dbo.VenueTypes_SelectAll
*/


BEGIN

		SELECT	[Id]
				,[Name]

		FROM [dbo].[VenueTypes]


END
GO
