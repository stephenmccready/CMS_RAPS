# CMS_RAPS
Centers for Medicare and Medicaid Services (CMS) Risk Adjustment Processing System (RAPS) Files

<b>ImportRAPSResponse.sql:</b>
Imports a RAPS response file into RAPSResponseIn (a staging table)

Then parses out the AAA, BBB, CCC, YYY & ZZZ records into separate tables:
RAPSResponseAAA - File Header
RAPSResponseBBB - Batch Header
RAPSResponseCCC - Detail (up to 10 diagnoses in each record)
RAPSResponseYYY - Batch Trailer
RAPSResponseZZZ - File Trailer

<b>TransformRAPSResponse.sql:</b>
Creates 1 record in RAPSResponseDDD for each diagnoses in RAPSResponseCCC
