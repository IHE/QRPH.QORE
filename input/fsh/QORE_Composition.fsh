Profile: IHE_QORE_Composition
Parent: CompositionUvIps
Id: IHE.QRPH.QORE.Composition
Title: "Quality Outcomes Reporting for EMS"
Description:  """
composition of the FHIR elements that are used to build the FHIR Composition for the Qulaity Outcomes Report.
"""
* text MS
* status 1..1

* subject 1..1
* subject only Reference(Patient or Group)
* subject MS

* encounter 1..1 MS
* encounter only Reference(Encounter or IHE_PCS_Encounter)
* date MS
* author MS
* author ^short = "Who and/or what authored the QORE"

* title MS
* title ^short = "Quality Outcomes Report for EMS"
* title ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Quality Outcomes Report for EMS\" or any equivalent translation"

* attester MS
* attester.mode MS
* attester.time MS
* attester.party MS
	
* section[past_medical_history_section] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[past_medical_history_section] ^extension.valueString = "Section"
* section[past_medical_history_section] ^short = "Patient Summary Section"
* section[past_medical_history_section].text MS
* section[past_medical_history_section].entry MS
* section[past_medical_history_section].entry only Reference( Composition-uv-ips or  Condition-uv-ips)
* section[past_medical_history_section].entry ^slicing.discriminator.type = #profile
* section[past_medical_history_section].entry ^slicing.discriminator.path = "resolve()"
* section[past_medical_history_section].entry ^slicing.rules = #open
* section[past_medical_history_section].entry ^short = "The Patient Summary with the relevant past medical History elements"
* section[past_medical_history_section].entry ^definition = "An International Patient Summary (IPS) document is an electronic health record extract containing essential healthcare information about a subject of care. The IPS dataset is minimal and non-exhaustive; specialty-agnostic and condition-independent; but still clinically relevant. As specified in EN 17269 and ISO/DIS 27269, it is designed for supporting the use case scenario for ‘unplanned, cross border care’, but it is not limited to it. It is intended to be international, i.e., to provide generic solutions for global application beyond a particular region or country."
* section[past_medical_history_section].entry contains 
	Patient_Summary 1..* MS and
	past_medical_history_entry 0..* 
* section[past_medical_history_section].entry[Patient_Summary] only Reference(CompositionUvIps)
* section[past_medical_history_section].entry[past_medical_history_entry] only Reference(Condition or ConditionUvIps )


* section[chief_complaint_and_reason_for_visit_section] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[past_medical_history_section] ^extension.valueString = "Section"
* section[past_medical_history_section] ^short = "Chief Complaint and Reason for Visit Section"
* section[past_medical_history_section] ^definition = "Chief Complaint and Reason for Visit Section. This section records the patient's chief complaint (the patient's own description) and/or the reason for the patient's visit (the provider's description of the reason for visit). Local policy determines whether the information is divided into two sections or recorded in one section serving both purposes.."
* section[past_medical_history_section].text MS
* section[past_medical_history_section].entry MS
* section[past_medical_history_section].entry  only Reference(Condition or ConditionUvIps  or Encounter)
* section[past_medical_history_section].entry ^slicing.discriminator.type = #profile
* section[past_medical_history_section].entry ^slicing.discriminator.path = "resolve()"
* section[past_medical_history_section].entry ^slicing.rules = #open
* section[past_medical_history_section].entry ^short = "Chief Complaint and reason for visit"
* section[past_medical_history_section].entry ^definition = "Chief Complaint and Reason for Visit Section. This section records the patient's chief complaint (the patient's own description) and/or the reason for the patient's visit (the provider's description of the reason for visit). Local policy determines whether the information is divided into two sections or recorded in one section serving both purposes."
* section[past_medical_history_section].entry contains 
	chief_complaint 0..1 MS and 
	reason_for_visit 0..1 MS
* section[past_medical_history_section].entry[chief_complaint] only Reference(Conditon or ConditionUvIps)
* section[past_medical_history_section].entry[reason_for_visit] only Reference(Conditon or ConditionUvIps)

* section[Admissions] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[Admissions] ^extension.valueString = "Section"
* section[Admissions].text MS
* section[Admissions].entry MS
* section[Admissions].entry only Reference(Encounter)
* section[Admissions].entry ^slicing.discriminator.type = #profile
* section[Admissions].entry ^slicing.discriminator.path = "resolve()"
* section[Admissions].entry ^slicing.rules = #open
* section[Admissions].entry contains 
	admission_diagnosis 0..* MS and
	admission_medications 0..* MS and
	admission_period 0..1 MS
* section[Admissions].entry[admission_diagnosis] only Reference(Conditon or ConditionUvIps)
* section[Admissions].entry[admission_medications] only Reference(MedicationStatement or MedicationStatementIPS)
* section[Admissions].entry[Period] = dateTime

* section[active_problems] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[active_problems] ^extension.valueString = "Section"
* section[active_problems].text MS
* section[active_problems].entry 0..* MS
* section[active_problems].entry only Reference(Conditon or ConditionUvIps)

