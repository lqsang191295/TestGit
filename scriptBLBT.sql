GO
IF EXISTS(SELECT * FROM SYS_FunctionList WHERE FunctionID = 'HCSPR110')
BEGIN
	DELETE FROM SYS_FunctionList WHERE FunctionID = 'HCSPR110'
END
GO
INSERT [dbo].[SYS_FunctionList] ([Language], [FunctionID], [UserID], [FunctionType], [DefaultName], [CustomName], [Description], [ParentID], [Module], [AssemblyName], [ClassName], [EntityName], [FormName], [Url], [TabControl], [LargeIcon], [SmallIcon], [Color], [Leadtime], [Predicate], [DataValue], [Operation], [DisplayMode], [Height], [Width], [Counts], [IsCollapse], [IsFunction], [IsActive], [IsBookmark], [IsCustomize], [ActiveSysFuction], [ActiveMoreFunction], [ActiveFieldPermission], [LockFavorite], [TreeLevel], [Sorting], [Version], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [GridViewName]) VALUES (N'VN', N'HCSPR110', N'', N'S', N'Định nghĩa bảng lương bằng tay', N'Định nghĩa bảng lương bằng tay', N'', N'HCSPR_Other', N'HCSPR', NULL, NULL, NULL, NULL, N'#page=html/pages/HeThongTinhLuong/CacTinhNang/DinhNghiaBangLuongKhachHang.html', NULL, NULL, N'business-objects-experience', N'lv-function-style-9', 0, NULL, NULL, NULL, N'', CAST(0.0000 AS Decimal(9, 4)), CAST(0.0000 AS Decimal(9, 4)), 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, N'TS0140', N'x00.00', CAST(N'2017-12-26T14:07:03.090' AS DateTime), N'ADMIN', CAST(N'2018-01-18T13:43:58.887' AS DateTime), NULL, NULL)
GO
---
GO
IF NOT EXISTS(SELECT TOP(1)1 FROM SYS_FormLabels WHERE LabelName = 'HCSPR110')
BEGIN
INSERT [dbo].[SYS_FormLabels] ([UserID], [Language], [FormName], [EntityName], [FieldName], [LabelName], [LabelType], [DefaultName], [CustomName], [Description], [IsGrid], [IsVisible], [IsSystem], [IsUserDefined], [TabOrder], [Version], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [GridviewName]) VALUES (N'admin', N'EN', N'system', N'', NULL, N'HCSPR110', N'LVFunctionCaption', N'Customer payroll definition', N'Customer payroll definition', NULL, 0, 0, 0, 0, N'0', N'x01.00', CAST(N'2016-06-27T15:38:33.813' AS DateTime), N'admin', CAST(N'2017-10-02T17:31:27.963' AS DateTime), N'nlvphi', NULL)
INSERT [dbo].[SYS_FormLabels] ([UserID], [Language], [FormName], [EntityName], [FieldName], [LabelName], [LabelType], [DefaultName], [CustomName], [Description], [IsGrid], [IsVisible], [IsSystem], [IsUserDefined], [TabOrder], [Version], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [GridviewName]) VALUES (N'admin', N'VN', N'system', N'', NULL, N'HCSPR110', N'LVFunctionCaption', N'Định nghĩa bảng lương bằng tay', N'Định nghĩa bảng lương bằng tay', NULL, 0, 0, 0, 0, N'0', N'x01.00', CAST(N'2016-06-27T15:38:33.813' AS DateTime), N'admin', CAST(N'2017-10-02T17:31:27.963' AS DateTime), N'nlvphi', NULL)
END
GO
---asdasdasdasdasd

