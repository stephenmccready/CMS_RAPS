  SELECT [ID]
      ,[RECORD-ID]
      ,[SEQ-NO]
      ,[SEQ-ERROR-CODE]
      ,[PATIENT-CONTROL-NO]
      ,[HIC-NO]
      ,[HIC-ERROR-CODE]
      ,[PATIENT-DOB]
      ,[DOB-ERROR-CODE]
      ,[PROVIDER-TYPE-01] As [PROVIDER-TYPE]
      ,Cast(SubString([FROM-DATE-01],1,4)
							+'-'+SubString([FROM-DATE-01],5,2)
							+'-'+SubString([FROM-DATE-01],7,2)+' 00:00:00.000' As DateTime) As [FROM-DATE]
      ,Cast(SubString([THRU-DATE-01],1,4)
							+'-'+SubString([THRU-DATE-01],5,2)
							+'-'+SubString([THRU-DATE-01],7,2)+' 00:00:00.000' As DateTime) As [THRU-DATE]
      ,[DELETE-IND-01] As [DELETE-IND]
      ,[DIAGNOSIS-CODE-01] As [DIAGNOSIS-CODE]
      ,[DIAG-CLSTR-ERROR-1-01] As [DIAG-CLSTR-ERROR-1]
      ,[DIAG-CLSTR-ERROR-2-01] As [DIAG-CLSTR-ERROR-2]
      ,[FILLER]
      ,[DateImported]
      ,[RAPSFileName]
  Into [dbo].[RAPSResponseDDD]
  FROM [dbo].[RAPSResponseCCC]
  
  Insert Into [dbo].[RAPSResponseDDD]
  SELECT [RECORD-ID]
      ,[SEQ-NO]
      ,[SEQ-ERROR-CODE]
      ,[PATIENT-CONTROL-NO]
      ,[HIC-NO]
      ,[HIC-ERROR-CODE]
      ,[PATIENT-DOB]
      ,[DOB-ERROR-CODE]
      ,[PROVIDER-TYPE-02] As [PROVIDER-TYPE]
      ,Cast(SubString([FROM-DATE-02],1,4)
							+'-'+SubString([FROM-DATE-02],5,2)
							+'-'+SubString([FROM-DATE-02],7,2)+' 00:00:00.000' As DateTime) As [FROM-DATE]
      ,Cast(SubString([THRU-DATE-02],1,4)
							+'-'+SubString([THRU-DATE-02],5,2)
							+'-'+SubString([THRU-DATE-02],7,2)+' 00:00:00.000' As DateTime) As [THRU-DATE]
      ,[DELETE-IND-02] As [DELETE-IND]
      ,[DIAGNOSIS-CODE-02] As [DIAGNOSIS-CODE]
      ,[DIAG-CLSTR-ERROR-1-02] As [DIAG-CLSTR-ERROR-1]
      ,[DIAG-CLSTR-ERROR-2-02] As [DIAG-CLSTR-ERROR-2]
      ,[FILLER]
      ,[DateImported]
      ,[RAPSFileName]
  FROM [dbo].[RAPSResponseCCC]
  Where	[DIAGNOSIS-CODE-02]<>'       '

  Insert Into [dbo].[RAPSResponseDDD]
  SELECT [RECORD-ID]
      ,[SEQ-NO]
      ,[SEQ-ERROR-CODE]
      ,[PATIENT-CONTROL-NO]
      ,[HIC-NO]
      ,[HIC-ERROR-CODE]
      ,[PATIENT-DOB]
      ,[DOB-ERROR-CODE]
      ,[PROVIDER-TYPE-03] As [PROVIDER-TYPE]
      ,Cast(SubString([FROM-DATE-03],1,4)
							+'-'+SubString([FROM-DATE-03],5,2)
							+'-'+SubString([FROM-DATE-03],7,2)+' 00:00:00.000' As DateTime) As [FROM-DATE]
      ,Cast(SubString([THRU-DATE-03],1,4)
							+'-'+SubString([THRU-DATE-03],5,2)
							+'-'+SubString([THRU-DATE-03],7,2)+' 00:00:00.000' As DateTime) As [THRU-DATE]
      ,[DELETE-IND-03] As [DELETE-IND]
      ,[DIAGNOSIS-CODE-03] As [DIAGNOSIS-CODE]
      ,[DIAG-CLSTR-ERROR-1-03] As [DIAG-CLSTR-ERROR-1]
      ,[DIAG-CLSTR-ERROR-2-03] As [DIAG-CLSTR-ERROR-2]
      ,[FILLER]
      ,[DateImported]
      ,[RAPSFileName]
  FROM [dbo].[RAPSResponseCCC]
  Where	[DIAGNOSIS-CODE-03]<>'       '

  Insert Into [dbo].[RAPSResponseDDD]
  SELECT [RECORD-ID]
      ,[SEQ-NO]
      ,[SEQ-ERROR-CODE]
      ,[PATIENT-CONTROL-NO]
      ,[HIC-NO]
      ,[HIC-ERROR-CODE]
      ,[PATIENT-DOB]
      ,[DOB-ERROR-CODE]
      ,[PROVIDER-TYPE-04] As [PROVIDER-TYPE]
      ,Cast(SubString([FROM-DATE-04],1,4)
							+'-'+SubString([FROM-DATE-04],5,2)
							+'-'+SubString([FROM-DATE-04],7,2)+' 00:00:00.000' As DateTime) As [FROM-DATE]
      ,Cast(SubString([THRU-DATE-04],1,4)
							+'-'+SubString([THRU-DATE-04],5,2)
							+'-'+SubString([THRU-DATE-04],7,2)+' 00:00:00.000' As DateTime) As [THRU-DATE]
      ,[DELETE-IND-04] As [DELETE-IND]
      ,[DIAGNOSIS-CODE-04] As [DIAGNOSIS-CODE]
      ,[DIAG-CLSTR-ERROR-1-04] As [DIAG-CLSTR-ERROR-1]
      ,[DIAG-CLSTR-ERROR-2-04] As [DIAG-CLSTR-ERROR-2]
      ,[FILLER]
      ,[DateImported]
      ,[RAPSFileName]
  FROM [dbo].[RAPSResponseCCC]
  Where	[DIAGNOSIS-CODE-04]<>'       '

  Insert Into [dbo].[RAPSResponseDDD]
  SELECT [RECORD-ID]
      ,[SEQ-NO]
      ,[SEQ-ERROR-CODE]
      ,[PATIENT-CONTROL-NO]
      ,[HIC-NO]
      ,[HIC-ERROR-CODE]
      ,[PATIENT-DOB]
      ,[DOB-ERROR-CODE]
      ,[PROVIDER-TYPE-05] As [PROVIDER-TYPE]
      ,Cast(SubString([FROM-DATE-05],1,4)
							+'-'+SubString([FROM-DATE-05],5,2)
							+'-'+SubString([FROM-DATE-05],7,2)+' 00:00:00.000' As DateTime) As [FROM-DATE]
      ,Cast(SubString([THRU-DATE-05],1,4)
							+'-'+SubString([THRU-DATE-05],5,2)
							+'-'+SubString([THRU-DATE-05],7,2)+' 00:00:00.000' As DateTime) As [THRU-DATE]
      ,[DELETE-IND-05] As [DELETE-IND]
      ,[DIAGNOSIS-CODE-05] As [DIAGNOSIS-CODE]
      ,[DIAG-CLSTR-ERROR-1-05] As [DIAG-CLSTR-ERROR-1]
      ,[DIAG-CLSTR-ERROR-2-05] As [DIAG-CLSTR-ERROR-2]
      ,[FILLER]
      ,[DateImported]
      ,[RAPSFileName]
  FROM [dbo].[RAPSResponseCCC]
  Where	[DIAGNOSIS-CODE-05]<>'       '

  Insert Into [dbo].[RAPSResponseDDD]
  SELECT [RECORD-ID]
      ,[SEQ-NO]
      ,[SEQ-ERROR-CODE]
      ,[PATIENT-CONTROL-NO]
      ,[HIC-NO]
      ,[HIC-ERROR-CODE]
      ,[PATIENT-DOB]
      ,[DOB-ERROR-CODE]
      ,[PROVIDER-TYPE-06] As [PROVIDER-TYPE]
      ,Cast(SubString([FROM-DATE-06],1,4)
							+'-'+SubString([FROM-DATE-06],5,2)
							+'-'+SubString([FROM-DATE-06],7,2)+' 00:00:00.000' As DateTime) As [FROM-DATE]
      ,Cast(SubString([THRU-DATE-06],1,4)
							+'-'+SubString([THRU-DATE-06],5,2)
							+'-'+SubString([THRU-DATE-06],7,2)+' 00:00:00.000' As DateTime) As [THRU-DATE]
      ,[DELETE-IND-06] As [DELETE-IND]
      ,[DIAGNOSIS-CODE-06] As [DIAGNOSIS-CODE]
      ,[DIAG-CLSTR-ERROR-1-06] As [DIAG-CLSTR-ERROR-1]
      ,[DIAG-CLSTR-ERROR-2-06] As [DIAG-CLSTR-ERROR-2]
      ,[FILLER]
      ,[DateImported]
      ,[RAPSFileName]
  FROM [dbo].[RAPSResponseCCC]
  Where	[DIAGNOSIS-CODE-06]<>'       '

  Insert Into [dbo].[RAPSResponseDDD]
  SELECT [RECORD-ID]
      ,[SEQ-NO]
      ,[SEQ-ERROR-CODE]
      ,[PATIENT-CONTROL-NO]
      ,[HIC-NO]
      ,[HIC-ERROR-CODE]
      ,[PATIENT-DOB]
      ,[DOB-ERROR-CODE]
      ,[PROVIDER-TYPE-07] As [PROVIDER-TYPE]
      ,Cast(SubString([FROM-DATE-07],1,4)
							+'-'+SubString([FROM-DATE-07],5,2)
							+'-'+SubString([FROM-DATE-07],7,2)+' 00:00:00.000' As DateTime) As [FROM-DATE]
      ,Cast(SubString([THRU-DATE-07],1,4)
							+'-'+SubString([THRU-DATE-07],5,2)
							+'-'+SubString([THRU-DATE-07],7,2)+' 00:00:00.000' As DateTime) As [THRU-DATE]
      ,[DELETE-IND-07] As [DELETE-IND]
      ,[DIAGNOSIS-CODE-07] As [DIAGNOSIS-CODE]
      ,[DIAG-CLSTR-ERROR-1-07] As [DIAG-CLSTR-ERROR-1]
      ,[DIAG-CLSTR-ERROR-2-07] As [DIAG-CLSTR-ERROR-2]
      ,[FILLER]
      ,[DateImported]
      ,[RAPSFileName]
  FROM [dbo].[RAPSResponseCCC]
  Where	[DIAGNOSIS-CODE-07]<>'       '

  Insert Into [dbo].[RAPSResponseDDD]
  SELECT [RECORD-ID]
      ,[SEQ-NO]
      ,[SEQ-ERROR-CODE]
      ,[PATIENT-CONTROL-NO]
      ,[HIC-NO]
      ,[HIC-ERROR-CODE]
      ,[PATIENT-DOB]
      ,[DOB-ERROR-CODE]
      ,[PROVIDER-TYPE-08] As [PROVIDER-TYPE]
      ,Cast(SubString([FROM-DATE-08],1,4)
							+'-'+SubString([FROM-DATE-08],5,2)
							+'-'+SubString([FROM-DATE-08],7,2)+' 00:00:00.000' As DateTime) As [FROM-DATE]
      ,Cast(SubString([THRU-DATE-08],1,4)
							+'-'+SubString([THRU-DATE-08],5,2)
							+'-'+SubString([THRU-DATE-08],7,2)+' 00:00:00.000' As DateTime) As [THRU-DATE]
      ,[DELETE-IND-08] As [DELETE-IND]
      ,[DIAGNOSIS-CODE-08] As [DIAGNOSIS-CODE]
      ,[DIAG-CLSTR-ERROR-1-08] As [DIAG-CLSTR-ERROR-1]
      ,[DIAG-CLSTR-ERROR-2-08] As [DIAG-CLSTR-ERROR-2]
      ,[FILLER]
      ,[DateImported]
      ,[RAPSFileName]
  FROM [dbo].[RAPSResponseCCC]
  Where	[DIAGNOSIS-CODE-08]<>'       '

  Insert Into [dbo].[RAPSResponseDDD]
  SELECT [RECORD-ID]
      ,[SEQ-NO]
      ,[SEQ-ERROR-CODE]
      ,[PATIENT-CONTROL-NO]
      ,[HIC-NO]
      ,[HIC-ERROR-CODE]
      ,[PATIENT-DOB]
      ,[DOB-ERROR-CODE]
      ,[PROVIDER-TYPE-09] As [PROVIDER-TYPE]
      ,Cast(SubString([FROM-DATE-09],1,4)
							+'-'+SubString([FROM-DATE-09],5,2)
							+'-'+SubString([FROM-DATE-09],7,2)+' 00:00:00.000' As DateTime) As [FROM-DATE]
      ,Cast(SubString([THRU-DATE-09],1,4)
							+'-'+SubString([THRU-DATE-09],5,2)
							+'-'+SubString([THRU-DATE-09],7,2)+' 00:00:00.000' As DateTime) As [THRU-DATE]
      ,[DELETE-IND-09] As [DELETE-IND]
      ,[DIAGNOSIS-CODE-09] As [DIAGNOSIS-CODE]
      ,[DIAG-CLSTR-ERROR-1-09] As [DIAG-CLSTR-ERROR-1]
      ,[DIAG-CLSTR-ERROR-2-09] As [DIAG-CLSTR-ERROR-2]
      ,[FILLER]
      ,[DateImported]
      ,[RAPSFileName]
  FROM [dbo].[RAPSResponseCCC]
  Where	[DIAGNOSIS-CODE-09]<>'       '

  Insert Into [dbo].[RAPSResponseDDD]
  SELECT [RECORD-ID]
      ,[SEQ-NO]
      ,[SEQ-ERROR-CODE]
      ,[PATIENT-CONTROL-NO]
      ,[HIC-NO]
      ,[HIC-ERROR-CODE]
      ,[PATIENT-DOB]
      ,[DOB-ERROR-CODE]
      ,[PROVIDER-TYPE-10] As [PROVIDER-TYPE]
      ,Cast(SubString([FROM-DATE-10],1,4)
							+'-'+SubString([FROM-DATE-10],5,2)
							+'-'+SubString([FROM-DATE-10],7,2)+' 00:00:00.000' As DateTime) As [FROM-DATE]
      ,Cast(SubString([THRU-DATE-10],1,4)
							+'-'+SubString([THRU-DATE-10],5,2)
							+'-'+SubString([THRU-DATE-10],7,2)+' 00:00:00.000' As DateTime) As [THRU-DATE]
      ,[DELETE-IND-10] As [DELETE-IND]
      ,[DIAGNOSIS-CODE-10] As [DIAGNOSIS-CODE]
      ,[DIAG-CLSTR-ERROR-1-10] As [DIAG-CLSTR-ERROR-1]
      ,[DIAG-CLSTR-ERROR-2-10] As [DIAG-CLSTR-ERROR-2]
      ,[FILLER]
      ,[DateImported]
      ,[RAPSFileName]
  FROM [dbo].[RAPSResponseCCC]
  Where	[DIAGNOSIS-CODE-10]<>'       '
  
  Create Index ix_DIAGNOSISCIDE On [dbo].[RAPSResponseDDD]([DIAGNOSIS-CODE])
  Create Index ix_HICNO On [dbo].[RAPSResponseDDD]([HIC-NO])
  Create Index ix_PATIENTCONTROLNO On [dbo].[RAPSResponseDDD]([PATIENT-CONTROL-NO])
