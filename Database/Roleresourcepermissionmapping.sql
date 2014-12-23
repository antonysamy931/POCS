
insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Manufacturer Group' and Permission.Name='Create'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Manufacturer Group' and Permission.Name='Edit'),1,GETDATE(),1,GETDATE(),1)


insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Manufacturer Group' and Permission.Name='Read'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Manufacturer Group' and Permission.Name='Delete'),1,GETDATE(),1,GETDATE(),1)


insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Manufacturer' and Permission.Name='Create'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Manufacturer' and Permission.Name='Edit'),1,GETDATE(),1,GETDATE(),1)


insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Manufacturer' and Permission.Name='Read'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Manufacturer' and Permission.Name='Delete'),1,GETDATE(),1,GETDATE(),1)



insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Field Service Company' and Permission.Name='Create'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Field Service Company' and Permission.Name='Edit'),1,GETDATE(),1,GETDATE(),1)


insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Field Service Company' and Permission.Name='Read'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Field Service Company' and Permission.Name='Delete'),1,GETDATE(),1,GETDATE(),1)


insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Model' and Permission.Name='Create'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Model' and Permission.Name='Edit'),1,GETDATE(),1,GETDATE(),1)


insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Model' and Permission.Name='Read'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Model' and Permission.Name='Delete'),1,GETDATE(),1,GETDATE(),1)



insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Model - Custom Attributes' and Permission.Name='Create'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Model - Custom Attributes' and Permission.Name='Edit'),1,GETDATE(),1,GETDATE(),1)


insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Model - Custom Attributes' and Permission.Name='Read'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Model - Custom Attributes' and Permission.Name='Delete'),1,GETDATE(),1,GETDATE(),1)



insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Partslist' and Permission.Name='Create'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Partslist' and Permission.Name='Edit'),1,GETDATE(),1,GETDATE(),1)


insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Partslist' and Permission.Name='Read'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Partslist' and Permission.Name='Delete'),1,GETDATE(),1,GETDATE(),1)



--insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
--(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
--join Permission on ResourcePermission.PermissionID=Permission.ID
--where [Resource].Name='Partslist Section' and Permission.Name='Create'),1,GETDATE(),1,GETDATE(),1)

--insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
--(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
--join Permission on ResourcePermission.PermissionID=Permission.ID
--where [Resource].Name='Partslist Section' and Permission.Name='Edit'),1,GETDATE(),1,GETDATE(),1)


insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Partslist Section' and Permission.Name='Read'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Partslist Section' and Permission.Name='Delete'),1,GETDATE(),1,GETDATE(),1)



insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Parts - Manufacturer Attributes' and Permission.Name='Create'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Parts - Manufacturer Attributes' and Permission.Name='Edit'),1,GETDATE(),1,GETDATE(),1)


insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Parts - Manufacturer Attributes' and Permission.Name='Read'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Parts - Manufacturer Attributes' and Permission.Name='Delete'),1,GETDATE(),1,GETDATE(),1)



insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Parts - Stockist Attributes' and Permission.Name='Create'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Parts - Stockist Attributes' and Permission.Name='Edit'),1,GETDATE(),1,GETDATE(),1)


insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Parts - Stockist Attributes' and Permission.Name='Read'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Parts - Stockist Attributes' and Permission.Name='Delete'),1,GETDATE(),1,GETDATE(),1)



insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Parts - Pricing Details' and Permission.Name='Create'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Parts - Pricing Details' and Permission.Name='Edit'),1,GETDATE(),1,GETDATE(),1)


insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Parts - Pricing Details' and Permission.Name='Read'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Parts - Pricing Details' and Permission.Name='Delete'),1,GETDATE(),1,GETDATE(),1)



insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Folio' and Permission.Name='Create'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Folio' and Permission.Name='Edit'),1,GETDATE(),1,GETDATE(),1)


insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Folio' and Permission.Name='Read'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Folio' and Permission.Name='Delete'),1,GETDATE(),1,GETDATE(),1)



insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Document' and Permission.Name='Create'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Document' and Permission.Name='Edit'),1,GETDATE(),1,GETDATE(),1)


insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Document' and Permission.Name='Read'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Document' and Permission.Name='Delete'),1,GETDATE(),1,GETDATE(),1)



insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='User' and Permission.Name='Create'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='User' and Permission.Name='Edit'),1,GETDATE(),1,GETDATE(),1)


insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='User' and Permission.Name='Read'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='User' and Permission.Name='Delete'),1,GETDATE(),1,GETDATE(),1)



insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Job' and Permission.Name='Create'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Job' and Permission.Name='Edit'),1,GETDATE(),1,GETDATE(),1)


insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Job' and Permission.Name='Read'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Job' and Permission.Name='Delete'),1,GETDATE(),1,GETDATE(),1)



insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Parts - FSC Attributes' and Permission.Name='Create'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Parts - FSC Attributes' and Permission.Name='Edit'),1,GETDATE(),1,GETDATE(),1)


insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Parts - FSC Attributes' and Permission.Name='Read'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Parts - FSC Attributes' and Permission.Name='Delete'),1,GETDATE(),1,GETDATE(),1)



insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Trade Counter' and Permission.Name='Create'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Trade Counter' and Permission.Name='Edit'),1,GETDATE(),1,GETDATE(),1)


insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Trade Counter' and Permission.Name='Read'),1,GETDATE(),1,GETDATE(),1)

insert into RoleResourcePermission values((select [Role].ID from [Role] where [Role].RoleName='Infomill Super Admin'),
(select ResourcePermission.ID from ResourcePermission join [Resource] on ResourcePermission.ResourceID=[Resource] .ID
join Permission on ResourcePermission.PermissionID=Permission.ID
where [Resource].Name='Trade Counter' and Permission.Name='Delete'),1,GETDATE(),1,GETDATE(),1)