"AAAAAAAAAAA hihihi đồ ngốc"
"Test thử xem sao Giờ t lại test típ xem sao zzzzzzzzzzzzz bbbbbbbbbbbbbb" 
"Giờ t thêm 1 dòng thử"

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'HCSLS_CustomePayrollField') AND OBJECTPROPERTY(id, N'IsTable') = 1)
	BEGIN
		CREATE TABLE [dbo].[HCSLS_CustomePayrollField](
		[RecID] [bigint] IDENTITY(1,1) NOT NULL,
		[TemplateID] [bigint] NOT NULL,
		[FieldName] [varchar](200) NOT NULL,
		[ReferenceTable] [varchar](200) NULL,
		[Description1] [nvarchar](max) NULL,
		[Description2] [nvarchar](max) NULL,
		[Type] [nvarchar](50) NULL,
		[Ordinal] [int] NOT NULL,
		[CreatedOn] [datetime] NOT NULL,
		[CreatedBy] [nvarchar](20) NOT NULL,
		[ModifiedOn] [datetime] NULL,
		[ModifiedBy] [nvarchar](20) NULL,
		 CONSTRAINT [PK_HCSLS_CustomePayrollField_1] PRIMARY KEY CLUSTERED 
		(
			[RecID] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
		ALTER TABLE [dbo].[HCSLS_CustomePayrollField] ADD  CONSTRAINT [DF_HCSLS_CustomePayrollField_Ordinal]  DEFAULT ((0)) FOR [Ordinal]
		ALTER TABLE [dbo].[HCSLS_CustomePayrollField] ADD  CONSTRAINT [DF_HCSLS_CustomePayrollField_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
		ALTER TABLE [dbo].[HCSLS_CustomePayrollField] ADD  CONSTRAINT [DF_HCSLS_CustomePayrollField_CreatedBy]  DEFAULT (N'app') FOR [CreatedBy]
	END
ELSE 
	BEGIN
	    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'TemplateID' AND Object_ID = OBJECT_ID(N'HCSLS_CustomePayrollField'))  
			BEGIN
			    ALTER TABLE dbo.HCSLS_CustomePayrollField ADD
				TemplateID BIGINT DEFAULT 0 NOT NULL
			END
	END
GO
/****** Object:  Table [dbo].[HCSLS_CustomePayrollFieldMaster]    Script Date: 2/5/2018 3:28:33 PM ******/
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'HCSLS_CustomePayrollFieldMaster') AND OBJECTPROPERTY(id, N'IsTable') = 1)
	BEGIN
    	CREATE TABLE [dbo].[HCSLS_CustomePayrollFieldMaster](
		[TemplateID] [bigint] IDENTITY(1,1) NOT NULL,
		[TemplateName] [nvarchar](150) NOT NULL,
		[Description] [nvarchar](250) NULL,
		[FieldCount] [varchar](20) NULL,
		[IsPayThroughBank] [bit] NULL,
		[IsMultiColIn1Day] [bit] NULL,
		[ExportEmpWMultiRows] [bit] NULL,
		[CreatedOn] [datetime] NOT NULL,
		[CreatedBy] [nvarchar](20) NOT NULL,
		[ModifiedOn] [datetime] NULL,
		[ModifiedBy] [nvarchar](20) NULL,
		 CONSTRAINT [PK_HCSLS_CustomePayrollFieldMaster] PRIMARY KEY CLUSTERED 
		(
			[TemplateID] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY]
		ALTER TABLE [dbo].[HCSLS_CustomePayrollFieldMaster] ADD  CONSTRAINT [DF_HCSLS_CustomePayrollFieldMaster_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
		ALTER TABLE [dbo].[HCSLS_CustomePayrollFieldMaster] ADD  CONSTRAINT [DF_HCSLS_CustomePayrollFieldMaster_CreatedBy]  DEFAULT (N'app') FOR [CreatedBy]
	END
ELSE 
	BEGIN
	    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'TemplateID' AND Object_ID = OBJECT_ID(N'HCSLS_CustomePayrollFieldMaster'))  
			BEGIN
			    ALTER TABLE dbo.HCSLS_CustomePayrollFieldMaster ADD
				TemplateID BIGINT IDENTITY(1,1) NOT NULL
			END
	END
GO
/****** Object:  Table [dbo].[HCSLS_CustomePayrollTemplate]    Script Date: 2/5/2018 3:28:33 PM ******/
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'HCSLS_CustomePayrollTemplate') AND OBJECTPROPERTY(id, N'IsTable') = 1)
	BEGIN
		CREATE TABLE [dbo].[HCSLS_CustomePayrollTemplate](
			[ID] [bigint] IDENTITY(1,1) NOT NULL,
			[TemplateID] [bigint] NOT NULL,
			[Language] [nvarchar](10) NOT NULL,
			[FunctionID] [nvarchar](20) NOT NULL,
			[TemplateName] [nvarchar](400) NULL,
			[EntityName] [nvarchar](150) NOT NULL,
			[TemplateContent] [varbinary](max) NULL,
			[CreatedOn] [datetime] NOT NULL,
			[CreatedBy] [nvarchar](20) NOT NULL,
			[ModifiedOn] [datetime] NULL,
			[ModifiedBy] [nvarchar](20) NULL,
		 CONSTRAINT [PK_HCSLS_CustomePayrollTemplate] PRIMARY KEY CLUSTERED 
		(
			[ID] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
		ALTER TABLE [dbo].[HCSLS_CustomePayrollTemplate] ADD  CONSTRAINT [DF_HCSLS_CustomePayrollTemplate_EntityName]  DEFAULT ((1)) FOR [EntityName]
		ALTER TABLE [dbo].[HCSLS_CustomePayrollTemplate] ADD  CONSTRAINT [DF_HCSLS_CustomePayrollTemplate_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
		ALTER TABLE [dbo].[HCSLS_CustomePayrollTemplate] ADD  CONSTRAINT [DF_HCSLS_CustomePayrollTemplate_CreatedBy]  DEFAULT (N'application') FOR [CreatedBy]
	END
ELSE 
	BEGIN
	    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'TemplateID' AND Object_ID = OBJECT_ID(N'HCSLS_CustomePayrollTemplate'))  
			BEGIN
			    ALTER TABLE dbo.HCSLS_CustomePayrollTemplate ADD
				TemplateID BIGINT DEFAULT 0 NOT NULL
			END
	END
GO
/****** Object:  Table [dbo].[HCSPR_CustomPayrollMaster]    Script Date: 2/5/2018 3:28:33 PM ******/
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'HCSPR_CustomPayrollMaster') AND OBJECTPROPERTY(id, N'IsTable') = 1)
	BEGIN
		CREATE TABLE [dbo].[HCSPR_CustomPayrollMaster](
			[ID] [bigint] IDENTITY(1,1) NOT NULL,
			[TemplateID] [BIGINT] NOT NULL,
			[Title1] [nvarchar](max) NULL,
			[Title2] [nvarchar](max) NULL,
			[Content1] [nvarchar](max) NULL,
			[Content2] [nvarchar](max) NULL,
			[Note] [nvarchar](max) NULL,
			[GenDate] [datetime] NULL,
			[CreatedOn] [datetime] NOT NULL,
			[CreatedBy] [nvarchar](20) NOT NULL,
			[ModifiedOn] [datetime] NULL,
			[ModifiedBy] [nvarchar](20) NULL,
		 CONSTRAINT [PK_HCSPR_CustomPayrollMaster] PRIMARY KEY CLUSTERED 
		(
			[ID] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
		ALTER TABLE [dbo].[HCSPR_CustomPayrollMaster] ADD  CONSTRAINT [DF_HCSPR_CustomPayrollMaster_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
		ALTER TABLE [dbo].[HCSPR_CustomPayrollMaster] ADD  CONSTRAINT [DF_HCSPR_CustomPayrollMaster_CreatedBy]  DEFAULT (N'app') FOR [CreatedBy]
	END
ELSE 
	BEGIN
	    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'TemplateID' AND Object_ID = OBJECT_ID(N'HCSPR_CustomPayrollMaster'))  
			BEGIN
			    ALTER TABLE dbo.HCSPR_CustomPayrollMaster ADD
				TemplateID BIGINT DEFAULT 0 NOT NULL
			END
	END
GO
/****** Object:  Table [dbo].[HCSPR_CustomPayrollMasterDetail]    Script Date: 2/5/2018 3:28:33 PM ******/
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'HCSPR_CustomPayrollMasterDetail') AND OBJECTPROPERTY(id, N'IsTable') = 1)
	BEGIN
		CREATE TABLE [dbo].[HCSPR_CustomPayrollMasterDetail](
			[ID] [bigint] IDENTITY(1,1) NOT NULL,
			[TemplateID] [BIGINT] NOT NULL,
			[ParentID] [bigint] NOT NULL,
			[FieldName] [nvarchar](50) NOT NULL,
			[Value] [nvarchar](max) NULL,
			[GroupKey] [nvarchar](200) NULL,
			[CreatedOn] [datetime] NOT NULL,
			[CreatedBy] [nvarchar](20) NOT NULL,
			[ModifiedOn] [datetime] NULL,
			[ModifiedBy] [nvarchar](20) NULL,
		 CONSTRAINT [PK_HCSPR_CustomPayrollMasterDetail] PRIMARY KEY CLUSTERED 
		(
			[ID] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
		ALTER TABLE [dbo].[HCSPR_CustomPayrollMasterDetail] ADD  CONSTRAINT [DF_HCSPR_CustomPayrollMasterDetail_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
		ALTER TABLE [dbo].[HCSPR_CustomPayrollMasterDetail] ADD  CONSTRAINT [DF_HCSPR_CustomPayrollMasterDetail_CreatedBy]  DEFAULT (N'app') FOR [CreatedBy]
	END
ELSE 
	BEGIN
	     IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'TemplateID' AND Object_ID = OBJECT_ID(N'HCSPR_CustomPayrollMasterDetail'))  
			BEGIN
			    ALTER TABLE dbo.HCSPR_CustomPayrollMasterDetail ADD
				TemplateID BIGINT DEFAULT 0 NOT NULL
			END
	END
GO
/****** Object:  Table [dbo].[HCSPR_CustomPayrollMasterDetail_tmp]    Script Date: 2/5/2018 3:28:33 PM ******/
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'HCSPR_CustomPayrollMasterDetail_tmp') AND OBJECTPROPERTY(id, N'IsTable') = 1)
	BEGIN
	    CREATE TABLE [dbo].[HCSPR_CustomPayrollMasterDetail_tmp](
			[ID] [bigint] IDENTITY(1,1) NOT NULL,
			[TemplateID] [BIGINT] NOT NULL,
			[GroupKey] [nvarchar](200) NULL,
			[FieldName] [nvarchar](50) NOT NULL,
			[Value] [nvarchar](max) NULL,
			[CreatedOn] [datetime] NOT NULL,
			[CreatedBy] [nvarchar](20) NOT NULL,
			[ModifiedOn] [datetime] NULL,
			[ModifiedBy] [nvarchar](20) NULL,
		 CONSTRAINT [PK_HCSPR_CustomPayrollMasterDetail_tmp] PRIMARY KEY CLUSTERED 
		(
			[ID] ASC
		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
		) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
		ALTER TABLE [dbo].[HCSPR_CustomPayrollMasterDetail_tmp] ADD  CONSTRAINT [DF_HCSPR_CustomPayrollMasterDetail_tmp_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
		ALTER TABLE [dbo].[HCSPR_CustomPayrollMasterDetail_tmp] ADD  CONSTRAINT [DF_HCSPR_CustomPayrollMasterDetail_tmp_CreatedBy]  DEFAULT (N'app') FOR [CreatedBy]
		EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kiểm template:
		1-Dùng cho phân tích số liệu
		2-Dùng cho thêm nhanh nhân viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HCSLS_CustomePayrollTemplate', @level2type=N'COLUMN',@level2name=N'EntityName'
	END
ELSE 
	BEGIN
	     IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'TemplateID' AND Object_ID = OBJECT_ID(N'HCSPR_CustomPayrollMasterDetail_tmp'))  
			BEGIN
			    ALTER TABLE dbo.HCSPR_CustomPayrollMasterDetail_tmp ADD
				TemplateID BIGINT DEFAULT 0 NOT NULL
			END
	END
GO
---
GO
IF EXISTS(SELECT TOP(1) 1 FROM HCSSYS_ComboboxList WHERE ComboboxName = N'HCSPR_CbbPrTemplate')
	DELETE FROM HCSSYS_ComboboxList WHERE ComboboxName = N'HCSPR_CbbPrTemplate'
GO
INSERT [dbo].[HCSSYS_ComboboxList] ([Language], [ComboboxName], [DisplayName], [TableName], [TableFields], [Predicate], [DisplayMembers], [ViewMember], [ValueMember], [FieldSorting], [FieldFilter], [Url], [MultiSelect], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'EN', N'HCSPR_CbbPrTemplate', N'PayrollTemplate', N'HCSLS_CustomePayrollFieldMaster', N'TemplateID, TemplateName', NULL, N'TemplateName, TemplateID', N'TemplateName', N'TemplateID', N'TemplateName', N'TemplateName, TemplateID', NULL, 0, CAST(N'2017-04-01T00:00:00.000' AS DateTime), N'application', NULL, NULL)
INSERT [dbo].[HCSSYS_ComboboxList] ([Language], [ComboboxName], [DisplayName], [TableName], [TableFields], [Predicate], [DisplayMembers], [ViewMember], [ValueMember], [FieldSorting], [FieldFilter], [Url], [MultiSelect], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'VN', N'HCSPR_CbbPrTemplate', N'Mẫu bảng lương', N'HCSLS_CustomePayrollFieldMaster', N'TemplateID, TemplateName', NULL, N'TemplateName, TemplateID', N'TemplateName', N'TemplateID', N'TemplateName', N'TemplateName, TemplateID', NULL, 0, CAST(N'2017-04-01T00:00:00.000' AS DateTime), N'application', NULL, NULL)
GO
---
GO
IF EXISTS(SELECT TOP(1) 1 FROM SYS_ValueList WHERE ListName = N'HCSLS_Cus.FontWeight')
	DELETE FROM SYS_ValueList WHERE ListName = N'HCSLS_Cus.FontWeight'
GO
INSERT [dbo].[SYS_ValueList] ([Language], [ListName], [ListType], [DefaultValues], [CustomValues], [IconSet], [ColorSet], [ReturnValue], [ColumnWidth], [DisplayColumns], [DisplayRows], [RowSize], [Note], [Version], [MultiSelect], [IsUserDefined], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'EN', N'HCSLS_Cus.FontWeight', N'2', N'0;Normal;1;Bold', N'0;Normal;1;Bold', NULL, NULL, N'value', N'', N'text', 15, 22, N'Time Separator', N'x00.00', 0, 0, CAST(N'2011-09-09T09:30:14.477' AS DateTime), N'ADMIN', CAST(N'2018-02-06T10:49:39.997' AS DateTime), N'admin')
INSERT [dbo].[SYS_ValueList] ([Language], [ListName], [ListType], [DefaultValues], [CustomValues], [IconSet], [ColorSet], [ReturnValue], [ColumnWidth], [DisplayColumns], [DisplayRows], [RowSize], [Note], [Version], [MultiSelect], [IsUserDefined], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'VN', N'HCSLS_Cus.FontWeight', N'2', N'0;Normal;1;Bold', N'0;Normal;1;Bold', NULL, NULL, N'value', N'', N'text', 15, 22, N'Time Separator', N'x00.00', 0, 0, CAST(N'2011-09-09T09:30:14.477' AS DateTime), N'ADMIN', CAST(N'2018-02-06T10:49:39.997' AS DateTime), N'admin')
GO
---
GO
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'HCSLS_CustomePayrollField') AND OBJECTPROPERTY(id, N'IsTable') = 1)
BEGIN
    IF NOT EXISTS (select * from sysobjects,syscolumns where sysobjects.id = syscolumns.id and sysobjects.name = 'HCSLS_CustomePayrollField' and syscolumns.name = 'TextDecorator')
	BEGIN
	    ALTER TABLE HCSLS_CustomePayrollField ADD TextDecorator INT NOT NULL DEFAULT 0
	END
	IF NOT EXISTS (select * from sysobjects,syscolumns where sysobjects.id = syscolumns.id and sysobjects.name = 'HCSLS_CustomePayrollField' and syscolumns.name = 'FontWeight')
	BEGIN
	    ALTER TABLE HCSLS_CustomePayrollField ADD FontWeight INT NOT NULL DEFAULT 0
	END
