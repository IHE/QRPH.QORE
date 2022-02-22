## National Extensions for the United States of America (USA)
The national extensions documented in this section shall be used in conjunction with the definitions of integration profiles, actors and transactions provided in Volumes 1 through 3 of the IHE Quality, Research and Public Health Technical Framework. This section includes extensions and restrictions to effectively support the regional practice of healthcare in the USA.

### 3.1 Comments

This national extension document was authored under the sponsorship and supervision of the IHE Patient Care Coordination Technical Committee who welcome comments on this document and the IHE USA initiative. Comments should be directed to: http://www.ihe.net/PCC_Public_Comments

### **Quality Outcomes Reporting for EMS (QORE)**

--------

#### **QORE US Volume 3 Constraints **

----------

##### **QORE US Volume 3 Attribute Constraints** 

----------------------------------

##### **QORE US Volume 3 Element Constraints** 

The following additional cardinality constraints apply to the QORE document specification and entries in Table 6.3.1.D.5-1 Quality Outcomes Reporting for EMS (QORE) Document Content Module Specification. 
In the US, you SHALL use FHIR structure definition US-Core-Patient in place of the patient resource identified in the QORE bundle. 

**Table 3.X.1.24.I.2.1.2-1: QORE US Element Constraints**
| Cardinality | Section Element                                    | Constraint                                                                                                                                                                                                                                                                                                                                                                                              | Vocabulary Constraint|
|-------------|----------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------|
| R [1..1]    | Emergency Department Disposition                   | Where Code list = Patient Disposition (1.3.6.1.4.1.19376.1.7.3.1.1.31.1). When Emergency Department Disposition is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it should be omitted (if the element is optional).                                                           | Table 3.X.2          |
| R [1..1]    | Hospital Disposition                               | Where Code list = Patient Disposition (1.3.6.1.4.1.19376.1.7.3.1.1.31.1). When Hospital Disposition is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it should be omitted (if the element is optional).                                                                       | Table 3.X.2-1        |
| RE [0..1]   | External Report ID/Number Type                     | Where Code list = NEMSIS External Report ID/Number Type (1.3.6.1.4.1.19376.1.7.3.1.1.31.2)                                                                                                                                                                                                                                                                                                              | Table 3.X.2-1        |
| RE [0..1]   | External Report ID/Number                          | N/A                                                                                                                                                                                                                                                                                                                                                                                                     | N/A                  |
| RE [0..1]   | Other Report Registry Type                         | N/A                                                                                                                                                                                                                                                                                                                                                                                                     | N/A                  |
| R [1..1]    | Emergency Department Procedures                    | Where Code list = ICD-10-CM: Diagnosis Codes. When Emergency Department Procedures is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it should be omitted (if the element is optional).                                                                                        | Table 3.X.2-1        |
| R [1..1]    | Date/Time Emergency Department Procedure Performed | Must include the year, month, day, hour minutes, and time zone. Should include Seconds.                                                                                                                                                                                                                                                                                                                 | N/A                  |
| R  [1..*]   | Emergency Department Diagnosis                     | Where Code list = ICD-10-CM: Diagnosis Codes. When Emergency Department Diagnosis is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it should be omitted (if the element is optional). When Emergency Department Diagnosis has a Not Value, no other value should be recorded. | Table 3.X.2-1        |
| R [1..1]    | Date/Time of Hospital Admission                    | Must include the year, month, day, hour minutes, and time zone. Should include Seconds.                                                                                                                                                                                                                                                                                                                 | N/A                  |
| R [1..1]    | Hospital Procedures                                | Where Code list = ICD-10-PCSWhen Hospital Procedures is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it should be omitted (if the element is optional).                                                                                                                      | Table 3.X.2-1        |
| R [1..1]    | Date/Time Hospital Procedure Performed             | Must include the year, month, day, hour minutes, and time zone. Should include Seconds.                                                                                                                                                                                                                                                                                                                 | N/A                  |
| R [1..1]    | Hospital Diagnosis                                 | Where Code list = ICD-10-CM: Diagnosis CodesWhen Hospital Diagnosis is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it should be omitted (if the element is optional).When Hospital Diagnosis has a Not Value, no other value should be recorded.                            | N/A                  |
| R [1..1]    | Date/Time of Hospital Discharge                    | Must include the year, month, day, hour minutes, and time zone. Should include Seconds.                                                                                                                                                                                                                                                                                                                 | N/A                  |
| R [1..1]    | Date/Time of Emergency Department Admission        | IMust include the year, month, day, hour minutes, and time zone. Should include Seconds.                                                                                                                                                                                                                                                                                                                | N/A                  |
{: .grid}

#### **QORE Value Set Binding for US Realm Concept Domains**

This section defines the actual value sets and code systems for any coded concepts that were described by concept domains in the main profile and binds the value set to the coded concepts.
**Table 3.X.2-1: QORE Value Set Binding for US Realm Concept Domains **

|Value Set Name		                    | Value Set Code                             | Value Set OID    				| 
|---------------------------------------|--------------------------------------------|----------------------------------|
| Patient Disposition  				    | NEMSIS_Patient_Disposition  			  	 | 1.3.6.1.4.1.19376.1.7.3.1.1.31.1 | 
| NEMSIS External Report ID/Number Type | NEMSIS_External_ Report_Type    		 	 | 1.3.6.1.4.1.19376.1.7.3.1.1.31.2 |
| Diagnosis (ICD-10 CM) 			    | PHVS_AdministrativeDiagnosis_CDC_ICD-10CM  | 2.16.840.1.114222.4.11.7356      |
| Procedure (ICD-10 PCS) 			    | PHVS_AdministrativeProcedure_CDC_ICD-10PCS | 2.16.840.1.114222.4.11.7371      |
{:grid}
