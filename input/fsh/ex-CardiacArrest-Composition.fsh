

Instance: Inline-Instance-for-QORE-example-encounter-emergency-department-1
InstanceOf: Encounter
Usage: #inline
* id = "b809c404-38b3-11ec-8d3d-0242ac130003"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#EMER
* reasonCode.text = "patient in the emergency department"
* subject = Reference(Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e8)
// TODO: Andrea to fill this with more useful details
// possibly use as a pattern http://hl7.org/fhir/encounter-example-emerg.json.html



Instance: Inline-Instance-for-QORE-example-encounter-inpatient-cardiac-1
InstanceOf: Encounter
Usage: #inline
* id = "068749a2-38b5-11ec-8d3d-0242ac130003"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* reasonCode.text = "Non-urgent cardiological admission"
* subject = Reference(Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e8)
// TODO: Andrea to fill this with more useful details
// possibly use as a pattern http://hl7.org/fhir/encounter-example-f001-heart.json.html

Instance: mddjdj
InstanceOf: MedicationStatement
Usage: #inline
* id = 

TODO Andrea fix these

Instance: eumfh-39-07-1-of-Medication
InstanceOf: Medication
Title: "Medication : Simvastatin 40 MG Disintegrating Oral Tablet"
Description: "Medication : Simvastatin 40 MG Disintegrating Oral Tablet"
Usage: #inline
* id = "eumfh-39-07-1"
* code.coding[0] = $rxnorm#757704 "Simvastatin 40 MG Disintegrating Oral Tablet"
* code.coding[+] = $atc#C10AA01 "simvastatin"
* code.text = "Fluspiral 50 mcg"
* form.coding[0] = $rxnorm#1294713 "Disintegrating Oral Product"
* form.coding[+] = $standardterms#10219000 "Tablet"
* ingredient.itemCodeableConcept = $rxnorm#36567 "Simvastatin"
* ingredient.strength.numerator = 40 'mg' "mcg"
* ingredient.strength.denominator = 1 '{tablet}' "tablet"

Instance: eumfh-39-07-1-of-MedicationStatement
InstanceOf: MedicationStatement
Title: "MedicationStatement: on-going Simvastatin treatment"
Description: "MedicationStatement: on-going Simvastatin treatment"
Usage: #inline
* id = "eumfh-39-07-1"
* status = #active
* medicationReference = Reference(Medication/eumfh-39-07-1) "simvastatin"
* subject = Reference(Patient/eumfh-39-07) "Alexander Heig (inject 39-07)"
* effectivePeriod.start = "2014"
* dosage.text = "40 mg/day"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.doseAndRate.doseQuantity = 40 'mg' "mg"





Instance:   example-CardiacArrest-Comosition
InstanceOf: IHE_QORE_Composition
Title: "Example CardiacArrest Comosition"
Description:      "holding typical values from CardiacArrest example patient"
Usage: #inline
* id = "dfae291c-38b0-11ec-8d3d-0242ac130003"
* identifier.system = "urn:oid:2.16.724.4.8.10.200.11.2"
* identifier.value = "fe815bf2-38b0-11ec-8d3d-0242ac130003"
* status = #final

* type = $loinc#18842-5 "Discharge summary"
// TODO: Can we find a more specific code for this kind of emergency discharge summary?
// TODO: should there be some .category codes that are broader
* subject = Reference(Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e8)
// Encounter here is the most recient encounter from the .event
// TODO: Should this be a profiled rule?
* encounter = Reference(Encounter/068749a2-38b5-11ec-8d3d-0242ac130003)
* author = Reference(1c616b24-3895-48c4-9a02-9a64110351ef)
* confidentiality = #N
* date = "2021-10-29"
* title = "Quality Outcomes Report for EMS"
// TODO is it useful for the example to have a .custodian, .attester, .relatesTo == not minimally?

// example with 3 steps, 2 have Encounter resources, one does not
// 1) Ambulance transport (15 minute transfer)
// 2) 
* event[+].period.start =  "2021-10-26T14:30:00+01:00""
* event[=].period.end =  "2021-10-26T14:45:00+01:00""
* event[=].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMBT
// this is an encounter, but the encounter is not available?
* event[+].period.start =  "2021-10-26T14:45:00+01:00"
* event[=].period.end =  "2021-10-27T04:45:00+01:00"
* event[=].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#EMER
* event[=].detail = Reference(Encounter/b809c404-38b3-11ec-8d3d-0242ac130003)
* event[+].period.start =  "2021-10-27T04:45:00+01:00"
* event[=].period.end =  "2021-10-28T18:45:00+01:00"
* event[=].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#EMER
* event[=].detail = Reference(Encounter/068749a2-38b5-11ec-8d3d-0242ac130003)


* section[sectionMedications].code = $loinc#10160-0
* section[sectionMedications].entry[+] = Reference(Medication/ )
* section[sectionMedications].entry[+] = Reference(Medication/ )
* section[sectionMedications].entry[+] = Reference(Medication/ )