END
GO
---
GO
IF EXISTS(SELECT TOP(1) 1 FROM SYS_ValueList WHERE ListName = N'HCSLS_Cus.TextDecorator')
	DELETE FROM SYS_ValueList WHERE ListName = N'HCSLS_Cus.TextDecorator'
GO
INSERT [dbo].[SYS_ValueList] ([Language], [ListName], [ListType], [DefaultValues], [CustomValues], [IconSet], [ColorSet], [ReturnValue], [ColumnWidth], [DisplayColumns], [DisplayRows], [RowSize], [Note], [Version], [MultiSelect], [IsUserDefined], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'EN', N'HCSLS_Cus.TextDecorator', N'2', N'0;None;1;Underline;2;Overline;3;LineThrough', N'0;None;1;Underline;2;Overline;3;LineThrough', NULL, NULL, N'value', N'', N'text', 15, 22, N'Time Separator', N'x00.00', 0, 0, CAST(N'2011-09-09T09:30:14.477' AS DateTime), N'ADMIN', CAST(N'2018-02-06T10:49:39.997' AS DateTime), N'admin')
INSERT [dbo].[SYS_ValueList] ([Language], [ListName], [ListType], [DefaultValues], [CustomValues], [IconSet], [ColorSet], [ReturnValue], [ColumnWidth], [DisplayColumns], [DisplayRows], [RowSize], [Note], [Version], [MultiSelect], [IsUserDefined], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'VN', N'HCSLS_Cus.TextDecorator', N'2', N'0;None;1;Underline;2;Overline;3;LineThrough', N'0;None;1;Underline;2;Overline;3;LineThrough', NULL, NULL, N'value', N'', N'text', 15, 22, N'Time Separator', N'x00.00', 0, 0, CAST(N'2011-09-09T09:30:14.477' AS DateTime), N'ADMIN', CAST(N'2018-02-06T10:49:39.997' AS DateTime), N'admin')
GO
---
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'HCSPR_SPInsertDataPayrollMaster') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	DROP PROCEDURE HCSPR_SPInsertDataPayrollMaster
GO
CREATE PROCEDURE [dbo].[HCSPR_SPInsertDataPayrollMaster]
	@idgendate int,
	@tempId BIGINT,
	@gendate DATETIME,
	@titlevn NVARCHAR(MAX),
	@titleen NVARCHAR(MAX) = NULL,
	@contentvn NVARCHAR(MAX) = NULL,
	@contenten NVARCHAR(MAX) = NULL,
	@note NVARCHAR(MAX) = NULL,
	@userid NVARCHAR(50)
