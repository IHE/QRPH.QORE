Profile:   IHE_QRPH_QORE_EMS_Quality_Data_Bundle
Parent: Bundle
Id:             IHE.QRPH.QORE.EMS.Quality.Data.Bundle
Title: "EMS Quality Data Bundle"
Description:      """
the FHIR Resources supporting the content for Quality Measure Data Elements and Attributes.
the following cardinalities follow the documentation in the QORE profile: 
- RE	[0..*] 	Composition
- R		[1..1]	Patient
- RE	[0..1]	Allergies and Adverse Events
- RE	[0..*] 	Procedure
---Precedures perormed on the patient either in ED, in hospital, or during EMS 
- RE	[0..*] 	Medication Statement MedicationStatementIPS/ Medication-uv-ips
---- admissions medicaiton, discharge medication (ed, hostpial, and medication statment from EMS) 
- RE	[0..*] 	Medications Administered 
----- Medications administered in hospital, ed, and EMS run
- R		[1..*]	Clinical Impression
------ Clinical impressions from hospital, ed, and ems run 
- R		[1..*]	Diagnostic report DiagnosticReportUvIps
------ Diagnositc reports from hospital, ed, ems, or period of the query
- R		[1..*]	Encounter 
------- the encounters that are being referenced in the documentation 
- R		[1..*]	Observation
-------- Generic or specific observations of the patient from ed, hosptial, or ems (can include vital signs and assememt results)
- R		[1..*]	Condition ConditionUvIps
--------- diagnosis and conditions documented in hospital, ed, and ems run, can include fuctional stsatus and disabilites
- R		[1..*]	Location 
------- the location of the encounters
- RE	[0..*] 	Document Reference 
----- ca be used to reference documents that are related to the encounters IPS, PCS, DIscharge summary, medical summary etc
- RE	[0..*] 	Device DeviceUseStatementUvIps
------- Statements of what devices were ued in Hospital, ed, and ems run 
- O		[0..*] 	VitalSigns
----- Specific vital signs from the encounters (ed hospital ems )
- O		[0..1] 	CompositionUvIps
------ SPecific IPS Doc
- O		[0..*] 	Discharge-Summary
----- Discharge summary document 
- O		[0..*] 	Paramedicine Care Summary
------ Paramedicine care summary  
"""

* type = #searchset

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry ^slicing.description = "Slicing based on the profile conformance of the entry"
* entry and entry.resource MS
* entry contains
	Patient 1..1 MS and
	AllergyIntolerance 0..* and
	Procedure 0..* MS and 
	MedicationStatement 0..* MS and
	MedicationAdministration 0..* and
	ClinicalImpression 1..* MS and
	DiagnosticReport 0..* MS and
	Encounter 1..* MS and
	Observation 1..* MS and
	Condition 1..* MS and
	Location 1..* MS and
	DocumentReference 0..* MS and 
	DeviceUseStatement 0..* and
	VitalSigns 0..* MS and 
	InternationalPatientSummary 0..1 and
	DischargeSummary 0..* and 
	ParamedicineCareSummary 0..*

* entry[Patient].resource only
    Patient 
* entry[Patient] ^short = "the Patient"
* entry[Patient] ^definition = "The Patient defines who the QORE Bundle information is about."
* entry[Patient].resource 1..1
* entry[Patient].request 1..1
* entry[Patient].request.method = #GET


* entry[AllergyIntolerance].resource only
	AllergyIntolerance
* entry[AllergyIntolerance] ^short = "Allergy and Intolerance"
* entry[AllergyIntolerance] ^definition = "The Patient's allergy and intolerances."
* entry[AllergyIntolerance].resource 1..1
* entry[AllergyIntolerance].request 1..1
* entry[AllergyIntolerance].request.method = #GET

* entry[Procedure].resource only
	Procedure
* entry[Procedure] ^short = "Procedure"
* entry[Procedure] ^definition = "The Procedures performed on the patient during the period of the query."
* entry[Procedure].resource 1..1
* entry[Procedure].request 1..1
* entry[Procedure].request.method = #GET


* entry[MedicationStatement].resource only
	MedicationStatement
* entry[MedicationStatement] ^short = "Medication Statement"
* entry[MedicationStatement] ^definition = "The medication statements ."
* entry[MedicationStatement].resource 1..1
* entry[MedicationStatement].request 1..1
* entry[MedicationStatement].request.method = #GET


* entry[MedicationAdministration].resource only MedicationAdministration
* entry[ClinicalImpression].resource only ClinicalImpression
* entry[DiagnosticReport].resource only DiagnosticReport
* entry[Encounter].resource only Encounter
* entry[Observation].resource only Observation
* entry[Condition].resource only Condition
* entry[Location].resource only Location
* entry[DocumentReference].resource only DocumentReference
* entry[DeviceUseStatement].resource only DeviceUseStatement
* entry[VitalSigns].resource only VitalSigns
* entry[InternationalPatientSummary].resource only CompositionUvIps
* entry[Discharge-Summary].resource only DocumentReference
* entry[ParamedicineCareSummary].resource only IHE_PCS_Composition_CR


/// 
Note: Elements that could be included in the query 
patient information 
	age 
	IDs 
	birthdate 
	addresss, etc
Insurance infromation 
Care plan/plan of treatment  
relivant diagnostic teasts and reports from encounters 
relivant procedure and reports 
	procedures performed in ed, hospital, EMS
Funcrtional status 
Vital signs 
Review of systems 
cheif complaint 
reason for visit 
allergies and adverse reactions 
Discharge medications 
Medications administered during hospitalization, ed, and ems 
Discharge diagnosis 
hosital course 
history of present illness 
admiting dignosis
admissions medicaitons 
dischage disposition 
participating providers and rolls 
Date of discharge 
date of admissions 
discharge disposition
diagnostic reports 
active problems 
resolved problems 
advance directives 
physical examinations
discharge procedures 
cheif complaint and reason for visit
family hisotry 
social history 
hospital consultations 
discharge instructions 
past medical hostroy 
times between status hsitory periods 
chest compression rate 
chest compression depth 
resturn of spontanious circulation 
bystander witnesses 
Pain assesment 
transport location trauma center 
stroke assesment 
clinical impression diagnosis of stroke 
glood glucose vital sign/observation 
stroke assesmetn score 
time last known well observation 
emergency diagnosis of stroke 
respratory assesment 
pecific medications administered
estimated weight observation
specific condition, diagnossis identified 
suspected oversode impressions 
altered metal status 
specific medications that the patient is already taking 
pulse oximitry results 
glascow scores 
respritory rate 
ventilation 
ventilation days in ED or hospital 
adverse events from medication administration 

///