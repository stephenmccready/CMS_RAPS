CREATE TABLE dbo.RAPSErrorCodes(
	ErrorCode varchar(3) NULL,
	ErrorDesc varchar(256) NULL,
	RecordType varchar(3) NULL
) ON [PRIMARY]
Create Index ix_ErrorCode On RAPSErrorCodes(ErrorCode)