AS 
BEGIN
	DECLARE @id BIGINT
	--
	IF @idgendate IS NULL
		BEGIN
			IF EXISTS (SELECT 1 FROM HCSPR_CustomPayrollMaster WHERE GenDate = @gendate AND TemplateID = @tempId)
				BEGIN
					SELECT @id = ID
						FROM HCSPR_CustomPayrollMaster 
						WHERE GenDate = @gendate AND TemplateID = @tempId
					--
					UPDATE dbo.HCSPR_CustomPayrollMaster 
					SET Title1 = @titlevn, Title2 = @titleen, Content1 = @contentvn, Content2 = @contenten, Note = @note, GenDate = @gendate
					WHERE GenDate = @gendate AND TemplateID = @tempId
					--
					DELETE FROM HCSPR_CustomPayrollMasterDetail WHERE ParentID = @id AND TemplateID = @tempId
					--
					INSERT INTO HCSPR_CustomPayrollMasterDetail(ParentID, FieldName, Value, GroupKey, CreatedOn, CreatedBy, TemplateID)
					SELECT @id AS ParentID, FieldName, Value, GroupKey, CreatedOn, CreatedBy, @tempId AS TemplateID 
					FROM dbo.HCSPR_CustomPayrollMasterDetail_tmp
					WHERE TemplateID = @tempId
				END
			ELSE 
				BEGIN
					INSERT INTO HCSPR_CustomPayrollMaster (Title1, Title2, Content1, Content2, Note, GenDate, TemplateID)
					VALUES (@titlevn, @titleen, @contentvn, @contenten, @note, @gendate, @tempId)
					--
					SELECT @id = SCOPE_IDENTITY()
					--
					INSERT INTO HCSPR_CustomPayrollMasterDetail(ParentID, FieldName, Value, GroupKey, CreatedOn, CreatedBy, TemplateID)
					SELECT @id AS ParentID, FieldName, Value, GroupKey, CreatedOn, CreatedBy, @tempId AS TemplateID 
					FROM dbo.HCSPR_CustomPayrollMasterDetail_tmp
					WHERE TemplateID = @tempId
				END
		END
	ELSE 
		BEGIN
		    UPDATE dbo.HCSPR_CustomPayrollMaster 
				SET Title1 = @titlevn, Title2 = @titleen, 
					Content1 = @contentvn, Content2 =@contenten, Note = @note, GenDate = @gendate, ModifiedBy = @userid, ModifiedOn = GETDATE()
				WHERE ID = @idgendate AND TemplateID = @tempId
		END