* section:sectionMedications.entry:medicationStatement = Reference(Medication Statement (IPS))
//* MedicationStatementIPS.medication[x].medication[x]:medicationReference = Reference(MedicationIPS)
///* MedicationIPS.code = $11289 "warfarin"
//* MedicationStatementIPS.dosage.dose[x].doseQuantity.value = 2
//* MedicationStatementIPS.dosage.dose[x].doseQuantity.unit = "Milligrams (mg)"
//* MedicationStatementIPS.dosage.route = $20053000 "Oral use"
//* MedicationStatementIPS.medication[x].medication[x]:medicationReference = Reference(MedicationIPS)
///* MedicationIPS.code = $6984 "minoxidil"
//* MedicationStatementIPS.dosage.dose[x].doseQuantity.value = 10
//* MedicationStatementIPS.dosage.dose[x].doseQuantity.unit = "Milligrams (mg)"
//* MedicationStatementIPS.dosage.route = $20053000 "Oral use"

* section:sectionAllergies.entry:allergyOrIntolerance = Reference(Allergy Intolerance (IPS))
AllergyIntoleranceUvIps
//* AllergyIntoleranceUvIps.category = $medication "Medication"
//* AllergyIntoleranceUvIps.code = $1191 "aspirin"  
[Note: need to figure out how to represent code type since this is RxNorm] 
AllergyIntoleranceUvIps
//* AllergyIntoleranceUvIps.category = $medication "Medication"
//* AllergyIntoleranceUvIps.code = $Z88.0 "Allergy status to penicillin"  
[Note: need to figure out how to represent code type since this is ICD10] 
AllergyIntoleranceUvIps
//* AllergyIntoleranceUvIps.category = $food "Food"
//* AllergyIntoleranceUvIps.code = $425525006 "Allergy to dairy food"
[Note: need to figure out how to represent code type since this is unspecified and may not be SNOMED] 
AllergyIntoleranceUvIps
//* AllergyIntoleranceUvIps.category = $food "Food"
//* AllergyIntoleranceUvIps.code = $441831003 "Gluten sensitivity"
[Note: need to figure out how to represent code type since this is unspecified and may not be SNOMED] 

* section:sectionProblems
* section:sectionProblems.entry:problem = 	Reference(Condition (IPS))
//* ConditionUvIps.code = $I21.9 "Acute myocardial infarction, unspecified"
//* ConditionUvIps.asserter = Reference(RelatedPerson)
///* RelatedPerson.relationship = $FAMMEMB "family member"

* section:sectionProceduresHx.entry:procedure = Reference(Procedure (IPS))
//* ProcedureUvIps.code = $02HL02Z "Insertion of Monitoring Device into Left Ventricle, Open Approach"

*section:sectionImmunizations.entry:immunization = 	Reference(Immunization (IPS))
//* ImmunizationUvIps.text = "Influenza-Seasonal (In past 12 months)"
//* ImmunizationUvIps.occurrence[x]occurrenceString = "2021"

* section:sectionMedicalDevices
* section:sectionMedicalDevices.entry:deviceStatement = Reference(Device Use Statement (IPS))
//* DeviceUseStatementUvIps.device = Reference(Device (IPS))
///* DeviceUvIps.serialNumber = "569-75-1210"
//* DeviceUseStatementUvIps.timing[x].timingDateTime = "2021-10-06T10:53:18-07:00"
//* DeviceUseStatementUvIps.reasonCode = $4103001 "12-Lead ECG"
//* DeviceUseStatementUvIps..derivedFrom = Reference(DocumentReference)
DocumentReference.
[Note: Verify!]

* section:sectionResults
[TODO: Complete]

* section:sectionPastIllnessHx
[TODO: Complete]

* section:sectionFunctionalStatus
[TODO: Complete]

* section:sectionSocialHistory
[TODO: Complete]

* section:sectionPregnancyHx
* section:sectionPregnancyHx.entry:pregnancyStatus = Reference(Observation (Pregnancy: status))
//* ObservationPregnancyStatusUvIps.valueCodeableConcept = $LA26683-5 "Not pregnant"

* section:sectionAdvanceDirectives
* section:sectionAdvanceDirectives.entry:advanceDirectivesConsent = Reference(Consent)
//* Consent.source[x].sourceReference = DocumentReference
(TODO: Complete!)

* section:sectionVitalSigns
* section:sectionVitalSigns.entry:vitalSign = Reference(Vital Signs Profile)
//* VitalSigns.
[TODO: Complete]

* section:chief_complaint
* section:chief_complaint.text = "Out-of-hospital cardiac arrest"

* section:discharge_disposition
* section:discharge_disposition.text = "Admitted as an inpatient to this hospital."
* section:discharge_disposition.text = "Discharged to home or self care (routine discharge)"