Instance:   example-CardiacArrest-Comosition
InstanceOf: IHE_QORE_Composition
Title: "Example CardiacArrest Comosition"
Description:      "holding typical values from CardiacArrest example patient"

Instance: Inline-Instance-for-QORE-examples-Bundle-minimal-1
InstanceOf: IHE_QORE_Composition
Usage: #inline
* id = "30551ce1-5a28-4356-b684-1e639094ad4c"
* identifier.system = "urn:oid:2.16.724.4.8.10.200.11"
* identifier.value = "3f69e0a5-2177-4540-baab-7a5d0877428c"
* status = #final

* subject = Reference(Patient (IPS)) [Note: will need to Be changed for US CEntric needs]
//* PatientUvIps.identifier = 78HU-3D7D
//* PatientUvIps.identifier.type = [Note: EMS Patient ID]
//* PatientUvIps.identifier = 527483672
//* PatientUvIps.identifier.type = [Note: SocialSecurity]
//* PatientUvIps.identifier = S14957440
//* PatientUvIps.identifier.type = $DL "Driver's license number"
//* PatientUvIps.name.text = "Lily-Rose Schroeder"
//* PatientUvIps.name.family = "Schroeder"
//* PatientUvIps.name.given = "Lily-Rose"
//* PatientUvIps.telecom = "928-350-5671"
//* PatientUvIps.telecom.system = $phone "Phone"
//* PatientUvIps.telecom.use = $home "Home"
//* PatientUvIps.telecom = "928-998-3679"
//* PatientUvIps.telecom.system = $phone "Phone"
//* PatientUvIps.telecom.use = $mobile "Mobile"
//* PatientUvIps.gender = $female "Female"
//* PatientUvIps.Race = "Native Hawaiian or Other Pacific Islander"
[Note: Must Change resource to support the race/ethnicity elements]
//* PatientUvIps.birthDate = "1955-10-07"
//* PatientUvIps.address.use = $home "Home"
//* PatientUvIps.address.line = "1644 W 13th St"
//* PatientUvIps.address.line = "Unit A"
//* PatientUvIps.address.city = "City of Yuma"
//* PatientUvIps.address.district = "Yuma County"
//* PatientUvIps.address.state = "Arizona"
//* PatientUvIps.address.postalCode = "85364"
[//Note: doesnot support US Cencus tract]
//* PatientUvIps.address.country = "US"
//* PatientUvIps.contact.relationship = $SPS "Spouse"
//* PatientUvIps.contact.name.text = "Frank R. Schroeder"
//* PatientUvIps.contact.name.family = "Schroeder"
//* PatientUvIps.contact.name.given = "Frank"
//* PatientUvIps.contact.name.given = "R."
//* PatientUvIps.contact.telecom = "928-350-5671"
//* PatientUvIps.contact.telecom.system = $phone "Phone"
//* PatientUvIps.contact.telecom.use = $home "Home"
//* PatientUvIps.contact.telecom = "928-998-3678"
//* PatientUvIps.contact.telecom.system = $phone "Phone"
//* PatientUvIps.contact.telecom.use = $mobile "Mobile"
//* PatientUvIps.contact.address.line = "1644 W 13th St"
//* PatientUvIps.contact.address.line = "Unit A"
//* PatientUvIps.contact.address.city = "Yuma"
//* PatientUvIps.contact.address.state = "Arizona"
//* PatientUvIps.contact.address.postalCode = "85364"
[//Note: doesnot support US Cencus tract]
//* PatientUvIps.address.country = "US"

//* PatientUvIps.generalPractitioner = Reference(Practitioner)
///*Practitioner.name.text = "Glenda D Parker"
///*Practitioner.name.family = "Parker"
///*Practitioner.name.given = "Glenda"
///*Practitioner.name.given = "D"
/* PatientUvIps.generalPractitioner = Reference(Practitioner)
///*Practitioner.name.text = "Allen Santos"
///*Practitioner.name.family = "Santos"
///*Practitioner.name.given = "Allen"

*date = "2021-10-28"

* author = Reference()

* title = "Quality Outcomes Report for EMS"

* event:careProvisioningEvent.period.start = 
* event:careProvisioningEvent.period.end = 

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