END
GO
------
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'HCSPR_SPLoadDataTempPayrollMasterDetail') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	DROP PROCEDURE HCSPR_SPLoadDataTempPayrollMasterDetail
GO
CREATE PROCEDURE [dbo].[HCSPR_SPLoadDataTempPayrollMasterDetail] 
	@userid VARCHAR(50),
	@tempId BIGINT 
AS 

BEGIN
    DECLARE @n INT, @fieldname NVARCHAR(50), @str NVARCHAR(MAX), @strField NVARCHAR(MAX)
	IF EXISTS (SELECT 1 FROM HCSPR_CustomPayrollMasterDetail_tmp)
		BEGIN
			--
			--SELECT @fieldname = A.FieldName FROM (SELECT TOP 1 FieldName FROM HCSLS_CustomePayrollField) AS A
			--
			--SELECT @n = COUNT(1) FROM HCSPR_CustomPayrollMasterDetail_tmp WHERE FieldName = @fieldname
			--
			SELECT @strField = STUFF((
				SELECT ',[' + FieldName + ']'
				FROM HCSLS_CustomePayrollField
				WHERE TemplateID = @tempId
				ORDER BY Ordinal ASC
				FOR XML PATH('')
			), 1, 1, '')
			--
			SET @str = 'SELECT ' + @strField + ' ' +
							'FROM ' +
							'( ' + 
								'SELECT FieldName, Value, GroupKey as idnum ' +
								'FROM HCSPR_CustomPayrollMasterDetail_tmp ' +
								'WHERE TemplateID = ' + CAST(@tempId AS NVARCHAR(MAX)) + ' ' +
							') t ' +
							'PIVOT ' +
							'( ' +
								'MAX(Value) FOR FieldName IN (' + @strField + ') ' +
							') pvt'
			EXEC(@str)
		END
END
GO
-----
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'HCSPR_SPLoadDataPayrollMasterDetailByTime') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	DROP PROCEDURE HCSPR_SPLoadDataPayrollMasterDetailByTime
GO
CREATE PROCEDURE [dbo].[HCSPR_SPLoadDataPayrollMasterDetailByTime]
	@userid VARCHAR(50),
	@templateid BIGINT,
	@idmaster BIGINT,
	@fromtime DATETIME,
	@totime DATETIME,
	@employeecode VARCHAR(50),
	@filter VARCHAR(MAX),
	@typefilter BIGINT
AS 

