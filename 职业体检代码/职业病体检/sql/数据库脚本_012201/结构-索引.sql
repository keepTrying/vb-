
ALTER TABLE [dbo].[系统管理_员工基本信息表]
      ADD [是否删除] [tinyint] default 0
GO
update 系统管理_员工基本信息表 set 是否删除=0
GO

--alter table 体检管理_体检医师项目设置表 alter column 体检项目 varchar(6)
--go
--  
-- Script to Create dbo.职业病体检_业务设置信息表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_业务设置信息表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_业务设置信息表] (
   [设置项目] [varchar] (50) COLLATE Chinese_PRC_BIN NOT NULL,
   [设置值] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [枚举来源] [varchar] (100) COLLATE Chinese_PRC_BIN NULL,
   [说明] [varchar] (50) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_业务设置信息表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_业务设置信息表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_个人生活史表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_个人生活史表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_个人生活史表] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [初潮] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [周期] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [经期] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [末次月经] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [停经年龄] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [是否结婚] [varchar] (10) COLLATE Chinese_PRC_BIN NULL,
   [结婚日期] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [配偶接触放射] [varchar] (100) COLLATE Chinese_PRC_BIN NULL,
   [配偶职业] [varchar] (30) COLLATE Chinese_PRC_BIN NULL,
   [配偶健康状况] [varchar] (30) COLLATE Chinese_PRC_BIN NULL,
   [孕次] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [活产] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [早产] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [死产] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [自然流产] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [畸胎] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [多胎] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [异位妊娠] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [不孕不育原因] [varchar] (100) COLLATE Chinese_PRC_BIN NULL,
   [现有子女数目] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [子女健康状况] [varchar] (50) COLLATE Chinese_PRC_BIN NULL,
   [过敏史] [varchar] (100) COLLATE Chinese_PRC_BIN NULL,
   [吸烟程度] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [饮酒程度] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [烟龄] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [酒龄] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [戒烟时长] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [家族史] [varchar] (200) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_个人生活史表] ADD CONSTRAINT [PK_职业病体检_个人生活史表] PRIMARY KEY CLUSTERED ([系统编号])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_个人生活史表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_个人生活史表 Table'
END
GO

alter table dbo.职业病体检_个人生活史表
	add 现有男孩 varchar(20) null
alter table dbo.职业病体检_个人生活史表
	add 现有女孩 varchar(20) null
alter table dbo.职业病体检_个人生活史表
	add 出生日期 datetime null
alter table dbo.职业病体检_个人生活史表
	add 吸烟量 varchar(20) null
alter table dbo.职业病体检_个人生活史表
	add 饮酒量 varchar(20) null
alter table dbo.职业病体检_个人生活史表
	add 活产男 varchar(20) null
alter table dbo.职业病体检_个人生活史表
	add 活产女 varchar(20) null
alter table dbo.职业病体检_个人生活史表
	add 出生地 varchar(100) null
alter table dbo.职业病体检_个人生活史表
	add 异常胎 varchar(20) null
alter table dbo.职业病体检_个人生活史表
	add 生活更多 varchar(500) null
alter table dbo.职业病体检_个人生活史表
	add 其他 varchar(500) null
	



--  
-- Script to Create dbo.职业病体检_体检人员图片结果表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检人员图片结果表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_体检人员图片结果表] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [项目编号] [varchar] (10) COLLATE Chinese_PRC_BIN NOT NULL,
   [图片] [image] NOT NULL,
   [填写时间] [datetime] NOT NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   CREATE INDEX [IX_职业病体检_体检人员图片结果表] ON [dbo].[职业病体检_体检人员图片结果表] ([系统编号])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检人员图片结果表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检人员图片结果表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_体检人员基本信息表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检人员基本信息表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_体检人员基本信息表] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [公民身份号码] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [姓名] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [性别] [varchar] (4) COLLATE Chinese_PRC_BIN NULL,
   [出生日期] [datetime] NULL,
   [出生地] [varchar] (100) COLLATE Chinese_PRC_BIN NULL,
   [年龄] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [单位申请编号] [varchar] (100) COLLATE Chinese_PRC_BIN NULL,
   [单位名称] [varchar] (100) COLLATE Chinese_PRC_BIN NULL,
   [建档日期] [datetime] NULL,
   [危害因素] [varchar] (40) COLLATE Chinese_PRC_BIN NULL,
   [职业分类] [varchar] (40) COLLATE Chinese_PRC_BIN NULL,
   [照射源] [varchar] (40) COLLATE Chinese_PRC_BIN NULL,
   [现工种] [varchar] (40) COLLATE Chinese_PRC_BIN NULL,
   [职务或职称] [varchar] (40) COLLATE Chinese_PRC_BIN NULL,
   [放射剂量] [varchar] (30) COLLATE Chinese_PRC_BIN NULL,
   [工龄] [varchar] (50) COLLATE Chinese_PRC_BIN NULL,
   [职业危害工龄] [varchar] (50) COLLATE Chinese_PRC_BIN NULL,
   [电话号码] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [住址] [varchar] (100) COLLATE Chinese_PRC_BIN NULL,
   [邮编] [varchar] (10) COLLATE Chinese_PRC_BIN NULL,
   [文化程度] [varchar] (40) COLLATE Chinese_PRC_BIN NULL,
   [籍贯] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [民族] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [婚否] [varchar] (5) COLLATE Chinese_PRC_BIN NULL,
   [校核人] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [校核时间] [datetime] NULL,
   [校核合格] [varchar] (2) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_体检人员基本信息表] ADD CONSTRAINT [PK_职业病体检_体检人员基本信息表] PRIMARY KEY CLUSTERED ([系统编号])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   CREATE INDEX [IX_职业病体检_体检人员基本信息表] ON [dbo].[职业病体检_体检人员基本信息表] ([公民身份号码])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检人员基本信息表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检人员基本信息表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_体检人员附加项目设置表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检人员附加项目设置表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_体检人员附加项目设置表] (
   [附加项目] [varchar] (30) COLLATE Chinese_PRC_BIN NOT NULL,
   [录入标题] [varchar] (30) COLLATE Chinese_PRC_BIN NULL,
   [数据类型] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [数据长度] [int] NULL,
   [枚举值] [varchar] (250) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_体检人员附加项目设置表] ADD CONSTRAINT [PK_职业病体检_体检人员附加项目设置表] PRIMARY KEY CLUSTERED ([附加项目])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检人员附加项目设置表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检人员附加项目设置表 Table'
END
GO



--  
-- Script to Create dbo.职业病体检_体检基本信息表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检基本信息表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_体检基本信息表] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [试管编号] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [体检表编号] [varchar] (50) COLLATE Chinese_PRC_BIN NULL,
   [体检类型] [varchar] (30) COLLATE Chinese_PRC_BIN NULL,
   [体检类别] [varchar] (30) COLLATE Chinese_PRC_BIN NULL,
   [体检日期] [datetime] NOT NULL,
   [体检结论] [varchar] (250) COLLATE Chinese_PRC_BIN NULL,
   [诊断和处理意见] [varchar] (250) COLLATE Chinese_PRC_BIN NULL,
   [下结论医师] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [复查体检表编号] [varchar] (50) COLLATE Chinese_PRC_BIN NULL,
   [复查系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [体检状态] [varchar] (4) COLLATE Chinese_PRC_BIN NOT NULL,
   [收费批号] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [下结论日期] [datetime] NULL,
   [收费金额] [money] NULL,
   [各科体检状态] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [复查状态] [varchar] (2) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_体检基本信息表] ADD CONSTRAINT [PK_职业病体检_体检基本信息表] PRIMARY KEY CLUSTERED ([系统编号])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检基本信息表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检基本信息表 Table'
END
GO

alter table 职业病体检_体检基本信息表 
	alter column 体检结论 varchar(1000)
alter table dbo.职业病体检_体检基本信息表
	add 复查原因 varchar(500)
alter table dbo.职业病体检_体检基本信息表
	add 复查项目 varchar(500)



--  
-- Script to Create dbo.职业病体检_体检报告信息表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检报告信息表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_体检报告信息表] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [报告编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检类型] [varchar] (30) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检类别] [varchar] (30) COLLATE Chinese_PRC_BIN NOT NULL,
   [创建人] [varchar] (10) COLLATE Chinese_PRC_BIN NOT NULL,
   [修改日期] [datetime] NOT NULL,
   [报告] [image] NOT NULL,
   [报告类别] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [文件类型] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [体检表编号] [varchar] (50) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_体检报告信息表] ADD CONSTRAINT [PK_职业病体检_体检报告信息表] PRIMARY KEY CLUSTERED ([系统编号])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检报告信息表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检报告信息表 Table'
END
GO



