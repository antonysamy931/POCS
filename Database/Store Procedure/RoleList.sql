
CREATE PROCEDURE [dbo].[RoleList]
AS
BEGIN
	SELECT R.ID , R.RoleName FROM [Role] AS R WHERE R.RecordStatus=1
END