BEGIN
    DECLARE @n INT, @fieldname NVARCHAR(50), @str NVARCHAR(MAX), @strField NVARCHAR(MAX), @sqlTemp NVARCHAR(MAX)

	-- get gendate
	--IF @idmaster IS NULL 
	--	BEGIN
	--		SELECT @idmaster = ID
	--		FROM HCSPR_CustomPayrollMaster
	--		WHERE GenDate >= @fromtime AND GenDate <= @totime
	--	END	
	--SELECT @idmaster
	IF EXISTS (SELECT 1 FROM HCSPR_CustomPayrollMasterDetail WHERE TemplateID = @templateid)
		BEGIN
			--
			--SELECT @fieldname = A.FieldName FROM (SELECT TOP 1 FieldName FROM HCSLS_CustomePayrollField ORDER BY Ordinal ASC) AS A
			--
			--SELECT @n = COUNT(1) FROM HCSPR_CustomPayrollMasterDetail WHERE FieldName = @fieldname
			--
			SELECT @strField = STUFF((
				SELECT ',[' + FieldName + ']'
				FROM HCSLS_CustomePayrollField
				WHERE TemplateID = @templateid
				ORDER BY Ordinal
				FOR XML PATH('')
			), 1, 1, '')
			-- tạo bảng tạm
			IF @fromtime IS NULL AND @totime IS NULL
				BEGIN
					select ce.* into #TmpPayroll from (
						SELECT ParentID, FieldName, Value, ID, GroupKey AS idnum --NTILE(@n) over(order by ID) as idnum
						FROM HCSPR_CustomPayrollMasterDetail
						WHERE TemplateID = @templateid
					) ce
				END
			ELSE 
				BEGIN
				    select ce.* into #TmpPayroll1 from (
						SELECT A.FieldName, A.Value, A.ID, A.GroupKey AS idnum, A.ParentID
						FROM HCSPR_CustomPayrollMasterDetail AS A
						INNER JOIN (SELECT ID
							FROM HCSPR_CustomPayrollMaster
							WHERE GenDate >= @fromtime AND GenDate <= @totime) AS B
						ON A.ParentID = B.ID
						WHERE A.TemplateID = @templateid
					) ce

					select ce.* into #TmpPayroll2 from (
						SELECT A.ID, B.GenDate, A.GroupKey
						FROM HCSPR_CustomPayrollMasterDetail AS A
						INNER JOIN (SELECT ID, convert(varchar, GenDate, 103) AS GenDate
							FROM HCSPR_CustomPayrollMaster
							WHERE GenDate >= @fromtime AND GenDate <= @totime) AS B
						ON A.ParentID = B.ID
						WHERE A.TemplateID = @templateid
					) ce
				END
			--
			IF @employeecode IS NULL -- nếu k truyền vào employeecode
				BEGIN
					SET @str = 'select * ' + 
							'from ' +
							'(' +
								'SELECT A1.FieldName, A1.Value, A2.ID ' +
								'FROM (' +
									'SELECT * FROM #TmpPayroll WHERE ParentID = ' + CONVERT(VARCHAR(50), @idmaster) + 
								 ') AS A1 ' +
								'INNER JOIN ( ' +
									'SELECT ID = STUFF((SELECT DISTINCT ''' + ',' + ''' + CAST(ID AS NVARCHAR) ' +
											   'FROM (' +
													'SELECT * FROM #TmpPayroll WHERE ParentID = ' + CONVERT(VARCHAR(50), @idmaster) + 
												') AS B ' +
											   'WHERE B.idnum = A.idnum ' +
											  'FOR XML PATH(''' + ''')), 1, 1, ''' + '''), A.idnum ' +
									'FROM (' +
										'SELECT * FROM #TmpPayroll WHERE ParentID = ' + CONVERT(VARCHAR(50), @idmaster) + 
									 ') AS A ' +
									'GROUP BY A.idnum ' +
								') AS A2 ' +
								'ON A1.idnum = A2.idnum ' +
							') t ' +
							'PIVOT ' +
							'( ' +
								'max(Value) for FieldName IN (' + @strField + ') ' +
							') pvt ' 
				END
			ELSE -- nếu có employeecode
				BEGIN
				    SET @str = 'select T1.*, T2.GenDate ' +
							'from ' +
								'(' + 
									'select * ' + 
									'from ' +
									'(' +
										'SELECT A1.FieldName, A1.Value, A2.ID ' +
										'FROM ' +
											'#TmpPayroll1 ' + 
										'AS A1 ' +
										'INNER JOIN ( ' +
											'SELECT ID = STUFF((SELECT DISTINCT ''' + ',' + ''' + CAST(ID AS NVARCHAR) ' +
													   'FROM ' +
															'#TmpPayroll1 ' + 
														'AS B ' +
													   'WHERE B.idnum = A.idnum AND A.ParentID = B.ParentID ' +
													  'FOR XML PATH(''' + ''')), 1, 1, ''' + '''), A.idnum, A.ParentID ' +
											'FROM ' +
												'#TmpPayroll1 ' + 
											 'AS A ' +
											'GROUP BY A.idnum, A.ParentID ' +
										') AS A2 ' +
										'ON A1.idnum = A2.idnum AND  A1.ParentID = A2.ParentID ' +
									') t ' +
									'PIVOT ' +
									'( ' +
										'max(Value) for FieldName IN (' + @strField + ') ' +
									') pvt ' +
								') AS T1 ' +
							'inner join ' +
								'(' +
									'SELECT ID = STUFF((SELECT DISTINCT ''' + ',' + ''' + CAST(ID AS NVARCHAR) ' +
											   'FROM ( ' + 
													'SELECT * FROM #TmpPayroll2 ' +
											   ') AS B ' + 
											   'WHERE B.GroupKey = A.GroupKey AND B.GenDate = A.GenDate ' +
											  'FOR XML PATH(''' + ''')), 1, 1, ''' + '''), A.GenDate ' +
									'FROM ( ' +
										'SELECT * FROM #TmpPayroll2 ' +
									') AS A ' +
									'GROUP BY A.GroupKey, A.GenDate ' +
								') AS T2 ' +
							'ON T1.ID = T2.ID ' + 
							'WHERE T1.EmployeeCode = ''' + @employeecode + ''''
				END
			IF @filter IS NOT NULL
				BEGIN
					IF @typefilter = 2
						BEGIN
							SET @str = @str + ' WHERE EmployeeCode LIKE ''' + '%' + @filter + '%''' + 'OR FullName LIKE ''' + '%' + @filter + '%'''
						END 
					IF @typefilter = 3
						BEGIN
						    SET @str = @str + ' AND (EmployeeCode LIKE ''' + '%' + @filter + '%''' + 'OR FullName LIKE ''' + '%' + @filter + '%''' 
									   + 'OR GenDate LIKE ''' + '%' + @filter + '%'')'
						END
				END
			
			EXEC(@str)
		END