--  
-- Script to Create dbo.职业病体检_体检结果信息表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检结果信息表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_体检结果信息表] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检项目] [varchar] (6) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检结果] [varchar] (300) COLLATE Chinese_PRC_BIN NULL,
   [体检医师] [varchar] (10) COLLATE Chinese_PRC_BIN NULL,
   [填写日期] [datetime] NULL,
   [单项结论] [varchar] (20) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_体检结果信息表] ADD CONSTRAINT [PK_职业病体检_体检结果信息表] PRIMARY KEY CLUSTERED ([系统编号], [体检项目])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检结果信息表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检结果信息表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_体检结论判断条件表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检结论判断条件表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_体检结论判断条件表] (
   [编号] [int] NOT NULL,
   [体检结论] [int] NOT NULL,
   [描述] [varchar] (100) COLLATE Chinese_PRC_BIN NULL,
   [序号] [int] NOT NULL,
   [体检项目] [UDT_体检项目编号] NOT NULL,
   [判断条件] [varchar] (10) COLLATE Chinese_PRC_BIN NULL,
   [标准值] [varchar] (50) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_体检结论判断条件表] ADD CONSTRAINT [PK_职业病体检_] PRIMARY KEY CLUSTERED ([编号])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检结论判断条件表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检结论判断条件表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_体检表模板体检结论表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检表模板体检结论表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_体检表模板体检结论表] (
   [体检表名称] [varchar] (50) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检结论] [int] NOT NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   CREATE INDEX [IX_职业病体检_体检表模板体检结论表] ON [dbo].[职业病体检_体检表模板体检结论表] ([体检表名称])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检表模板体检结论表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检表模板体检结论表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_体检表模板体检项目表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检表模板体检项目表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_体检表模板体检项目表] (
   [体检表名称] [varchar] (50) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检项目] [varchar] (50) COLLATE Chinese_PRC_BIN NOT NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_体检表模板体检项目表] ADD CONSTRAINT [PK_职业病体检_体检表模板体检项目表] PRIMARY KEY CLUSTERED ([体检表名称], [体检项目])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检表模板体检项目表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检表模板体检项目表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_体检表模板基本信息表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检表模板基本信息表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_体检表模板基本信息表] (
   [编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检表名称] [varchar] (50) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检类别] [varchar] (50) COLLATE Chinese_PRC_BIN NULL,
   [试管编号字母] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [诊断处理意见] [varchar] (200) COLLATE Chinese_PRC_BIN NULL,
   [体检单名称] [varchar] (60) COLLATE Chinese_PRC_BIN NULL,
   [是否复查体检表] [smallint] NULL,
   [代号] [varchar] (4) COLLATE Chinese_PRC_BIN NULL,
   [收费标准] [varchar] (50) COLLATE Chinese_PRC_BIN NULL,
   [体检人员类型] [varchar] (50) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_体检表模板基本信息表] ADD CONSTRAINT [PK_职业病体检_体检表模板基本信息表] PRIMARY KEY CLUSTERED ([编号])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   CREATE INDEX [IX_职业病体检_体检表模板基本信息表] ON [dbo].[职业病体检_体检表模板基本信息表] ([体检表名称])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检表模板基本信息表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检表模板基本信息表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_体检表模板附加项目信息表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检表模板附加项目信息表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_体检表模板附加项目信息表] (
   [体检表名称] [varchar] (50) COLLATE Chinese_PRC_BIN NOT NULL,
   [附加项目] [varchar] (30) COLLATE Chinese_PRC_BIN NULL,
   [序号] [smallint] NOT NULL,
   [是否必录] [varchar] (1) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检表模板附加项目信息表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检表模板附加项目信息表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_体检附加信息表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检附加信息表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_体检附加信息表] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [附加项目] [varchar] (30) COLLATE Chinese_PRC_BIN NOT NULL,
   [项目值] [varchar] (50) COLLATE Chinese_PRC_BIN NULL,
   [项目值编号] [varchar] (10) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检附加信息表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检附加信息表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_体检项目设置表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检项目设置表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_体检项目设置表] (
   [编码] [varchar] (6) COLLATE Chinese_PRC_BIN NOT NULL,
   [名称] [varchar] (30) COLLATE Chinese_PRC_BIN NOT NULL,
   [缺省值] [varchar] (30) COLLATE Chinese_PRC_BIN NULL,
   [枚举来源] [varchar] (60) COLLATE Chinese_PRC_BIN NULL,
   [属性] [varchar] (4) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检大类] [int] NOT NULL,
   [比较方式] [varchar] (100) COLLATE Chinese_PRC_BIN NULL,
   [标准值] [varchar] (100) COLLATE Chinese_PRC_BIN NULL,
   [单位] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [单价] [money] NULL,
   [代号] [varchar] (10) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_体检项目设置表] ADD CONSTRAINT [PK_职业病体检_体检项目设置表] PRIMARY KEY CLUSTERED ([编码])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检项目设置表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检项目设置表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_单位报表打印表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_单位报表打印表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_单位报表打印表] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [姓名] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [性别] [varchar] (4) COLLATE Chinese_PRC_BIN NULL,
   [年龄] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [危害因素] [varchar] (40) COLLATE Chinese_PRC_BIN NULL,
   [职业危害工龄] [varchar] (50) COLLATE Chinese_PRC_BIN NULL,
   [体检日期] [datetime] NULL,
   [既往病史] [varchar] (50) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_单位报表打印表] ADD CONSTRAINT [PK_职业病体检_单位报表打印表] PRIMARY KEY CLUSTERED ([系统编号])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_单位报表打印表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_单位报表打印表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_可用操作信息表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_可用操作信息表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_可用操作信息表] (
   [操作名] [UDT_操作名] NOT NULL,
   [操作描述] [varchar] (200) COLLATE Chinese_PRC_BIN NULL,
   [上级操作名] [UDT_操作名] NULL,
   [业务名] [UDT_业务名] NULL,
   [部件名] [varchar] (50) COLLATE Chinese_PRC_BIN NULL,
   [类名] [varchar] (50) COLLATE Chinese_PRC_BIN NULL,
   [业务顺序] [int] NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_可用操作信息表] ADD CONSTRAINT [PK_职业病体检_可用操作信息表] PRIMARY KEY CLUSTERED ([操作名])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_可用操作信息表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_可用操作信息表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_既往病史表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_既往病史表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_既往病史表] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [编号] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [疾病名称] [varchar] (50) COLLATE Chinese_PRC_BIN NULL,
   [诊断日期] [varchar] (30) COLLATE Chinese_PRC_BIN NULL,
   [诊断单位] [varchar] (50) COLLATE Chinese_PRC_BIN NULL,
   [治疗经过] [varchar] (300) COLLATE Chinese_PRC_BIN NULL,
   [转归] [varchar] (30) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   CREATE INDEX [IX_职业病体检_既往病史表] ON [dbo].[职业病体检_既往病史表] ([系统编号])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_既往病史表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_既往病史表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_用户操作权限表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_用户操作权限表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_用户操作权限表] (
   [用户编号] [UDT_员工编号] NOT NULL,
   [权限名] [UDT_操作名] NOT NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_用户操作权限表] ADD CONSTRAINT [PK_职业病体检_用户操作权限表] PRIMARY KEY CLUSTERED ([用户编号], [权限名])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_用户操作权限表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_用户操作权限表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_用户科室权限表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_用户科室权限表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_用户科室权限表] (
   [用户编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [科室编号] [varchar] (10) COLLATE Chinese_PRC_BIN NOT NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_用户科室权限表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_用户科室权限表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_科室结论表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_科室结论表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_科室结论表] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [科室] [varchar] (5) COLLATE Chinese_PRC_BIN NOT NULL,
   [文字结论] [varchar] (500) COLLATE Chinese_PRC_BIN NULL,
   [医生编号] [varchar] (10) COLLATE Chinese_PRC_BIN NOT NULL,
   [结论日期] [datetime] NULL CONSTRAINT [DF_职业病体检_科室结论表_结论日期] DEFAULT (getdate()),
   [修改起始时间] [datetime] NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_科室结论表] ADD CONSTRAINT [PK_职业病体检_科室结论表] PRIMARY KEY CLUSTERED ([系统编号], [科室])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_科室结论表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_科室结论表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_结果信息_B超影像科 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_结果信息_B超影像科 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_结果信息_B超影像科] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检项目] [varchar] (50) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检结果] [varchar] (500) COLLATE Chinese_PRC_BIN NULL,
   [体检医师] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [填写时间] [datetime] NULL,
   [单项结论] [varchar] (50) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_结果信息_B超影像科] ADD CONSTRAINT [PK_职业病体检_结果信息_B超影像科] PRIMARY KEY CLUSTERED ([系统编号], [体检项目])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_结果信息_B超影像科 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_结果信息_B超影像科 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_结果信息_X光影像科 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_结果信息_X光影像科 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_结果信息_X光影像科] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检项目] [varchar] (50) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检结果] [varchar] (500) COLLATE Chinese_PRC_BIN NULL,
   [体检医师] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [填写时间] [datetime] NULL,
   [单项结论] [varchar] (50) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_结果信息_X光影像科] ADD CONSTRAINT [PK_职业病体检_结果信息_X光影像科] PRIMARY KEY CLUSTERED ([系统编号], [体检项目])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_结果信息_X光影像科 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_结果信息_X光影像科 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_结果信息_五官科 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_结果信息_五官科 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_结果信息_五官科] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检项目] [varchar] (50) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检结果] [varchar] (50) COLLATE Chinese_PRC_BIN NULL,
   [体检医师] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [填写时间] [datetime] NULL,
   [单项结论] [varchar] (200) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_结果信息_五官科] ADD CONSTRAINT [PK_职业病体检_结果信息_五官科] PRIMARY KEY CLUSTERED ([系统编号], [体检项目])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_结果信息_五官科 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_结果信息_五官科 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_结果信息_免疫科 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_结果信息_免疫科 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_结果信息_免疫科] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检项目] [varchar] (50) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检结果] [varchar] (500) COLLATE Chinese_PRC_BIN NULL,
   [体检医师] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [填写时间] [datetime] NULL,
   [单项结论] [varchar] (50) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_结果信息_免疫科] ADD CONSTRAINT [PK_职业病体检_结果信息_免疫科] PRIMARY KEY CLUSTERED ([系统编号], [体检项目])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_结果信息_免疫科 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_结果信息_免疫科 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_结果信息_内科 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_结果信息_内科 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_结果信息_内科] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检项目] [varchar] (50) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检结果] [varchar] (50) COLLATE Chinese_PRC_BIN NULL,
   [体检医师] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [填写时间] [datetime] NULL,
   [单项结论] [varchar] (200) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_结果信息_内科] ADD CONSTRAINT [PK_职业病体检_结果信息_内科] PRIMARY KEY CLUSTERED ([系统编号], [体检项目])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_结果信息_内科 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_结果信息_内科 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_结果信息_受检者个人信息录入科 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_结果信息_受检者个人信息录入科 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_结果信息_受检者个人信息录入科] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检项目] [varchar] (50) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检结果] [varchar] (50) COLLATE Chinese_PRC_BIN NULL,
   [体检医师] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [填写时间] [datetime] NULL,
   [单项结论] [varchar] (200) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_结果信息_受检者个人信息录入科] ADD CONSTRAINT [PK_职业病体检_结果信息_受检者个人信息录入科] PRIMARY KEY CLUSTERED ([系统编号], [体检项目])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_结果信息_受检者个人信息录入科 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_结果信息_受检者个人信息录入科 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_结果信息_外科 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_结果信息_外科 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_结果信息_外科] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检项目] [varchar] (50) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检结果] [varchar] (50) COLLATE Chinese_PRC_BIN NULL,
   [体检医师] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [填写时间] [datetime] NULL,
   [单项结论] [varchar] (200) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_结果信息_外科] ADD CONSTRAINT [PK_职业病体检_结果信息_外科] PRIMARY KEY CLUSTERED ([系统编号], [体检项目])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_结果信息_外科 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_结果信息_外科 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_结果信息_尿常规化验科 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_结果信息_尿常规化验科 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_结果信息_尿常规化验科] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检项目] [varchar] (50) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检结果] [varchar] (500) COLLATE Chinese_PRC_BIN NULL,
   [体检医师] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [填写时间] [datetime] NULL,
   [单项结论] [varchar] (50) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_结果信息_尿常规化验科] ADD CONSTRAINT [PK_职业病体检_结果信息_尿常规化验科] PRIMARY KEY CLUSTERED ([系统编号], [体检项目])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_结果信息_尿常规化验科 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_结果信息_尿常规化验科 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_结果信息_心电科 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_结果信息_心电科 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_结果信息_心电科] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检项目] [varchar] (50) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检结果] [varchar] (500) COLLATE Chinese_PRC_BIN NULL,
   [体检医师] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [填写时间] [datetime] NULL,
   [单项结论] [varchar] (50) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_结果信息_心电科] ADD CONSTRAINT [PK_职业病体检_结果信息_心电科] PRIMARY KEY CLUSTERED ([系统编号], [体检项目])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_结果信息_心电科 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_结果信息_心电科 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_结果信息_染色体化验科 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_结果信息_染色体化验科 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_结果信息_染色体化验科] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检项目] [varchar] (50) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检结果] [varchar] (500) COLLATE Chinese_PRC_BIN NULL,
   [体检医师] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [填写时间] [datetime] NULL,
   [单项结论] [varchar] (50) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_结果信息_染色体化验科] ADD CONSTRAINT [PK_职业病体检_结果信息_染色体化验科] PRIMARY KEY CLUSTERED ([系统编号], [体检项目])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_结果信息_染色体化验科 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_结果信息_染色体化验科 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_结果信息_生化科 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_结果信息_生化科 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_结果信息_生化科] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检项目] [varchar] (50) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检结果] [varchar] (500) COLLATE Chinese_PRC_BIN NULL,
   [体检医师] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [填写时间] [datetime] NULL,
   [单项结论] [varchar] (50) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_结果信息_生化科] ADD CONSTRAINT [PK_职业病体检_结果信息_生化科] PRIMARY KEY CLUSTERED ([系统编号], [体检项目])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_结果信息_生化科 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_结果信息_生化科 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_结果信息_电测听科 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_结果信息_电测听科 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_结果信息_电测听科] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检项目] [varchar] (50) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检结果] [varchar] (500) COLLATE Chinese_PRC_BIN NULL,
   [体检医师] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [填写时间] [datetime] NULL,
   [单项结论] [varchar] (50) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_结果信息_电测听科] ADD CONSTRAINT [PK_职业病体检_结果信息_电测听科] PRIMARY KEY CLUSTERED ([系统编号], [体检项目])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_结果信息_电测听科 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_结果信息_电测听科 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_结果信息_肺功能影像科 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_结果信息_肺功能影像科 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_结果信息_肺功能影像科] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检项目] [varchar] (50) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检结果] [varchar] (500) COLLATE Chinese_PRC_BIN NULL,
   [体检医师] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [填写时间] [datetime] NULL,
   [单项结论] [varchar] (50) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_结果信息_肺功能影像科] ADD CONSTRAINT [PK_职业病体检_结果信息_肺功能影像科] PRIMARY KEY CLUSTERED ([系统编号], [体检项目])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_结果信息_肺功能影像科 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_结果信息_肺功能影像科 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_结果信息_血常规化验科 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_结果信息_血常规化验科 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_结果信息_血常规化验科] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检项目] [varchar] (50) COLLATE Chinese_PRC_BIN NOT NULL,
   [体检结果] [varchar] (500) COLLATE Chinese_PRC_BIN NULL,
   [体检医师] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [填写时间] [datetime] NULL,
   [单项结论] [varchar] (50) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_结果信息_血常规化验科] ADD CONSTRAINT [PK_职业病体检_结果信息_血常规化验科] PRIMARY KEY CLUSTERED ([系统编号], [体检项目])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_结果信息_血常规化验科 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_结果信息_血常规化验科 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_职业史表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_职业史表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_职业史表] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [编号] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [工作单位] [varchar] (30) COLLATE Chinese_PRC_BIN NULL,
   [部门] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [工种] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [危害种类] [varchar] (50) COLLATE Chinese_PRC_BIN NULL,
   [接触时间] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [防护措施] [varchar] (80) COLLATE Chinese_PRC_BIN NULL,
   [备注] [varchar] (50) COLLATE Chinese_PRC_BIN NULL,
   [放射种类] [varchar] (40) COLLATE Chinese_PRC_BIN NULL,
   [每日工作量] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [累积照射量] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [过量照射史] [varchar] (100) COLLATE Chinese_PRC_BIN NULL,
   [起始时间] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [结束时间] [varchar] (20) COLLATE Chinese_PRC_BIN NULL,
   [是否放射性] [varchar] (10) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   CREATE INDEX [IX_职业病体检_职业史表] ON [dbo].[职业病体检_职业史表] ([系统编号])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_职业史表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_职业史表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_自觉症状表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_自觉症状表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_自觉症状表] (
   [系统编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [编号] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [症状] [varchar] (100) COLLATE Chinese_PRC_BIN NULL,
   [程度] [varchar] (30) COLLATE Chinese_PRC_BIN NULL,
   [出现时间] [varchar] (30) COLLATE Chinese_PRC_BIN NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   CREATE INDEX [IX_职业病体检_自觉症状表] ON [dbo].[职业病体检_自觉症状表] ([系统编号])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_自觉症状表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_自觉症状表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_体检医师项目设置表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 06:19 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检医师项目设置表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[职业病体检_体检医师项目设置表] (
   [医师编号] [UDT_员工编号] NOT NULL,
   [体检项目] [varchar] (6) COLLATE Chinese_PRC_BIN NOT NULL
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[职业病体检_体检医师项目设置表] ADD CONSTRAINT [PK_职业病体检_体检医师项目设置表] PRIMARY KEY CLUSTERED ([医师编号], [体检项目])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检医师项目设置表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检医师项目设置表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_体检医师项目设置表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 06:19 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检医师项目设置表 Table'
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_职业病体检_体检医师项目设置表_系统管理_员工基本信息表')
      ALTER TABLE [dbo].[职业病体检_体检医师项目设置表] DROP CONSTRAINT [FK_职业病体检_体检医师项目设置表_系统管理_员工基本信息表]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_职业病体检_体检医师项目设置表_系统管理_员工基本信息表')
      ALTER TABLE [dbo].[职业病体检_体检医师项目设置表] WITH NOCHECK ADD CONSTRAINT [FK_职业病体检_体检医师项目设置表_系统管理_员工基本信息表] FOREIGN KEY ([医师编号]) REFERENCES [dbo].[系统管理_员工基本信息表] ([编号]) ON UPDATE CASCADE
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_职业病体检_体检医师项目设置表_职业病体检_体检项目设置表')
      ALTER TABLE [dbo].[职业病体检_体检医师项目设置表] DROP CONSTRAINT [FK_职业病体检_体检医师项目设置表_职业病体检_体检项目设置表]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_职业病体检_体检医师项目设置表_职业病体检_体检项目设置表')
      ALTER TABLE [dbo].[职业病体检_体检医师项目设置表] WITH NOCHECK ADD CONSTRAINT [FK_职业病体检_体检医师项目设置表_职业病体检_体检项目设置表] FOREIGN KEY ([体检项目]) REFERENCES [dbo].[职业病体检_体检项目设置表] ([编码]) ON UPDATE CASCADE
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检医师项目设置表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检医师项目设置表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_可用操作信息表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_可用操作信息表 Table'
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_职业病体检_可用操作信息表_系统管理_系统安装信息表')
      ALTER TABLE [dbo].[职业病体检_可用操作信息表] DROP CONSTRAINT [FK_职业病体检_可用操作信息表_系统管理_系统安装信息表]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_职业病体检_可用操作信息表_系统管理_系统安装信息表')
      ALTER TABLE [dbo].[职业病体检_可用操作信息表] ADD CONSTRAINT [FK_职业病体检_可用操作信息表_系统管理_系统安装信息表] FOREIGN KEY ([业务名]) REFERENCES [dbo].[系统管理_系统安装信息表] ([业务名])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_可用操作信息表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_可用操作信息表 Table'
END
GO


--  
-- Script to Create dbo.职业病体检_用户操作权限表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期二, 十二月 11, 2012, at 05:00 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_用户操作权限表 Table'
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_职业病体检_用户操作权限表_系统管理_系统用户信息表')
      ALTER TABLE [dbo].[职业病体检_用户操作权限表] DROP CONSTRAINT [FK_职业病体检_用户操作权限表_系统管理_系统用户信息表]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_职业病体检_用户操作权限表_系统管理_系统用户信息表')
      ALTER TABLE [dbo].[职业病体检_用户操作权限表] ADD CONSTRAINT [FK_职业病体检_用户操作权限表_系统管理_系统用户信息表] FOREIGN KEY ([用户编号]) REFERENCES [dbo].[系统管理_系统用户信息表] ([编号])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_职业病体检_用户操作权限表_职业病体检_可用操作信息表')
      ALTER TABLE [dbo].[职业病体检_用户操作权限表] DROP CONSTRAINT [FK_职业病体检_用户操作权限表_职业病体检_可用操作信息表]
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = N'FK_职业病体检_用户操作权限表_职业病体检_可用操作信息表')
      ALTER TABLE [dbo].[职业病体检_用户操作权限表] ADD CONSTRAINT [FK_职业病体检_用户操作权限表_职业病体检_可用操作信息表] FOREIGN KEY ([权限名]) REFERENCES [dbo].[职业病体检_可用操作信息表] ([操作名]) ON UPDATE CASCADE
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_用户操作权限表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_用户操作权限表 Table'
END
GO




--  
-- Script to Create dbo.职业病体检_体检医师项目设置数据库 in KAMA-AA251EA62C.jk2006 
-- Generated 星期一, 十二月 10, 2012, at 04:54 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检医师项目设置数据库 View'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


exec('create   VIEW dbo.职业病体检_体检医师项目设置数据库
AS 
select a.医师编号, 医师姓名 = b.姓名, a.体检项目,体检项目名称 = c.名称,
	c.属性,c.枚举来源,c.缺省值,case when c.比较方式=''属于'' or c.比较方式=''='' or c.比较方式 is null then '''' else c.比较方式 end +c.标准值 as 标准值,c.单位
    from 职业病体检_体检医师项目设置表 a,
        系统管理_员工基本信息表 b,
        职业病体检_体检项目设置表 c
    where a.医师编号 *= b.编号 and
         a.体检项目 = c.编码
')
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检医师项目设置数据库 View Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检医师项目设置数据库 View'
END
GO


--  
-- Script to Create dbo.职业病体检_体检基本数据库 in KAMA-AA251EA62C.jk2006 
-- Generated 星期一, 十二月 10, 2012, at 04:54 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检基本数据库 View'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


SET QUOTED_IDENTIFIER OFF
GO

exec('--增加体检单号
CREATE          VIEW dbo.职业病体检_体检基本数据库
AS 
    select a.系统编号,b.公民身份号码,b.姓名, b.性别,b.年龄,b.建档日期,b.危害因素,b.职业分类,
	b.照射源,b.现工种,b.职务或职称,b.放射剂量,b.工龄,b.职业危害工龄,b.电话号码,b.住址,
	b.邮编,b.文化程度,b.籍贯,b.民族,b.婚否,a.体检类型,
        b.出生日期,b.出生地,b.单位申请编号, b.单位名称, a.试管编号, a.体检表编号, a.体检日期,
        a.体检结论,a.下结论日期,诊断和处理意见, a.下结论医师,下结论医师姓名=c.姓名,
        a.体检类别, a.体检状态, a.复查体检表编号, a.复查系统编号, a.收费批号, a.各科体检状态,a.复查原因,a.复查项目
	,复查状态=case 
		when 复查状态=0 then ''待复查''
		else ''''
		end
    FROM 职业病体检_体检基本信息表 a, 
        职业病体检_体检人员基本信息表 b,
        系统管理_员工基本信息表 c
    WHERE a.系统编号=b.系统编号 and
          a.下结论医师*= c.编号
')
GO

SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检基本数据库 View Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检基本数据库 View'
END
GO


--  
-- Script to Create dbo.职业病体检_体检报告视图 in KAMA-AA251EA62C.jk2006 
-- Generated 星期一, 十二月 10, 2012, at 04:54 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检报告视图 View'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


exec('create view dbo.职业病体检_体检报告视图
as
select distinct a.系统编号,a.姓名,a.性别,a.年龄,a.单位名称,a.危害因素,a.职业危害工龄,a.建档日期 体检日期,c.疾病名称 既往病史
from 职业病体检_体检人员基本信息表 a join 职业病体检_科室结论表 b on a.系统编号=b.系统编号 and b.科室=''16''
join 职业病体检_既往病史表 c on a.系统编号=c.系统编号
')
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检报告视图 View Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检报告视图 View'
END
GO
--  
-- Script to Create dbo.职业病体检_体检结果视图 in KAMA-AA251EA62C.jk2006 
-- Generated 星期一, 十二月 10, 2012, at 04:54 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检结果视图 View'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


SET QUOTED_IDENTIFIER OFF
GO

exec('CREATE             view dbo.职业病体检_体检结果视图 as 
--2012-07-04 于登淼 ↓
--职业病体检_体检结果信息表 之后会删
--select *
--from  职业病体检_体检结果信息表 
--union
--2012-07-04 于登淼 ↑

select *
from dbo.职业病体检_结果信息_五官科

union
select *
from dbo.职业病体检_结果信息_内科

union
select *
from dbo.职业病体检_结果信息_外科

union
select *
from dbo.职业病体检_结果信息_血常规化验科

union
select * 
from dbo.职业病体检_结果信息_免疫科

union
select *
from dbo.职业病体检_结果信息_尿常规化验科

union
select *
from dbo.职业病体检_结果信息_染色体化验科

union
select *
from dbo.职业病体检_结果信息_电测听科

union
select *
from dbo.职业病体检_结果信息_X光影像科

union
select *
from dbo.职业病体检_结果信息_心电科

union
select *
from dbo.职业病体检_结果信息_B超影像科

union
select *
from dbo.职业病体检_结果信息_肺功能影像科

union
select *
from dbo.职业病体检_结果信息_受检者个人信息录入科

union
select *
from dbo.职业病体检_结果信息_生化科
')
GO

SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检结果视图 View Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检结果视图 View'
END
GO


--  
-- Script to Create dbo.职业病体检_体检收费视图 in KAMA-AA251EA62C.jk2006 
-- Generated 星期一, 十二月 10, 2012, at 04:54 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检收费视图 View'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


SET QUOTED_IDENTIFIER OFF
GO

exec('CREATE   view dbo.职业病体检_体检收费视图 as 
select   a.系统编号,a.体检项目,b.单位申请编号,b.单位名称,c.单价,b.体检类型,b.体检类别
from  职业病体检_体检结果视图 a, 职业病体检_体检基本数据库 b,职业病体检_体检项目设置表 c
where a.系统编号=b.系统编号 and c.编码=a.体检项目
')
GO

SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检收费视图 View Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检收费视图 View'
END
GO


--  
-- Script to Create dbo.职业病体检_体检结果数据库 in KAMA-AA251EA62C.jk2006 
-- Generated 星期一, 十二月 10, 2012, at 04:54 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检结果数据库 View'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


SET QUOTED_IDENTIFIER OFF
GO

exec('CREATE         VIEW dbo.职业病体检_体检结果数据库
AS 
    SELECT a.系统编号,b.公民身份号码, 
        b.姓名, b.性别, b.出生日期, a.试管编号, 
        a.体检日期, a.体检状态, c.体检项目, 体检项目名称=d.名称, 
        c.体检结果, c.体检医师, 体检医师姓名=e.姓名, c.填写日期, d.属性,
        d.缺省值,d.枚举来源,d.体检大类,f.名称,d.标准值,d.单位,d.单价,c.单项结论
    FROM 职业病体检_体检基本信息表 a, 
        职业病体检_体检人员基本信息表 b, 
        职业病体检_体检结果信息表 c, 
        职业病体检_体检项目设置表 d,
        系统管理_员工基本信息表 e,系统管理_字典_字典内容表 f
    WHERE a.系统编号=c.系统编号 and 
	a.系统编号=b.系统编号 and
        c.体检项目= d.编码 and 
        c.体检医师*= e.编号 and d.体检大类=f.InnerID
')
GO

SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检结果数据库 View Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检结果数据库 View'
END
GO




--  
-- Script to Create dbo.职业病体检_体检表模板体检结论数据库 in KAMA-AA251EA62C.jk2006 
-- Generated 星期一, 十二月 10, 2012, at 04:54 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检表模板体检结论数据库 View'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


SET QUOTED_IDENTIFIER OFF
GO

exec('-------------------------------------------------------------------------------------------------
create  VIEW dbo.职业病体检_体检表模板体检结论数据库
AS 
    Select a.体检表名称, a.体检结论, 体检结论名称 = b.名称
    From 职业病体检_体检表模板体检结论表 a, 
        系统管理_字典_字典内容表 b
    Where a.体检结论=b.InnerID
')
GO

SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检表模板体检结论数据库 View Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检表模板体检结论数据库 View'
END
GO


--  
-- Script to Create dbo.职业病体检_体检表模板附加项目数据库 in KAMA-AA251EA62C.jk2006 
-- Generated 星期一, 十二月 10, 2012, at 04:54 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检表模板附加项目数据库 View'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


SET QUOTED_IDENTIFIER OFF
GO

exec('create  VIEW dbo.职业病体检_体检表模板附加项目数据库
AS
SELECT dbo.职业病体检_体检表模板附加项目信息表.体检表名称, 
      dbo.职业病体检_体检表模板附加项目信息表.附加项目,
      dbo.职业病体检_体检表模板附加项目信息表.序号,
      dbo.职业病体检_体检表模板附加项目信息表.是否必录, 
      dbo.职业病体检_体检人员附加项目设置表.录入标题, 
      dbo.职业病体检_体检人员附加项目设置表.数据类型, 
      dbo.职业病体检_体检人员附加项目设置表.数据长度, 
      dbo.职业病体检_体检人员附加项目设置表.枚举值
FROM dbo.职业病体检_体检表模板附加项目信息表 INNER JOIN
      dbo.职业病体检_体检人员附加项目设置表 ON 
      dbo.职业病体检_体检表模板附加项目信息表.附加项目 = dbo.职业病体检_体检人员附加项目设置表.附加项目
')
GO

SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检表模板附加项目数据库 View Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检表模板附加项目数据库 View'
END
GO


--  
-- Script to Create dbo.职业病体检_查询统计视图 in KAMA-AA251EA62C.jk2006 
-- Generated 星期一, 十二月 10, 2012, at 04:54 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_查询统计视图 View'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


exec('CREATE  view dbo.职业病体检_查询统计视图
as
select a.系统编号,b.收费批号,a.姓名,a.性别,b.体检表编号 as 体检表,b.体检类型 as 体检人员类型,
		b.体检类别,b.体检日期,c.工种,f.单位名称,f.片区,f.卫生种类,f.行业类别,b.复查体检表编号,
		b.复查系统编号,g.名称 as 科室名称,d.文字结论,d.结论日期,e.编号 as 医师编号,e.姓名 as 医师姓名,
		收费金额 = case when d.科室 = 16 then b.收费金额 
		else null
		end,
		体检状态 = case
			--2012.12.10 张令 ↓
			--增加多种体检状态
			when b.体检状态=0 then ''未校核''
			when b.体检状态=1 then ''未打清单''
			when b.体检状态=2 then ''未录入受检者个人信息''
			when b.体检状态=3 then ''体检中''
			when b.体检状态=4 then ''未下结论''
			when b.体检状态=5 then ''已下结论''
			when b.体检状态=6 then ''已复核''
			when b.体检状态=7 then ''已发报告''
			when b.体检状态=8 then ''待复查''
			end
			--2012.12.10 张令 ↑
      from 职业病体检_体检人员基本信息表 a left join 职业病体检_体检基本信息表 b on a.系统编号=b.系统编号
					 left join 职业病体检_职业史表 c on b.系统编号=c.系统编号
					 left join 职业病体检_科室结论表 d on c.系统编号 = d.系统编号
					 left join 系统管理_员工基本信息表 e on d.医生编号 = e.编号
					 left join 单位档案_单位基本信息视图 f on a.单位申请编号=f.申请编号
					 left join 系统管理_字典_字典内容表 g on d.科室 = g.编号 and g.ID = 84
')
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_查询统计视图 View Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_查询统计视图 View'
END
GO


--  
-- Script to Create dbo.autoConclusion in KAMA-AA251EA62C.jk2006 
-- Generated 星期一, 十二月 10, 2012, at 04:54 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.autoConclusion Procedure'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


exec('CREATE     PROCEDURE dbo.autoConclusion
@paraSysNo varchar(16),		--系统编号
@paraItem varchar(16),		--单项名称
@paraResult varchar(16),	--单项结果
@paraDoctor varchar(16),	--医师名字
@paraFillDate varchar(16),	--填写时间
@paraConclusion varchar(16),	--单项结论
@paraTableName varchar(40)	--项目所在科室
as
begin
  declare @paraItemID varchar(6)	--项目编号
  declare @paraFlag int	--返回标志
  declare @sqlstr nvarchar(4000)	--执行的sql语句
  declare @standard varchar(50)		--标准值
  
  select @paraItemID = 编码 from 职业病体检_体检项目设置表 where 名称 = @paraItem	--得到项目编号
  select @standard = 标准值 from 职业病体检_体检项目设置表 where 名称 = @paraItem and 编码 = @paraItemID	--得到标准值
  if ''正常''=@paraResult
  begin
    set @paraConclusion = ''合格''
  end
  if ''异常''=@paraResult
  begin
    set @paraConclusion = ''不合格''
  end

  if @standard<>''''
  begin
	  if isnumeric(@paraResult)=1
	  begin
		if (convert(numeric,@paraResult)-convert(numeric,@standard))<>0
		begin
		  set @paraConclusion = ''不合格''
		end
		else
		begin
		  set @paraConclusion = ''合格''
		end
	  end
  end
  set @sqlstr = N''select @paraFlag=count(*) from ''+ @paraTableName +'' where 系统编号 = ''''''+@paraSysNo+'''''' and 体检项目 = ''''''+@paraItemID+'''''';''
  execute Sp_executeSql @sqlstr, N''@paraFlag int out'',@paraFlag out
  if @paraFlag > 0
  begin
    set @sqlstr = ''update ''+@paraTableName+'' set 体检结果=''''''+@paraResult+'''''',体检医师=''''''+@paraDoctor+'''''',填写时间=''''''+@paraFillDate+'''''',单项结论=''''''+@paraConclusion+'''''' where 系统编号=''''''+@paraSysNo+'''''' and 体检项目=''''''+@paraItemID+'''''';''
    exec (@sqlstr)
  end
  else
  begin
    set @sqlstr = ''insert into ''+@paraTableName+'' values( ''''''+@paraSysNo+'''''' , ''''''+@paraItemID+'''''' , ''''''+@paraResult+'''''' , ''''''+@paraDoctor+'''''' , ''+@paraFillDate+'' , ''''''+@paraConclusion+'''''')''
    exec (@sqlstr)
  end
end
')
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.autoConclusion Procedure Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.autoConclusion Procedure'
END
GO


--  
-- Script to Create dbo.sel返回医师信息 in KAMA-AA251EA62C.jk2006 
-- Generated 星期一, 十二月 10, 2012, at 04:54 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.sel返回医师信息 Procedure'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


exec('CREATE procedure dbo.sel返回医师信息(@para姓名 varchar(16),@para编号 varchar(10))
as
begin
declare @str varchar(10)
set @str = rtrim(ltrim(@para编号))
if len(@str) = 0
select a.姓名,a.编号,c.名称 from 系统管理_员工基本信息表 a,职业病体检_用户科室权限表 b,系统管理_字典_字典内容表 c where a.编号=b.用户编号 and b.科室编号 = c.编号 and c.ID = 84 and a.姓名 = @para姓名 and 名称 not in(''体检登记'',''业务设置'',''职业病史录入'') order by c.编号;
else
select a.姓名,a.编号,c.名称 from 系统管理_员工基本信息表 a,职业病体检_用户科室权限表 b,系统管理_字典_字典内容表 c where a.编号=b.用户编号 and b.科室编号 = c.编号 and c.ID = 84 and a.编号 = @para编号 and 名称 not in(''体检登记'',''业务设置'',''职业病史录入'') order by c.编号;
end
')
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.sel返回医师信息 Procedure Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.sel返回医师信息 Procedure'
END
GO


--  
-- Script to Create dbo.职业病体检_体检管理界面查询 in KAMA-AA251EA62C.jk2006 
-- Generated 星期一, 十二月 10, 2012, at 04:54 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_体检管理界面查询 Procedure'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


SET QUOTED_IDENTIFIER OFF
GO

exec('CREATE            proc dbo.职业病体检_体检管理界面查询
	--2012-07-06 于登淼 ↓
	--代码中更改开始日期与截止日期精确到分钟和秒，所以这里更改下格式 
	--@p开始日期 VARCHAR ( 10 )=''2004-01-01'',
	--@p截止日期 VARCHAR ( 10 )=''2005-12-01'',
	@p开始日期 datetime =''2004-01-01'',
	@p截止日期 datetime =''2005-12-01'',
	--2012-07-06 于登淼 ↑
	@p体检表名称 VARCHAR ( 50 )='''',
    @p单位名称 VARCHAR ( 100 )='''',
    @p姓名 VARCHAR ( 20 )='''',
	@p体检单号 varchar(20)='''',
    @p试管编号 VARCHAR ( 20 )='''',
	@p系统编号 varchar(40)=''''
AS
set nocount on
if @p截止日期<>'''' 
   if charindex('' '',@p截止日期)=0 select @p截止日期=@p截止日期+'' 23:59:59''

--张令 2012.12.28 ↓↓
--体检表编号 as 体检表名
select a.系统编号,姓名,性别,年龄,单位名称,体检类型,试管编号,体检表编号 as 体检表名,
--张令 2012.12.28 ↑↑
	convert(varchar(10),体检日期,120) as 体检日期,
	体检结论,isnull(复查体检表编号,'''') as 复查体检表编号,
	isnull(复查系统编号,'''') as 复查系统编号,
	体检状态=case 
		--2012-06-15 于登淼 ↓
		--增加多种体检状态
		--when 体检状态=3 then ''已下结论'' 
		--else ''未下结论'' 
		--end
		when 体检状态=0 then ''未校核''
		when 体检状态=1 then ''未打清单''
		when 体检状态=2 then ''未录入受检者个人信息''
		when 体检状态=3 then ''体检中''
		when 体检状态=4 then ''未下结论''
		--2012.12.11  张令  ↓
		--用“待复核”代替“已下结论”
		when 体检状态=5 then ''待复核''  --''已下结论''
		--2012.12.11  张令  ↑
		when 体检状态=6 then ''已复核''
		when 体检状态=7 then ''已发报告''
		when 体检状态=8 then ''待复查''
		end
		--2012-06-15 于登淼 ↑
from 职业病体检_体检基本信息表 a inner join  职业病体检_体检人员基本信息表 b on a.系统编号=b.系统编号
where ((体检日期>=@p开始日期 or @p开始日期='''')
		and  (体检日期<=@p截止日期 or @p截止日期='''')
		and  (单位名称 like ''%''+@p单位名称+''%'' or @p单位名称='''')
		and  (姓名 like ''%''+@p姓名+''%'' or @p姓名='''')
        and (试管编号=@p试管编号 or @p试管编号='''')
	and (a.系统编号=@p系统编号 or @p系统编号='''')
        and (a.体检表编号=@p体检表名称 or @p体检表名称='''')
)	
or (体检状态=3 and isnull(复查体检表编号,'''')<>'''' and isnull(复查系统编号,'''')='''')
')
GO

SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_体检管理界面查询 Procedure Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_体检管理界面查询 Procedure'
END
GO


--  
-- Script to Create dbo.职业病体检_删除体检记录 in KAMA-AA251EA62C.jk2006 
-- Generated 星期一, 十二月 10, 2012, at 04:54 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_删除体检记录 Procedure'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


SET QUOTED_IDENTIFIER OFF
GO

exec('CREATE   proc dbo.职业病体检_删除体检记录
	@p系统编号 varchar(20)=''00110306260005''
as
set nocount on 
--declare @l健康档案编号 varchar(20)

--判断是否已下结论。
if exists(select * from 职业病体检_体检基本信息表 where 系统编号=@p系统编号 and 体检状态=3)
	select 1	
else begin
	--获取档案编号。
	--select @l健康档案编号=健康档案编号 from 职业病体检_体检基本信息表 where 系统编号=@p系统编号
	--select @l健康档案编号=isnull(@l健康档案编号,'''')

	--删除体检基本信息，通过触发器级联删除其他相关表内容。
	delete 职业病体检_体检基本信息表 where 系统编号=@p系统编号
	delete 体检管理_体检访问标志表 where 系统编号=@p系统编号

	--该人只存在1条体检记录，删除健康档案。
	if not exists(select * from (select count(*) as num from 职业病体检_体检基本信息表 where 系统编号=@p系统编号) a where a.num>0)
		delete 职业病体检_体检人员基本信息表 where 系统编号=@p系统编号
		
	--插入漏掉的编号。
	--insert into 体检管理_漏掉的编号表(编号名称,编号,已预定)
	--values(''系统编号'',@p系统编号,0)

    select 0
end
')
GO

SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_删除体检记录 Procedure Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_删除体检记录 Procedure'
END
GO


--  
-- Script to Create dbo.职业病体检_生成编号流水号 in KAMA-AA251EA62C.jk2006 
-- Generated 星期一, 十二月 10, 2012, at 04:54 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_生成编号流水号 Procedure'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


SET QUOTED_IDENTIFIER OFF
GO

exec('------------------------------------------------------------------------------------------
CREATE   PROCEDURE dbo.职业病体检_生成编号流水号 
        	@p编号名称 varchar(20)
AS
/****************************************************************************
    根据“体检管理_编号的最大流水号表”记录的指定编号名称的当前已使用的最大流水号，
生成新最大流水号返回，并把新流水号记入最大流水号表.
******************************************************************************/
    set nocount on 
    declare @l编号 int
    declare @l长度 int
    declare @l返回值 varchar(10)
    declare @l日期类型 int

    --select @l日期类型 = count(*) from  [体检管理_编号生成规则表] where 编号名称 = @p编号名称 and  组成 in (''yy'',''mm'',''dd'')  
    --set @l日期类型 =isnull(@l日期类型 ,1) 
    --if @l日期类型 = 1 
        begin    
        if exists(select 设置项目 from [职业病体检_业务设置信息表] 
                      where 设置项目 = ''编号最大流水号'' and datepart(yyyy,说明) = datepart(yyyy,getdate()))
            begin
            select @l编号=设置值 from [职业病体检_业务设置信息表] 
                      where 设置项目 = ''编号最大流水号'' and datepart(yyyy,说明) = datepart(yyyy,getdate())
            set @l编号 = @l编号 + 1
            update [职业病体检_业务设置信息表] set 设置值 = @l编号 
                  where  设置项目 = ''编号最大流水号'' and datepart(yyyy, 说明) = datepart(yyyy,getdate() )
            end
        else
            begin
            set @l编号 = 1
            insert into [职业病体检_业务设置信息表](设置项目,设置值,说明) values(''编号最大流水号'',''1'',getdate())
            end
        end
    
    set @l长度=7
    set @l返回值 =  convert(varchar(10),@l编号)
    set @l返回值 = replicate(''0'',@l长度 - len(@l返回值)) + @l返回值
    select @l返回值
')
GO

SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_生成编号流水号 Procedure Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_生成编号流水号 Procedure'
END
GO


--  
-- Script to Create dbo.职业病体检_结果信息 in KAMA-AA251EA62C.jk2006 
-- Generated 星期一, 十二月 10, 2012, at 04:54 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_结果信息 Procedure'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


SET QUOTED_IDENTIFIER OFF
GO

exec('/****************************************************************************
功能：根据传入的“科室名称“、”编号”查询该科室的结果信息。
******************************************************************************/

CREATE       proc [dbo].[职业病体检_结果信息]
	@p科室 varchar(20) = ''五官科'',
	@p编号 varchar(20) = ''01'',
	--张令 2012.12.06
	--bug号：0000016 
	--添加条件函数   ↓↓
	@p条件 varchar(150)=''''
	--2012.12.06  ↑↑
as
set nocount on
declare @lsql varchar(1000)

	select @lsql=''select distinct a.系统编号,a.姓名,a.性别,a.年龄,a.体检表编号 as 体检表名,a.体检类型,a.单位名称,convert(varchar(10),b.填写时间,2) 填写时间 
	  from 职业病体检_体检基本数据库 a, 职业病体检_结果信息_''+@p科室+'' b 
            where 1=1 and a.系统编号=b.系统编号 and (a.体检状态=''''2'''' or a.体检状态=''''3'''' or a.体检状态=''''4'''')
			   and  (substring(a.各科体检状态,''+@p编号+'',1)=''''1'''' or substring(a.各科体检状态,''+@p编号+'',1)=''''2'''')''

exec(@lsql+@p条件)
')
GO

SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_结果信息 Procedure Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_结果信息 Procedure'
END
GO


--  
-- Script to Create dbo.职业病体检_职业病史管理界面查询 in KAMA-AA251EA62C.jk2006 
-- Generated 星期一, 十二月 10, 2012, at 04:54 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_职业病史管理界面查询 Procedure'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


SET QUOTED_IDENTIFIER OFF
GO

exec('CREATE       proc dbo.职业病体检_职业病史管理界面查询 
	--2012-07-06 于登淼 ↓
	--代码中更改开始日期与截止日期精确到分钟和秒，所以这里更改下格式 
	--@p开始日期 VARCHAR ( 10 )=''2004-01-01'',
	--@p截止日期 VARCHAR ( 10 )=''2005-12-01'',
	@p开始日期 datetime =''2004-01-01'',
	@p截止日期 datetime =''2005-12-01'',
	--2012-07-06 于登淼 ↑
	@p体检表名称 VARCHAR ( 50 )='''',
    @p单位名称 VARCHAR ( 100 )='''',
    @p姓名 VARCHAR ( 20 )='''',
	@p体检单号 varchar(20)='''',
    @p试管编号 VARCHAR ( 20 )='''',
	@p系统编号 varchar(40)=''''
AS
set nocount on
if @p截止日期<>'''' 
   if charindex('' '',@p截止日期)=0 select @p截止日期=@p截止日期+'' 23:59:59''

select a.系统编号,姓名,性别,年龄,单位名称,试管编号,体检表编号,convert(varchar(10),体检日期,120) as 体检日期,体检结论,isnull(复查体检表编号,'''') as 复查体检表编号,isnull(复查系统编号,'''') as 复查系统编号,体检状态=
	case when 体检状态=3 then ''已下结论'' when 体检状态=0 then ''待病史录入'' when 体检状态=1 then ''待体检'' else ''未下结论'' end
from 职业病体检_体检基本信息表 a inner join  职业病体检_体检人员基本信息表 b on a.系统编号=b.系统编号
where ((体检日期>=@p开始日期 or @p开始日期='''')
		and  (体检日期<=@p截止日期 or @p截止日期='''')
		and  (单位名称 like ''%''+@p单位名称+''%'' or @p单位名称='''')
		and  (姓名 like ''%''+@p姓名+''%'' or @p姓名='''')
        --and (试管编号=@p试管编号 or @p试管编号='''')
	and (a.系统编号=@p系统编号 or @p系统编号='''')
)	
or (体检状态=3 and isnull(复查体检表编号,'''')<>'''' and isnull(复查系统编号,'''')='''')
')
GO

SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_职业病史管理界面查询 Procedure Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_职业病史管理界面查询 Procedure'
END
GO


--  
-- Script to Create dbo.职业病体检_返回相关病历信息 in KAMA-AA251EA62C.jk2006 
-- Generated 星期一, 十二月 10, 2012, at 04:54 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_返回相关病历信息 Procedure'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


SET QUOTED_IDENTIFIER OFF
GO

exec('CREATE   proc dbo.职业病体检_返回相关病历信息
	@str varchar (1000)='',
	@date1 varchar(20)='',
	@date2 varchar(20)=''
AS
declare @sql nvarchar(1000)
set nocount on

create table #table (系统编号 varchar(20),名称 varchar(50),文字结论 varchar(1000),医生编号 varchar(10),结论日期 varchar(20))
insert into #table 
select a.系统编号,b.名称,a.文字结论,c.编号, convert(varchar(10),a.结论日期,120) as 结论日期
--修改人：张令 2013.01.04  ↓↓
--修改说明：去掉convert(varchar(10),a.结论日期,120)的convert(varchar(10),,120)，只用a.结论日期就行了。
--from 职业病体检_科室结论表 a join 系统管理_字典_字典内容表 b on a.科室 = b.编号 and b.ID = 84 and convert(varchar(10),a.结论日期,120) between @date1 and @date2
from 职业病体检_科室结论表 a join 系统管理_字典_字典内容表 b on a.科室 = b.编号 and b.ID = 84 and a.结论日期 between @date1 and @date2
--修改人：张令 2013.01.04  ↑↑
				    join 系统管理_员工基本信息表 c on a.医生编号=c.编号 order by 系统编号

set @sql = ''select * from #table where 系统编号 in ('' + @str + '') order by 系统编号''
exec(@sql)

drop table #table
')
GO

SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_返回相关病历信息 Procedure Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_返回相关病历信息 Procedure'
END
GO


--  
-- Script to Create dbo.职业病体检_退回编号流水号 in KAMA-AA251EA62C.jk2006 
-- Generated 星期一, 十二月 10, 2012, at 04:54 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.职业病体检_退回编号流水号 Procedure'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO


SET QUOTED_IDENTIFIER OFF
GO

exec('CREATE  PROCEDURE dbo.职业病体检_退回编号流水号
	@p编号名称 varchar(20)=''系统编号'',
	@p编号 varchar(20)=''102000001''
AS
/****************************************************************************
功能：根据“体检管理_编号的最大流水号表”记录的指定编号名称的当前已使用的最大流水号，
     把最大流水号减一。
******************************************************************************/
set nocount on 
declare @l编号 int          --当前最大流水号。
declare @l长度 int          --流水号长度。
declare @l日期类型 int      --0 没有生成规则，1 编号中只包含年份，2 编号中包含年份+月份，3 编号中有年月日。
declare @l流水号 varchar(10)--参数@p编号中的流水号。
declare @lintInsert as int

 
BEGIN
    select @lintInsert =0

    --获取当前编号的流水号长度。
    set @l长度=isnull(@l长度,7)

    --获取编号中的流水号。
    set @l流水号=right(@p编号,@l长度)
    begin
	--编号中包含年份，则编号必须每年从头开始编。
        set @l编号 =cast(@l流水号 as int) - 1
		if not exists(select * from [职业病体检_业务设置信息表]
			    	    where  设置项目=''编号最大流水号'' and datepart(yyyy, 说明) = datepart(yyyy,getdate()) 
						and 设置值=cast(@l流水号 as int))
			select @lintInsert=1
		else
	        update [职业病体检_业务设置信息表] set 设置值 = @l编号 
    	    where  设置项目=''编号最大流水号'' and datepart(yyyy, 说明) = datepart(yyyy,getdate()) 
				and 设置值=cast(@l流水号 as int)
    end		
END
')
GO

SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.职业病体检_退回编号流水号 Procedure Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.职业病体检_退回编号流水号 Procedure'
END
GO

--  
-- Script to Create dbo.系统管理_字典_体检结论模板表 in KAMA-AA251EA62C.jk2006 
-- Generated 星期四, 十二月 13, 2012, at 04:08 PM 
--  
-- Please backup KAMA-AA251EA62C.jk2006 before executing this script
--  
-- ** Script Begin **
BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

PRINT 'Creating dbo.系统管理_字典_体检结论模板表 Table'
GO

SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, QUOTED_IDENTIFIER, CONCAT_NULL_YIELDS_NULL ON
GO

SET NUMERIC_ROUNDABORT OFF
GO

CREATE TABLE [dbo].[系统管理_字典_体检结论模板表] (
   [ID编号] [int] IDENTITY (1, 1) NOT NULL,
   [科室编号] [varchar] (5) COLLATE Chinese_PRC_BIN NOT NULL,
   [科室名称] [varchar] (20) COLLATE Chinese_PRC_BIN NOT NULL,
   [结论模板] [varchar] (500) COLLATE Chinese_PRC_BIN NOT NULL,
   [医生编号] [varchar] (10) COLLATE Chinese_PRC_BIN NOT NULL,
   [结论日期] [datetime] NOT NULL,
   [结论标准] [varchar] (10) COLLATE Chinese_PRC_BIN NULL CONSTRAINT [DF_系统管理_字典_体检结论模板表_结论标准] DEFAULT ('合格')
)
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
   ALTER TABLE [dbo].[系统管理_字典_体检结论模板表] ADD CONSTRAINT [PK__系统管理_字典_体检结论模板表__3DBE1285] PRIMARY KEY CLUSTERED ([ID编号])
GO

IF @@ERROR <> 0
   IF @@TRANCOUNT = 1 ROLLBACK TRANSACTION
GO

IF @@TRANCOUNT = 1
BEGIN
   PRINT 'dbo.系统管理_字典_体检结论模板表 Table Added Successfully'
   COMMIT TRANSACTION
END ELSE
BEGIN
   PRINT 'Failed To Add dbo.系统管理_字典_体检结论模板表 Table'
END
GO


-------------收费管理_返回收费信息-----------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

--exec 收费管理_返回收费信息 '','','','','2008-07-24','2008-07-24','','8888'

ALTER       PROC 收费管理_返回收费信息 
(	
	@p收费编号 VARCHAR(40)='',
	@p收据号   VARCHAR(40)='',
	@p交费人   VARCHAR(100)='',
	@p交费单位 VARCHAR(100)='',	
	@p开始时间 VARCHAR(40)='2005/02/08',
	@p结束时间 VARCHAR(40)='2007/12/31',
--	@p业务科室 varchar(40)='',--名称
	@p对应业务  varchar(20)='', --一般、门诊
	@p收款人 varchar(10)='' --收费人编号
)
AS
SET NOCOUNT ON


--构造构临时表
CREATE  TABLE #TEMP_返回值表 (
--	收费批号 VARCHAR(14) COLLATE database_default,
	收费编号 VARCHAR(14) COLLATE database_default,
	票据号 VARCHAR(30) COLLATE database_default,
        交费人 VARCHAR(20) COLLATE database_default,
	交费单位 VARCHAR(80) COLLATE database_default,
	金额 dec(12,2),
        交费日期 varchar(10) COLLATE database_default,
	收费人 VARCHAR(20) COLLATE database_default,
	主管科室名称 VARCHAR(200) COLLATE database_default,
	打折比率 NUMERIC(5,2),
	交费方式 varchar(20) COLLATE database_default,
	开户银行 VARCHAR(200) COLLATE database_default,
     	收费状态 CHAR(1) COLLATE database_default,
	标识 INT--标示：1收费；2退费
)
--未收费记录。
INSERT INTO #TEMP_返回值表 (收费编号,交费单位,主管科室名称,交费人,
                           交费日期,收费人,打折比率,收费状态,交费方式,标识,开户银行,金额)
SELECT  收费编号,交费单位名称,主管科室名称,交费人,
        convert(varchar(10),交费日期,120),收费人姓名,打折比率,收费状态,交费方式名称,收费状态,开户银行,sum(金额)        
FROM 收费管理_打印费用信息
WHERE  (@p收费编号='' OR 收费编号>=@p收费编号) AND
	   (@p收据号='' OR 收据号<=@p收据号	 ) AND
	   (@p交费人='' OR 交费人=@p交费人) AND
       (@p交费单位='' OR 交费单位名称=@p交费单位) AND
--	(主管科室名称=@p业务科室 or @p业务科室='') and
	(对应业务=@p对应业务 or @p对应业务='') and
--	(收费人=@p收款人 or @p收款人 ='') and
	   (收费状态 =0 ) 	
group by 收费编号,交费单位名称,主管科室名称,交费人,
        convert(varchar(10),交费日期,120),收费人姓名,
        打折比率,收费状态,交费方式名称,开户银行

--收费记录（和报废记录）
INSERT INTO #TEMP_返回值表 (收费编号,票据号,交费单位,主管科室名称,交费人,
                           交费日期,收费人,打折比率,收费状态,交费方式,标识,开户银行,金额)
SELECT  收费编号,收据号,交费单位名称,主管科室名称,交费人,
        convert(varchar(10),交费日期,120),收费人姓名,
        打折比率,收费状态,交费方式名称,收费状态,开户银行,sum(金额)
FROM 收费管理_打印费用信息
WHERE  (@p收费编号='' OR 收据号>=@p收费编号) AND
	   (@p收据号='' OR 收据号<=@p收据号	 ) AND
	   (@p交费人='' OR 交费人=@p交费人) AND
       (@p交费单位='' OR 交费单位名称=@p交费单位) AND
	   (@p开始时间='' OR @p结束时间='' OR ( 交费日期 between @p开始时间 AND @p结束时间 ))	AND
--	(主管科室名称=@p业务科室 or @p业务科室='') and
	(对应业务=@p对应业务 or @p对应业务='') and
	(收费人=@p收款人 or @p收款人 ='') and
	   (收费状态 =1 OR 收费状态 =3) 	
group by 收费编号,收据号,交费单位名称,主管科室名称,交费人,
        convert(varchar(10),交费日期,120),收费人姓名,
        打折比率,收费状态,交费方式名称,开户银行

--退费记录
/*INSERT INTO #TEMP_返回值表 (收费编号,票据号,交费单位,交费人,
                           交费日期,收费人,打折比率,收费状态,交费方式,标识,开户银行,金额)
SELECT   收费编号,收据号,交费单位名称,交费人,
         convert(varchar(10),退费日期,111),收费人姓名,
         打折比率,收费状态,交费方式名称,收费状态,开户银行,sum(0-金额)
FROM dbo.收费管理_打印费用信息
WHERE  (@p收费编号='' OR 收费编号=@p收费编号) AND
	   (@p收据号='' OR 收据号=@p收据号	 ) AND
	   (@p交费人='' OR 交费人=@p交费人) AND
       (@p交费单位='' OR 交费单位名称=@p交费单位) AND
	   (@p开始时间='' OR @p结束时间='' OR ( 退费日期 between @p开始时间 AND @p结束时间 ))	AND
--	(主管科室名称=@p业务科室 or @p业务科室='') and
	(收费人=@p收款人  or 退费人=@p收款人 or @p收款人 ='') and
	(对应业务=@p对应业务 or @p对应业务='') and
	   (收费状态 =2) 
group by 收费编号,收据号,交费单位名称,交费人,
         convert(varchar(10),退费日期,111),收费人姓名,
         打折比率,收费状态,交费方式名称,开户银行
*/
/*update #TEMP_返回值表 set 票据号=isnull(a.收据号 ,'')
from (select 收费批号,min(收据号) as 收据号 from 收费管理_打印费用信息 group by 收费批号) a,#TEMP_返回值表 b
where a.收费批号=b.收费批号


update #TEMP_返回值表 set 票据号=票据号+ case when 票据号<>isnull(a.收据号,'') then '～'+a.收据号 else '' end
from (select 收费批号,max(收据号) as 收据号 from 收费管理_打印费用信息 group by 收费批号) a,
    #TEMP_返回值表 b
where a.收费批号=b.收费批号
*/
--返回结果集
SELECT * FROM #TEMP_返回值表 ORDER BY 票据号 DESC,金额 DESC
DROP TABLE #TEMP_返回值表

--exec 收费管理_返回收费信息 '','','','','2008-07-16','2008-07-17','','',''

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


------------------职业病体检_查询统计视图------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

ALTER     view dbo.职业病体检_查询统计视图
as
select a.系统编号,b.收费批号,a.姓名,a.性别,b.体检表编号 as 体检表,b.体检类型 as 体检人员类型,a.危害因素,
		b.体检类别,b.体检日期,a.现工种,f.单位名称,f.片区,f.卫生种类,f.行业类别,b.复查体检表编号,
		b.复查系统编号,g.名称 as 科室名称,d.文字结论,d.结论日期,e.编号 as 医师编号,e.姓名 as 医师姓名,
		收费金额 = case when d.科室 = 16 then b.收费金额 
		else null
		end,
		体检状态 = case
			--2012.12.10 张令 ↓
			--增加多种体检状态
			when b.体检状态=0 then '未校核'
			when b.体检状态=1 then '未打清单'
			when b.体检状态=2 then '未录入受检者个人信息'
			when b.体检状态=3 then '体检中'
			when b.体检状态=4 then '未下结论'
			when b.体检状态=5 then '已下结论'
			when b.体检状态=6 then '已复核'
			when b.体检状态=7 then '已发报告'
			when b.体检状态=8 then '待复查'
			end
			--2012.12.10 张令 ↑
      from 职业病体检_体检人员基本信息表 a left join 职业病体检_体检基本信息表 b on a.系统编号=b.系统编号
					 left join 职业病体检_职业史表 c on b.系统编号=c.系统编号
					 left join 职业病体检_科室结论表 d on c.系统编号 = d.系统编号
					 left join 系统管理_员工基本信息表 e on d.医生编号 = e.编号
					 left join 单位档案_单位基本信息视图 f on a.单位申请编号=f.申请编号
					 left join 系统管理_字典_字典内容表 g on d.科室 = g.编号 and g.ID = 84

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO



---------------------------------------------
/*
  查询出可以打印报告和已经打印并保存的word报告
  作者：罗李奎 
  时间：2013-1-14 
*/
---------------------------------------------
create               proc [dbo].[职业病体检_查询体检报告信息]
	@p开始日期 datetime ='2004-01-01',
	@p截止日期 datetime ='2005-12-01',
	@p体检表名称 VARCHAR ( 50 )='',
	@p系统编号 varchar(40)='',
	@p单位名称 VARCHAR ( 100 )='',
        @p姓名 VARCHAR ( 20 )=''
as
set nocount on 


if @p截止日期<>'' 
   if charindex(' ',@p截止日期)=0 select @p截止日期=@p截止日期+' 23:59:59'

	select a.系统编号,b.报告编号,c.姓名,c.性别,c.单位名称,a.体检表编号 as 体检表名称,a.体检类型,a.体检类别, Convert(varchar(100),a.体检日期,23)as 体检日期,
		  case a.体检状态 when 6 then '未打印' when 7 then '已打印'end as 报告状态
			from 职业病体检_体检基本信息表 a left join 职业病体检_体检报告信息表 b on a.系统编号=b.系统编号  left join 职业病体检_体检人员基本信息表 c  
				 on a.系统编号=c.系统编号
			where ((体检日期>=@p开始日期 or @p开始日期='')
		and  (体检日期<=@p截止日期 or @p截止日期='')
		and (a.系统编号=@p系统编号 or @p系统编号='')
        	and (a.体检表编号=@p体检表名称 or @p体检表名称='')
		and 体检状态 in(6,7)
		and  (单位名称 like '%'+@p单位名称+'%' or @p单位名称='')
		and  (姓名 like '%'+@p姓名+'%' or @p姓名='')
			 )		







GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