* section[resolved_problems] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[resolved_problems] ^extension.valueString = "Section"
* section[resolved_problems].text MS
* section[resolved_problems].entry 0..* MS
* section[resolved_problems].entry only Reference(Conditon or ConditionUvIps)

* section[administered_medications] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[administered_medications] ^extension.valueString = "Section"
* section[administered_medications].text MS
* section[administered_medications].entry 0..* MS
* section[administered_medications].entry only Reference(MedicationStatement or MedicationStatementIPS or MedicationAdministration)

* section[procedures_performed] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[procedures_performed] ^extension.valueString = "Section"
* section[procedures_performed].text MS
* section[procedures_performed].entry 0..* MS
* section[procedures_performed].entry only Reference(Procedure or ProcedureUvIps)


* section[History_of_Present_Illness] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[History_of_Present_Illness] ^extension.valueString = "Section"
* section[History_of_Present_Illness].text MS
* section[History_of_Present_Illness].entry 0..* MS
* section[History_of_Present_Illness].entry only Reference(Conditon or ConditionUvIps)


* section[Hospital_Course] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[Hospital_Course] ^extension.valueString = "Section"
* section[Hospital_Course].text MS

* section[Hospital_Consultations] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[Hospital_Consultations] ^extension.valueString = "Section"
* section[Hospital_Consultations].text MS

* section[review_of_systems] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[review_of_systems] ^extension.valueString = "Section"
* section[review_of_systems].text MS
* section[review_of_systems].entry 0..* MS
* section[review_of_systems].entry only Reference(Observation or ClinicalImpression)

* section[physical_examination] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[physical_examination] ^extension.valueString = "Section"
* section[physical_examination].text MS
* section[physical_examination].entry 0..* MS
* section[physical_examination].entry only Reference(Observation or ClinicalImpression)

* section[Plan_of_Cre] ^extension.valueString = "Section"
* section[Plan_of_Cre].text MS
* section[Plan_of_Cre].entry 0..* MS
* section[Plan_of_Cre].entry only Reference(CarePlan)

* section[Family_History] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[Family_History] ^extension.valueString = "Section"
* section[Family_History].text MS
* section[Family_History].entry 0..* MS
* section[Family_History].entry only Reference(FamilyMemberHistory)

* section[sectionVitalSigns] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionVitalSigns] ^extension.valueString = "Vital Signs Section"
* section[sectionVitalSigns] ^label = "Vital signs"
* section[sectionVitalSigns] ^short = "Vital Signs Section"
* section[sectionVitalSigns] ^definition = "The Vital signs section includes blood pressure, body temperature, heart rate, and respiratory rate. It may also include other clinical findings, such as height, weight, body mass index, head circumference, and pulse oximetry. In particular, notable vital signs or physical findings such as the most recent, maximum and/or minimum, baseline, or relevant trends may be included"
* section[sectionVitalSigns].code = $loinc#8716-3
* section[sectionVitalSigns].code MS
* section[sectionVitalSigns].entry only Reference(Observation or DocumentReference)
* section[sectionVitalSigns].entry MS
* section[sectionVitalSigns].entry ^slicing.discriminator.type = #profile
* section[sectionVitalSigns].entry ^slicing.discriminator.path = "resolve()"
* section[sectionVitalSigns].entry ^slicing.rules = #open
* section[sectionVitalSigns].entry ^short = "Notable vital signs or physical findings."
* section[sectionVitalSigns].entry ^definition = "Notable vital signs or physical findings as: blood pressure, body temperature, heart rate, and respiratory rate. It may also include other clinical findings, such as height, weight, body mass index, head circumference, and pulse oximetry. In particular, notable vital signs or physical findings such as the most recent, maximum and/or minimum, baseline, or relevant trends may be included"
* section[sectionVitalSigns].entry contains vitalSign 0..* MS
* section[sectionVitalSigns].entry[vitalSign] only Reference($vitalsigns)

* section[Discharge] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[Discharge].entry 1.. MS
* section[Discharge].entry only Reference(Encounter or DocumentReference)
* section[Discharge].entry ^slicing.discriminator.type = #profile
* section[Discharge].entry ^slicing.discriminator.path = "resolve()"
* section[Discharge].entry ^slicing.rules = #open
* section[Discharge].entry ^short = "Discharge Data relivant to the QORE report"
* section[Discharge].entry contains 
	discharge_diagnosis 0..* MS and
	discharge_medications 0..* MS and 
	discharge_DateTime 1..1 MS and
	discharge_disposition 1..1 MS and
	discharge_instructions 0..* and
	discharge_physical 0..* and
	discharge_studies 0..*
* section[Discharge].entry[discharge_diagnosis] only Reference(Conditon or ConditionUvIps)
* section[Discharge].entry[discharge_medications] only Reference(MedicationStatement or MedicationStatementIPS)
* section[Discharge].entry[discharge_DateTime] = DateTime
* section[Discharge].entry[discharge_disposition] only Reference(Encounter)
* section[Discharge].entry[discharge_instructions] only text
* section[Discharge].entry[discharge_physical] only text
* section[Discharge].entry[discharge_studies] only text