END
GO 
------
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'HCSPR_SPInsertDataPayrollMaster') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	DROP PROCEDURE HCSPR_SPInsertDataPayrollMaster
GO
CREATE PROCEDURE [dbo].[HCSPR_SPInsertDataPayrollMaster]
	@idgendate int,
	@tempId BIGINT,
	@gendate DATETIME,
	@titlevn NVARCHAR(MAX),
	@titleen NVARCHAR(MAX) = NULL,
	@contentvn NVARCHAR(MAX) = NULL,
	@contenten NVARCHAR(MAX) = NULL,
	@note NVARCHAR(MAX) = NULL,
	@userid VARCHAR(50)
AS 
BEGIN
	DECLARE @id BIGINT
	--
	IF @idgendate IS NULL
		BEGIN
			IF EXISTS (SELECT 1 FROM HCSPR_CustomPayrollMaster WHERE GenDate = @gendate AND TemplateID = @tempId)
				BEGIN
					SELECT @id = ID
						FROM HCSPR_CustomPayrollMaster 
						WHERE GenDate = @gendate AND TemplateID = @tempId
					--
					UPDATE dbo.HCSPR_CustomPayrollMaster 
					SET Title1 = @titlevn, Title2 = @titleen, Content1 = @contentvn, Content2 = @contenten, Note = @note, GenDate = @gendate
					WHERE GenDate = @gendate AND TemplateID = @tempId
					--
					DELETE FROM HCSPR_CustomPayrollMasterDetail WHERE ParentID = @id AND TemplateID = @tempId
					--
					INSERT INTO HCSPR_CustomPayrollMasterDetail(ParentID, FieldName, Value, GroupKey, CreatedOn, CreatedBy, TemplateID)
					SELECT @id AS ParentID, FieldName, Value, GroupKey, CreatedOn, CreatedBy, @tempId AS TemplateID FROM dbo.HCSPR_CustomPayrollMasterDetail_tmp
				END
			ELSE 
				BEGIN
					INSERT INTO HCSPR_CustomPayrollMaster (Title1, Title2, Content1, Content2, Note, GenDate, TemplateID)
					VALUES (@titlevn, @titleen, @contentvn, @contenten, @note, @gendate, @tempId)
					--
					SELECT @id = SCOPE_IDENTITY()
					--
					INSERT INTO HCSPR_CustomPayrollMasterDetail(ParentID, FieldName, Value, GroupKey, CreatedOn, CreatedBy, TemplateID)
					SELECT @id AS ParentID, FieldName, Value, GroupKey, CreatedOn, CreatedBy, @tempId AS TemplateID 
					FROM dbo.HCSPR_CustomPayrollMasterDetail_tmp
					WHERE TemplateID = @tempId
				END
		END
	ELSE 
		BEGIN
		    UPDATE dbo.HCSPR_CustomPayrollMaster 
				SET Title1 = @titlevn, Title2 = @titleen, 
					Content1 = @contentvn, Content2 =@contenten, Note = @note, GenDate = @gendate, ModifiedBy = @userid, ModifiedOn = GETDATE()
				WHERE ID = @idgendate AND TemplateID = @tempId
		END
END
GO
----
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'HCSPR_spDoDeleteDataCustomPayrollTemp') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	DROP PROCEDURE HCSPR_spDoDeleteDataCustomPayrollTemp
GO
CREATE PROCEDURE HCSPR_spDoDeleteDataCustomPayrollTemp
	@id INT
AS 
BEGIN
    DELETE FROM HCSLS_CustomePayrollFieldMaster
	WHERE TemplateID = @id
END
GO
---
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'HCSSYS_spImportDataPayrollMasterDetailWithEmp') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	DROP PROCEDURE HCSSYS_spImportDataPayrollMasterDetailWithEmp
GO
CREATE PROCEDURE [dbo].[HCSSYS_spImportDataPayrollMasterDetailWithEmp]
	@Str nvarchar(MAX),
	@GenDate DATETIME,
	@UserName varchar(50),
	@templateId BIGINT
