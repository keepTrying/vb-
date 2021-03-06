insert into dbo.系统管理_可用操作信息表 (操作名,上级操作名,业务名,部件名,类名,业务顺序)
values('收费管理_号段设置','','收费管理','收费界面部件','Cls界面管理',3)
go
insert into dbo.系统管理_可用操作信息表 (操作名,上级操作名,业务名,部件名,类名,业务顺序)
values('收费管理_财务监管','','收费管理','收费界面部件','Cls界面管理',4)
go


CREATE TABLE [收费管理_收费员号段信息表] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[用户编号] [varchar] (10) COLLATE Chinese_PRC_BIN NOT NULL ,
	[起号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL ,
	[止号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL ,
	[是否用完] [varchar] (10) COLLATE Chinese_PRC_BIN NULL ,
	CONSTRAINT [PK_收费管理_收费员号段信息表] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
) ON [PRIMARY]
GO


