SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

If OBJECT_ID('dbo.RAPSResponseIn') Is Not Null
	Drop Table [dbo].[RAPSResponseIn]

Create Table [dbo].[RAPSResponseIn] (col001 varchar(max))
Declare @path As varChar(128), @filename As varChar(128)

Set @path="your path"
Set @RAPSfilename="your filename"

Declare @BulkCmd As nvarChar(4000)
Set		@BulkCmd = "BULK INSERT [dbo].[RAPSResponseIn] FROM '"+@path+@RAPSfilename+"' WITH (ROWTERMINATOR = '0x0a')"
Exec	(@BulkCmd)

Declare @DateImported As DateTime
Set @DateImported=GetDate()

	-- AAA HEADER RECORD
	Insert	Into [dbo].[RAPSResponseAAA]
	Select	SubString(col001,001,003) As [RECORD-ID]			-- ‘AAA’
	,		SubString(col001,004,006) As [SUBMITTER-ID]			-- ‘Shnnnn’
	,		SubString(col001,010,010) As [FILE-ID]				-- 
	,		SubString(col001,020,008) As [TRANSACTION-DATE]		-- ‘CCYYMMDD’
	,		SubString(col001,028,004) As [PROD-TEST-IND]		-- ‘PROD’ Or ‘TEST’ Or ‘CERT’
	,		SubString(col001,032,005) As [FILE-DIAG-TYPE]		-- ‘ICD9’ Or ‘ICD10’
	,		SubString(col001,037,476) As [FILLER]				-- SPACES
	,		@DateImported As DateImported
	,		@RAPSfilename As RAPSFileName
	From	[dbo].[RAPSResponseIn]
	Where	SubString(col001,01,03) = 'AAA'

	-- BBB HEADER RECORD
	Insert	Into [dbo].[RAPSResponseBBB]
	Select	SubString(col001,001,003) As [RECORD-ID]			-- ‘BBB’
	,		SubString(col001,004,007) As [SEQ-NO]				-- Must begin with ‘0000001’
	,		SubString(col001,011,005) As [PLAN-NO]				-- ‘Hnnnn’
	,		SubString(col001,016,497) As [FILLER]				-- SPACES
	,		@DateImported As DateImported
	,		@RAPSfilename As RAPSFileName
	From	[dbo].[RAPSResponseIn]
	Where	SubString(col001,01,03) = 'BBB'

	-- CCC DETAIL RECORD
	Insert	Into [dbo].[RAPSResponseCCC]
	Select	SubString(col001,001,03) As [RECORD-ID]				-- ‘CCC’
	,		SubString(col001,004,07) As [SEQ-NO]				-- Must begin with ‘0000001’
	,		SubString(col001,011,03) As [SEQ-ERROR-CODE]		-- Spaces
	,		SubString(col001,014,40) As [PATIENT-CONTROL-NO]	-- Optional
	,		SubString(col001,054,25) As [HIC-NO]				-- 
	,		SubString(col001,079,03) As [HIC-ERROR-CODE]		-- Spaces
	,		SubString(col001,082,08) As [PATIENT-DOB]			-- ‘CCYYMMDD’
	,		SubString(col001,090,03) As [DOB-ERROR-CODE]
	-- DIAGNOSIS-CLUSTER (10 OCCURRENCES)
	,		SubString(col001,093,02) As [PROVIDER-TYPE-01]		-- * See #Note 1 below
	,		SubString(col001,095,08) As [FROM-DATE-01]			-- ‘CCYYMMDD’
	,		SubString(col001,103,08) As [THRU-DATE-01]			-- ‘CCYYMMDD’
	,		SubString(col001,111,01) As [DELETE-IND-01]			-- SPACE or ‘D’
	,		SubString(col001,112,07) As [DIAGNOSIS-CODE-01]		-- ICD-9 or ICD-10
	,		SubString(col001,119,03) As [DIAG-CLSTR-ERROR-1-01]	-- SPACES
	,		SubString(col001,122,03) As [DIAG-CLSTR-ERROR-2-01]	-- SPACES
	-- DIAGNOSIS-CLUSTER (2)
	,		SubString(col001,125,02) As [PROVIDER-TYPE-02]		-- * See #Note 1 below
	,		SubString(col001,127,08) As [FROM-DATE-02]			-- ‘CCYYMMDD’
	,		SubString(col001,135,08) As [THRU-DATE-02]			-- ‘CCYYMMDD’
	,		SubString(col001,143,01) As [DELETE-IND-02]			-- SPACE or ‘D’
	,		SubString(col001,144,07) As [DIAGNOSIS-CODE-02]		-- ICD-9 or ICD-10
	,		SubString(col001,151,03) As [DIAG-CLSTR-ERROR-1-02]	-- SPACES
	,		SubString(col001,154,03) As [DIAG-CLSTR-ERROR-2-02]	-- SPACES
	-- DIAGNOSIS-CLUSTER (3)
	,		SubString(col001,157,02) As [PROVIDER-TYPE-03]		-- * See #Note 1 below
	,		SubString(col001,159,08) As [FROM-DATE-03]			-- ‘CCYYMMDD’
	,		SubString(col001,167,08) As [THRU-DATE-03]			-- ‘CCYYMMDD’
	,		SubString(col001,175,01) As [DELETE-IND-03]			-- SPACE or ‘D’
	,		SubString(col001,176,07) As [DIAGNOSIS-CODE-03]		-- ICD-9 or ICD-10
	,		SubString(col001,183,03) As [DIAG-CLSTR-ERROR-1-03]	-- SPACES
	,		SubString(col001,186,03) As [DIAG-CLSTR-ERROR-2-03]	-- SPACES
	-- DIAGNOSIS-CLUSTER (4)
	,		SubString(col001,189,02) As [PROVIDER-TYPE-04]		-- * See #Note 1 below
	,		SubString(col001,191,08) As [FROM-DATE-04]			-- ‘CCYYMMDD’
	,		SubString(col001,199,08) As [THRU-DATE-04]			-- ‘CCYYMMDD’
	,		SubString(col001,207,01) As [DELETE-IND-04]			-- SPACE or ‘D’
	,		SubString(col001,208,07) As [DIAGNOSIS-CODE-04]		-- ICD-9 or ICD-10
	,		SubString(col001,215,03) As [DIAG-CLSTR-ERROR-1-04]	-- SPACES
	,		SubString(col001,218,03) As [DIAG-CLSTR-ERROR-2-04]	-- SPACES
	-- DIAGNOSIS-CLUSTER (5)
	,		SubString(col001,221,02) As [PROVIDER-TYPE-05]		-- * See #Note 1 below
	,		SubString(col001,223,08) As [FROM-DATE-05]			-- ‘CCYYMMDD’
	,		SubString(col001,231,08) As [THRU-DATE-05]			-- ‘CCYYMMDD’
	,		SubString(col001,239,01) As [DELETE-IND-05]			-- SPACE or ‘D’
	,		SubString(col001,240,07) As [DIAGNOSIS-CODE-05]		-- ICD-9 or ICD-10
	,		SubString(col001,247,03) As [DIAG-CLSTR-ERROR-1-05]	-- SPACES
	,		SubString(col001,250,03) As [DIAG-CLSTR-ERROR-2-05]	-- SPACES
	-- DIAGNOSIS-CLUSTER (6)
	,		SubString(col001,253,02) As [PROVIDER-TYPE-06]		-- * See #Note 1 below
	,		SubString(col001,255,08) As [FROM-DATE-06]			-- ‘CCYYMMDD’
	,		SubString(col001,263,08) As [THRU-DATE-06]			-- ‘CCYYMMDD’
	,		SubString(col001,271,01) As [DELETE-IND-06]			-- SPACE or ‘D’
	,		SubString(col001,272,07) As [DIAGNOSIS-CODE-06]		-- ICD-9 or ICD-10
	,		SubString(col001,279,03) As [DIAG-CLSTR-ERROR-1-06]	-- SPACES
	,		SubString(col001,282,03) As [DIAG-CLSTR-ERROR-2-06]	-- SPACES
	-- DIAGNOSIS-CLUSTER (7)
	,		SubString(col001,285,02) As [PROVIDER-TYPE-07]		-- * See #Note 1 below
	,		SubString(col001,287,08) As [FROM-DATE-07]			-- ‘CCYYMMDD’
	,		SubString(col001,295,08) As [THRU-DATE-07]			-- ‘CCYYMMDD’
	,		SubString(col001,303,01) As [DELETE-IND-07]			-- SPACE or ‘D’
	,		SubString(col001,304,07) As [DIAGNOSIS-CODE-07]		-- ICD-9 or ICD-10
	,		SubString(col001,311,03) As [DIAG-CLSTR-ERROR-1-07]	-- SPACES
	,		SubString(col001,314,03) As [DIAG-CLSTR-ERROR-2-07]	-- SPACES
	-- DIAGNOSIS-CLUSTER (8)
	,		SubString(col001,317,02) As [PROVIDER-TYPE-08]		-- * See #Note 1 below
	,		SubString(col001,319,08) As [FROM-DATE-08]			-- ‘CCYYMMDD’
	,		SubString(col001,327,08) As [THRU-DATE-08]			-- ‘CCYYMMDD’
	,		SubString(col001,335,01) As [DELETE-IND-08]			-- SPACE or ‘D’
	,		SubString(col001,336,07) As [DIAGNOSIS-CODE-08]		-- ICD-9 or ICD-10
	,		SubString(col001,343,03) As [DIAG-CLSTR-ERROR-1-08]	-- SPACES
	,		SubString(col001,346,03) As [DIAG-CLSTR-ERROR-2-08]	-- SPACES
	-- DIAGNOSIS-CLUSTER (9)
	,		SubString(col001,349,02) As [PROVIDER-TYPE-09]		-- * See #Note 1 below
	,		SubString(col001,351,08) As [FROM-DATE-09]			-- ‘CCYYMMDD’
	,		SubString(col001,359,08) As [THRU-DATE-09]			-- ‘CCYYMMDD’
	,		SubString(col001,367,01) As [DELETE-IND-09]			-- SPACE or ‘D’
	,		SubString(col001,368,07) As [DIAGNOSIS-CODE-09]		-- ICD-9 or ICD-10
	,		SubString(col001,375,03) As [DIAG-CLSTR-ERROR-1-09]	-- SPACES
	,		SubString(col001,378,03) As [DIAG-CLSTR-ERROR-2-09]	-- SPACES
	-- DIAGNOSIS-CLUSTER (10)
	,		SubString(col001,381,02) As [PROVIDER-TYPE-10]		-- * See #Note 1 below
	,		SubString(col001,383,08) As [FROM-DATE-10]			-- ‘CCYYMMDD’
	,		SubString(col001,391,08) As [THRU-DATE-10]			-- ‘CCYYMMDD’
	,		SubString(col001,399,01) As [DELETE-IND-10]			-- SPACE or ‘D’
	,		SubString(col001,400,07) As [DIAGNOSIS-CODE-10]		-- ICD-9 or ICD-10
	,		SubString(col001,407,03) As [DIAG-CLSTR-ERROR-1-10]	-- SPACES
	,		SubString(col001,410,03) As [DIAG-CLSTR-ERROR-2-10]	-- SPACES
	--
	,		SubString(col001,413,25) As [CORRECTED-HIC-NO]		-- SPACES
	-- RISK ASSESSMENT-CODE-CLUSTER (10 OCCURRENCES)
	,		SubString(col001,438,01) As [RISK-ASSESSMENT-CODE-01]		--  ‘A’, ‘B’, or ‘C’
	, 		SubString(col001,439,03) As [RISK-ASSESSMENT-CODE-ERROR-01]	-- SPACES
	-- RISK ASSESSMENT-CODE-CLUSTER (2)
	,		SubString(col001,442,01) As [RISK-ASSESSMENT-CODE-02]		--  ‘A’, ‘B’, or ‘C’
	, 		SubString(col001,443,03) As [RISK-ASSESSMENT-CODE-ERROR-02]	-- SPACES
	-- RISK ASSESSMENT-CODE-CLUSTER (3)
	,		SubString(col001,446,01) As [RISK-ASSESSMENT-CODE-03]		--  ‘A’, ‘B’, or ‘C’
	, 		SubString(col001,447,03) As [RISK-ASSESSMENT-CODE-ERROR-03]	-- SPACES
	-- RISK ASSESSMENT-CODE-CLUSTER (4)
	,		SubString(col001,450,01) As [RISK-ASSESSMENT-CODE-04]		--  ‘A’, ‘B’, or ‘C’
	, 		SubString(col001,451,03) As [RISK-ASSESSMENT-CODE-ERROR-04]	-- SPACES
	-- RISK ASSESSMENT-CODE-CLUSTER (5)
	,		SubString(col001,454,01) As [RISK-ASSESSMENT-CODE-05]		--  ‘A’, ‘B’, or ‘C’
	, 		SubString(col001,455,03) As [RISK-ASSESSMENT-CODE-ERROR-05]	-- SPACES
	-- RISK ASSESSMENT-CODE-CLUSTER (6)
	,		SubString(col001,458,01) As [RISK-ASSESSMENT-CODE-06]		--  ‘A’, ‘B’, or ‘C’
	, 		SubString(col001,459,03) As [RISK-ASSESSMENT-CODE-ERROR-06]	-- SPACES
	-- RISK ASSESSMENT-CODE-CLUSTER (7)
	,		SubString(col001,462,01) As [RISK-ASSESSMENT-CODE-07]		--  ‘A’, ‘B’, or ‘C’
	, 		SubString(col001,463,03) As [RISK-ASSESSMENT-CODE-ERROR-07]	-- SPACES
	-- RISK ASSESSMENT-CODE-CLUSTER (8)
	,		SubString(col001,466,01) As [RISK-ASSESSMENT-CODE-08]		--  ‘A’, ‘B’, or ‘C’
	, 		SubString(col001,467,03) As [RISK-ASSESSMENT-CODE-ERROR-08]	-- SPACES
	-- RISK ASSESSMENT-CODE-CLUSTER (9)
	,		SubString(col001,470,01) As [RISK-ASSESSMENT-CODE-09]		--  ‘A’, ‘B’, or ‘C’
	, 		SubString(col001,471,03) As [RISK-ASSESSMENT-CODE-ERROR-09]	-- SPACES
	-- RISK ASSESSMENT-CODE-CLUSTER (10)
	,		SubString(col001,474,01) As [RISK-ASSESSMENT-CODE-10]		--  ‘A’, ‘B’, or ‘C’
	, 		SubString(col001,475,03) As [RISK-ASSESSMENT-CODE-ERROR-10]	-- SPACES
	--
	,		SubString(col001,478,35) As [FILLER]				-- SPACES
	,		@DateImported As DateImported
	,		@RAPSfilename As RAPSFileName
	From	[dbo].[RAPSResponseIn]
	Where	SubString(col001,01,03) = 'CCC'

	-- #Note 1
	--	01 - HOSPITAL IP PRINCIPAL 
	--	02 - HOSPITAL IP OTHER
	--	10 - HOSPITAL OP
	--	20 - PHYSICIAN

	-- YYY HEADER RECORD
	Insert	Into [dbo].[RAPSResponseYYY]
	Select	SubString(col001,001,003) As [RECORD-ID]			-- ‘YYY’
	,		SubString(col001,004,007) As [SEQ-NO]				-- Must begin with ‘0000001’
	,		SubString(col001,011,005) As [PLAN-NO]				-- ‘Hnnnn’
	,		SubString(col001,016,007) As [CCC-RECORD-TOTAL]		-- SPACES
	,		SubString(col001,023,490) As [FILLER]				-- SPACES
	,		@DateImported As DateImported
	,		@RAPSfilename As RAPSFileName
	From	[dbo].[RAPSResponseIn]
	Where	SubString(col001,01,03) = 'YYY'

	-- ZZZ HEADER RECORD
	Insert	Into [dbo].[RAPSResponseZZZ]
	Select	SubString(col001,001,003) As [RECORD-ID]			-- ‘AAA’
	,		SubString(col001,004,006) As [SUBMITTER-ID]			-- ‘Shnnnn’
	,		SubString(col001,010,010) As [FILE-ID]				-- 
	,		SubString(col001,020,007) As [CCC-RECORD-TOTAL]		-- SPACES
	,		SubString(col001,027,486) As [FILLER]				-- SPACES
	,		@DateImported As DateImported
	,		@RAPSfilename As RAPSFileName
	From	[dbo].[RAPSResponseIn]
	Where	SubString(col001,01,03) = 'ZZZ'
