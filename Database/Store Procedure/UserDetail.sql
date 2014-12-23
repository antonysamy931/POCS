CREATE PROCEDURE [dbo].[UserDetail]
(
	@userid int
)
AS
BEGIN
	
	SELECT 
		U.ID AS UserId ,U.FirstName,U.Email,U.LastName,U.Username,
		UR.RoleID,
		ROL.RoleName,
		--RRP.ResourcePermissionID,
		RP.ResourceID,
		R.Name AS ResourceName,
		P.Name AS PermissionName 
	from [User] AS U JOIN UserRole AS UR
	ON U.ID=UR.ID JOIN RoleResourcePermission AS RRP
	ON UR.RoleID=RRP.RoleID JOIN ResourcePermission AS RP
	ON RRP.ResourcePermissionID=RP.ID JOIN [Resource] AS R
	ON RP.ResourceID=R.ID JOIN [Permission]AS P
	ON RP.PermissionID=P.ID JOIN [Role]AS ROL
	ON UR.RoleID=ROL.ID
	WHERE U.RecordStatus=1 AND UR.RecordStatus=1
	AND ROL.RecordStatus=1 AND RRP.RecordStatus=1
	AND RP.RecordStatus=1 AND R.RecordStatus=1
	AND P.RecordStatus=1 AND U.ID=@userid
END