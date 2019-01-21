# CMS_RAPS<br/>
Centers for Medicare and Medicaid Services (CMS) Risk Adjustment Processing System (RAPS) Files<br/>
<br/>
<b>ImportRAPSResponse.sql:</b><br/>
Imports a RAPS response file into RAPSResponseIn (a staging table)<br/>
<br/>
Then parses out the AAA, BBB, CCC, YYY & ZZZ records into separate tables:<br/>
RAPSResponseAAA - File Header<br/>
RAPSResponseBBB - Batch Header<br/>
RAPSResponseCCC - Detail (up to 10 diagnoses in each record)<br/>
RAPSResponseYYY - Batch Trailer<br/>
RAPSResponseZZZ - File Trailer<br/>
<br/>
<b>TransformRAPSResponse.sql:</b><br/>
Creates 1 record in RAPSResponseDDD for each diagnoses in RAPSResponseCCC<br/>
<br/>
File layout is located here:<br/>
https://www.cms.gov/Regulations-and-Guidance/Guidance/Transmittals/Downloads/R116MCM.pdf</br>
at page 16<br/>
<hr/>
<b>fileparse.py</b><br/>
A script to split out the response files from multiple files per file to a single file per output file.