AS 
BEGIN
	-- Tìm ParentID theo GenDate
	DECLARE @idmaster BIGINT
	SELECT @idmaster = ID 
	FROM HCSPR_CustomPayrollMaster
	WHERE GenDate = @GenDate
	-- tự sinh group key
	DECLARE @groupkey BIGINT
	SELECT @groupkey = MAX(GroupKey) 
	FROM HCSPR_CustomPayrollMasterDetail
	WHERE ParentID = @idmaster
	SET @groupkey = @groupkey + 1
	-- Bảng chứa data của @Str
	DECLARE @tableStrTemp  TABLE(
		FieldName nvarchar(50),
		Value nvarchar(MAX),
		GroupKey BIGINT,
		TemplateID BIGINT
	)
	SELECT ce.* INTO #PayrollTemp FROM (
		SELECT [data] FROM HCSSYS_FNSplitString(@Str, '$')
	) AS ce
	-- Chuyển chuỗi sang table
	DECLARE @i INT, @iCount INT
	SELECT @iCount = COUNT(1) FROM #PayrollTemp
	SET @i = 0
	WHILE (@i < @iCount)
	BEGIN
		DECLARE @value NVARCHAR(max),  @idx INT, @Name NVARCHAR(MAX), @DataValue NVARCHAR(MAX)
		Select TOP (1) @value = data From #PayrollTemp
		SET @idx = CHARINDEX(':', @value)

		SET @Name = SUBSTRING(@value, 1, @idx - 1)
		SET @DataValue = SUBSTRING(@value, @idx + 1, LEN(@value))
		--
		INSERT INTO @tableStrTemp
		        ( FieldName, Value, GroupKey, TemplateID )
		VALUES  ( 
					@Name, -- FieldName - nvarchar(50)
					@DataValue, -- Value - nvarchar(max)
					@groupkey,
					@templateId
		        )
		--
		SET @i = @i + 1
		Delete #PayrollTemp Where data = @value
	END
	
	-- Chuyển chuỗi id của bảng @tableStrTemp thành bảng mục đích inner join bảng HCSPR_PayrollMasterDetail
	DECLARE @idpay NVARCHAR(MAX)
	--
	SELECT @idpay = Value
	FROM @tableStrTemp
	WHERE FieldName = 'ID'
	--
	SELECT ce.* INTO #IDPayrollTemp FROM (
		SELECT [data] AS ID FROM HCSSYS_FNSplitString(@idpay, ',')
	) AS ce

	-- Delete data cũ bảng HCSPR_CustomPayrollMasterDetail
	DELETE HCSPR_CustomPayrollMasterDetail
		FROM HCSPR_CustomPayrollMasterDetail AS A
		INNER JOIN #IDPayrollTemp AS B ON A.ID = B.ID
	-- Insert data mới bảng HCSPR_CustomPayrollMasterDetail
	IF @idmaster IS NOT NULL
		BEGIN
			INSERT INTO HCSPR_CustomPayrollMasterDetail(ParentID, FieldName, Value, GroupKey, CreatedBy, TemplateID)
			SELECT @idmaster AS ParentID, FieldName, Value, GroupKey, @UserName AS CreatedBy, TemplateID
			FROM @tableStrTemp
			WHERE FieldName != 'ID'
		END
	
END
GO
---
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'HCSSYS_spImportDataPayrollMasterDetail') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	DROP PROCEDURE HCSSYS_spImportDataPayrollMasterDetail
GO
CREATE PROCEDURE [dbo].[HCSSYS_spImportDataPayrollMasterDetail]
	@Str nvarchar(MAX),
	@templateId BIGINT,
	@idmaster bigint,
	@UserName varchar(50)
AS 
BEGIN
	-- tự sinh group key
	DECLARE @groupkey BIGINT
	SELECT @groupkey = MAX(GroupKey) 
	FROM HCSPR_CustomPayrollMasterDetail
	WHERE ParentID = @idmaster
	SET @groupkey = @groupkey + 1
	-- Bảng chứa data của @Str
	DECLARE @tableStrTemp  TABLE(
		FieldName nvarchar(50),
		Value nvarchar(MAX),
		GroupKey BIGINT,
		TemplateID BIGINT
	)
	SELECT ce.* INTO #PayrollTemp FROM (
		SELECT [data] FROM HCSSYS_FNSplitString(@Str, '$')
	) AS ce
	-- Chuyển chuỗi sang table
	DECLARE @i INT, @iCount INT 
	SELECT @iCount = COUNT(1) FROM #PayrollTemp
	SET @i = 0
	WHILE (@i < @iCount)
	BEGIN
		DECLARE @value NVARCHAR(max),  @idx INT, @Name NVARCHAR(MAX), @DataValue NVARCHAR(MAX)
		Select TOP (1) @value = data From #PayrollTemp
		SET @idx = CHARINDEX(':', @value)

		SET @Name = SUBSTRING(@value, 1, @idx - 1)
		SET @DataValue = SUBSTRING(@value, @idx + 1, LEN(@value))
		--
		INSERT INTO @tableStrTemp
		        ( FieldName, Value, GroupKey, TemplateID )
		VALUES  ( 
					@Name, -- FieldName - nvarchar(50)
					@DataValue, -- Value - nvarchar(max)
					@groupkey,
					@templateId
		        )
		--
		SET @i = @i + 1
		Delete #PayrollTemp Where data = @value
	END
	-- Chuyển chuỗi id của bảng @tableStrTemp thành bảng mục đích inner join bảng HCSPR_PayrollMasterDetail
	DECLARE @idpay NVARCHAR(MAX)
	--
	SELECT @idpay = Value
	FROM @tableStrTemp
	WHERE FieldName = 'ID'
	--
	SELECT ce.* INTO #IDPayrollTemp FROM (
		SELECT [data] AS ID FROM HCSSYS_FNSplitString(@idpay, ',')
	) AS ce

	-- Delete cũ bảng HCSPR_CustomPayrollMasterDetail
	DELETE HCSPR_CustomPayrollMasterDetail
		FROM HCSPR_CustomPayrollMasterDetail AS A
		INNER JOIN #IDPayrollTemp AS B ON A.ID = B.ID
	-- Update data bảng HCSPR_CustomPayrollMasterDetail
	IF @idmaster IS NOT NULL
		BEGIN
			INSERT INTO HCSPR_CustomPayrollMasterDetail(ParentID, FieldName, Value, GroupKey, CreatedBy, TemplateID)
			SELECT @idmaster AS ParentID, FieldName, Value, GroupKey, @UserName AS CreatedBy, TemplateID
			FROM @tableStrTemp
			WHERE FieldName != 'ID'
		END
	
END





