Create	Table	[dbo].[RAPSResponseAAA] (
	ID						    int IDENTITY(1,1) PRIMARY KEY
,	[RECORD-ID]				VarChar(003)
,	[SUBMITTER-ID]		VarChar(006)		
,	[FILE-ID]				  VarChar(010)		
,	[TRANSACTION-DATE]		VarChar(008)	
,	[PROD-TEST-IND]		VarChar(004)		
,	[FILE-DIAG-TYPE]	VarChar(005)		
,	[FILLER]				  VarChar(476)
,	DateImported			DateTime
,	RAPSFileName			VarChar(256)
)

Create	Table	[dbo].[RAPSResponseBBB] (
	ID						  int IDENTITY(1,1) PRIMARY KEY
,	[RECORD-ID]			VarChar(003)
,	[SEQ-NO]				VarChar(007)
,	[PLAN-NO]				VarChar(005)
,	[FILLER]				VarChar(497)
,	DateImported		DateTime
,	RAPSFileName		VarChar(256)
)

Create	Table	[dbo].[RAPSResponseCCC] (
	ID						int IDENTITY(1,1) PRIMARY KEY
,	[RECORD-ID]				VarChar(003)
,	[SEQ-NO]				VarChar(007)
,	[SEQ-ERROR-CODE]		VarChar(003)
,	[PATIENT-CONTROL-NO]	VarChar(040)
,	[HIC-NO]				VarChar(025)
,	[HIC-ERROR-CODE]		VarChar(003)
,	[PATIENT-DOB]			VarChar(008)
,	[DOB-ERROR-CODE]		VarChar(003)
--
,	[PROVIDER-TYPE-01]		VarChar(002)
,	[FROM-DATE-01]			VarChar(008)
,	[THRU-DATE-01]			VarChar(008)
,	[DELETE-IND-01]			VarChar(001)
,	[DIAGNOSIS-CODE-01]		VarChar(007)
,	[DIAG-CLSTR-ERROR-1-01]	VarChar(003)
,	[DIAG-CLSTR-ERROR-2-01]	VarChar(003)
--
,	[PROVIDER-TYPE-02]		VarChar(002)
,	[FROM-DATE-02]			VarChar(008)
,	[THRU-DATE-02]			VarChar(008)
,	[DELETE-IND-02]			VarChar(001)
,	[DIAGNOSIS-CODE-02]		VarChar(007)
,	[DIAG-CLSTR-ERROR-1-02]	VarChar(003)
,	[DIAG-CLSTR-ERROR-2-02]	VarChar(003)
--
,	[PROVIDER-TYPE-03]		VarChar(002)
,	[FROM-DATE-03]			VarChar(008)
,	[THRU-DATE-03]			VarChar(008)
,	[DELETE-IND-03]			VarChar(001)
,	[DIAGNOSIS-CODE-03]		VarChar(007)
,	[DIAG-CLSTR-ERROR-1-03]	VarChar(003)
,	[DIAG-CLSTR-ERROR-2-03]	VarChar(003)
--
,	[PROVIDER-TYPE-04]		VarChar(002)
,	[FROM-DATE-04]			VarChar(008)
,	[THRU-DATE-04]			VarChar(008)
,	[DELETE-IND-04]			VarChar(001)
,	[DIAGNOSIS-CODE-04]		VarChar(007)
,	[DIAG-CLSTR-ERROR-1-04]	VarChar(003)
,	[DIAG-CLSTR-ERROR-2-04]	VarChar(003)
--
,	[PROVIDER-TYPE-05]		VarChar(002)
,	[FROM-DATE-05]			VarChar(008)
,	[THRU-DATE-05]			VarChar(008)
,	[DELETE-IND-05]			VarChar(001)
,	[DIAGNOSIS-CODE-05]		VarChar(007)
,	[DIAG-CLSTR-ERROR-1-05]	VarChar(003)
,	[DIAG-CLSTR-ERROR-2-05]	VarChar(003)
--
,	[PROVIDER-TYPE-06]		VarChar(002)
,	[FROM-DATE-06]			VarChar(008)
,	[THRU-DATE-06]			VarChar(008)
,	[DELETE-IND-06]			VarChar(001)
,	[DIAGNOSIS-CODE-06]		VarChar(007)
,	[DIAG-CLSTR-ERROR-1-06]	VarChar(003)
,	[DIAG-CLSTR-ERROR-2-06]	VarChar(003)
--
,	[PROVIDER-TYPE-07]		VarChar(002)
,	[FROM-DATE-07]			VarChar(008)
,	[THRU-DATE-07]			VarChar(008)
,	[DELETE-IND-07]			VarChar(001)
,	[DIAGNOSIS-CODE-07]		VarChar(007)
,	[DIAG-CLSTR-ERROR-1-07]	VarChar(003)
,	[DIAG-CLSTR-ERROR-2-07]	VarChar(003)
--
,	[PROVIDER-TYPE-08]		VarChar(002)
,	[FROM-DATE-08]			VarChar(008)
,	[THRU-DATE-08]			VarChar(008)
,	[DELETE-IND-08]			VarChar(001)
,	[DIAGNOSIS-CODE-08]		VarChar(007)
,	[DIAG-CLSTR-ERROR-1-08]	VarChar(003)
,	[DIAG-CLSTR-ERROR-2-08]	VarChar(003)
--
,	[PROVIDER-TYPE-09]		VarChar(002)
,	[FROM-DATE-09]			VarChar(008)
,	[THRU-DATE-09]			VarChar(008)
,	[DELETE-IND-09]			VarChar(001)
,	[DIAGNOSIS-CODE-09]		VarChar(007)
,	[DIAG-CLSTR-ERROR-1-09]	VarChar(003)
,	[DIAG-CLSTR-ERROR-2-09]	VarChar(003)
--
,	[PROVIDER-TYPE-10]		VarChar(002)
,	[FROM-DATE-10]			VarChar(008)
,	[THRU-DATE-10]			VarChar(008)
,	[DELETE-IND-10]			VarChar(001)
,	[DIAGNOSIS-CODE-10]		VarChar(007)
,	[DIAG-CLSTR-ERROR-1-10]	VarChar(003)
,	[DIAG-CLSTR-ERROR-2-10]	VarChar(003)
--
,	[CORRECTED-HIC-NO]		VarChar(025)
--
,	[RISK-ASSESSMENT-CODE-01]	VarChar(001)
,	[RISK-ASSESSMENT-CODE-ERROR-01]	VarChar(003)
--
,	[RISK-ASSESSMENT-CODE-02]	VarChar(001)
,	[RISK-ASSESSMENT-CODE-ERROR-02]	VarChar(003)
--
,	[RISK-ASSESSMENT-CODE-03]	VarChar(001)
,	[RISK-ASSESSMENT-CODE-ERROR-03]	VarChar(003)
--
,	[RISK-ASSESSMENT-CODE-04]	VarChar(001)
,	[RISK-ASSESSMENT-CODE-ERROR-04]	VarChar(003)
--
,	[RISK-ASSESSMENT-CODE-05]	VarChar(001)
,	[RISK-ASSESSMENT-CODE-ERROR-05]	VarChar(003)
--
,	[RISK-ASSESSMENT-CODE-06]	VarChar(001)
,	[RISK-ASSESSMENT-CODE-ERROR-06]	VarChar(003)
--
,	[RISK-ASSESSMENT-CODE-07]	VarChar(001)
,	[RISK-ASSESSMENT-CODE-ERROR-07]	VarChar(003)
--
,	[RISK-ASSESSMENT-CODE-08]	VarChar(001)
,	[RISK-ASSESSMENT-CODE-ERROR-08]	VarChar(003)
--
,	[RISK-ASSESSMENT-CODE-09]	VarChar(001)
,	[RISK-ASSESSMENT-CODE-ERROR-09]	VarChar(003)
--
,	[RISK-ASSESSMENT-CODE-10]	VarChar(001)
,	[RISK-ASSESSMENT-CODE-ERROR-10]	VarChar(003)
--
,	[FILLER]					VarChar(035)
,	DateImported				DateTime
,	RAPSFileName				VarChar(256)
)

Create	Table	[dbo].[RAPSResponseYYY] (
	ID						int IDENTITY(1,1) PRIMARY KEY
,	[RECORD-ID]				VarChar(003)
,	[SEQ-NO]				VarChar(007)
,	[PLAN-NO]				VarChar(005)
,	[CCC-RECORD-TOTAL]		VarChar(007)
,	[FILLER]				VarChar(490)
,	DateImported			DateTime
,	RAPSFileName			VarChar(256)
)

Create	Table	[dbo].[RAPSResponseZZZ] (
	ID						int IDENTITY(1,1) PRIMARY KEY
,	[RECORD-ID]				VarChar(003)
,	[SUBMITTER-ID]			VarChar(006)		
,	[FILE-ID]				VarChar(010)		
,	[BBB-RECORD-TOTAL]		VarChar(007)		
,	[FILLER]				VarChar(486)
,	DateImported			DateTime
,	RAPSFileName			VarChar(256)
)
