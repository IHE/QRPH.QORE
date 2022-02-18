Instance:   example-CardiacArrest-Patient
InstanceOf: IHE_QORE_Composition
Title: "Example CardiacArrest Patient"
Description:      "holding typical values for the CardiacArrest example patient"

[// Patient Infromation]
Instance: Inline-Instance-for-QORE-example-cardiac-Patient
InstanceOf: Patient
Usage: #inline
* id = "ea25ec4c-38bd-11ec-8d3d-0242ac130003"
* identifier.value[+] = "78HU-3D7D"
* identifier.type[=] = $MR "Medical record number"
// Note: EMS Patient ID
* identifier.value[+] = "S14957440"
* identifier.type[=] = $DL "Driver's license number"
* identifier.value[+] = "859320"
* identifier.type[=] = $MR "Medical record number"
// Note: Patient Hospital MRN
* active = true
* name.family = "Schroeder"
* name.given = "Lily-Rose"
* telecom.system[+] = #phone
* telecom.value[=] = "928-350-5671"
* telecom.use[=] = #home
* telecom.system[+] = #phone
* telecom.value[=] = "928-998-3679"
* telecom.use[=] = #mobile
[// Note: Must Change resource to support the race/ethnicity elements]
* gender = #female
* birthDate = "1955-10-07"
* address.use = #home
* address.line[+] = "1644 W 13th St"
* address.line[=] = "Unit A"
* address.city = "City of Yuma"
* address.district = "Yuma County"
* address.state = "Arizona"
* address.postalCode = "85364"
[//Note: doesnot support US Cencus tract]
* address.country = "US"
* contact.relationship = $v3-RoleCode#SPS
* contact.name.family = "Schroeder"
* contact.name.given[+] = "Frank"
* contact.name.given[=] = "R."
* contact.telecom.system[+] = #phone
* contact.telecom.value[=] = "928-350-5671"
* contact.telecom.use[=] = #home
* contact.telecom.system[+] = #phone
* contact.telecom.value[=] = "928-998-3678"
* contact.telecom.use[=] = #mobile
* contact.address.line[+] = "1644 W 13th St"
* contact.address.line[=] = "Unit A"
* contact.address.city = "Yuma"
* contact.address.state = "Arizona"
* contact.address.postalCode = "85364"
[//Note: doesnot support US Cencus tract]
* contact.address.country = "US"

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-generalPractitioner
InstanceOf: Practitioner
Usage: #inline
* id = cf1f71bc-38c1-11ec-8d3d-0242ac130003
* name.family[+] = "Parker"
* name.given[=] = "Glenda"
* name.given[=] = "D"
* name.family[+] = "Santos"
* name.given[=] = "Allen"


[// EMS Organization Infromation]

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Organization
InstanceOf: ServiceRequest
Usage: #inline
* id = b861aba6-38e0-11ec-8d3d-0242ac130003
* identifier.value[+] = 058
* identifier.type[=] = "Unique State ID"
* identifier.value[+] = 340-TGCON058
* identifier.type[=] = "EMS Agency Number"
* type = $EMS "Emergency Medical Service"  
* name = "TackTrust"
* address.state = "Arizona"

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Practitioner-1
InstanceOf: Practitioner
Usage: #inline
* id = 21a78dce-38e6-11ec-8d3d-0242ac130003
* identifier.value = 3265325 
* identifier.type = $LN "License number"
* name.family = "Sparrow"
* name.given[+] = "Henry"
* name.given[+] = "I."

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Practitioner-2
InstanceOf: Practitioner
Usage: #inline
* id = 26aa91b8-38e6-11ec-8d3d-0242ac130003
* identifier.value = 3278054 
* identifier.type = $LN "License number"
* name.family = "Valencia"
* name.given = "Dani"

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Practitioner-3
InstanceOf: Practitioner
Usage: #inline
* id = 29eabcea-38e6-11ec-8d3d-0242ac130003
* identifier.value = 5583451 
* identifier.type = $LN "License number"
* name.family = "Guerra"
* name.given = "Mariyah"

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Practitioner-1-level
InstanceOf: Practitioner
Usage: #inline
* id = a3222aec-38e8-11ec-8d3d-0242ac130003
* practitioner = Reference(Practitioner/21a78dce-38e6-11ec-8d3d-0242ac130003)
* code = $397897005  "Paramedic"
* organization = Reference(Organization/b861aba6-38e0-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Practitioner-2-level
InstanceOf: Practitioner
Usage: #inline
* id = a76cdf98-38e8-11ec-8d3d-0242ac130003
* practitioner = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* code = $397897005  "Paramedic"
* organization = Reference(Organization/b861aba6-38e0-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Practitioner-3-level
InstanceOf: Practitioner
Usage: #inline
* id = ac48610e-38e8-11ec-8d3d-0242ac130003
* practitioner = Reference(Practitioner/29eabcea-38e6-11ec-8d3d-0242ac130003)
* code = $ "" [//TODO ]
* organization = Reference(Organization/b861aba6-38e0-11ec-8d3d-0242ac130003)


[// EMS Transport Infromation]

Instance: Medication-1
InstanceOf: MedicationStatement
Usage: #inline
* id = 4e6bd662-38c3-11ec-8d3d-0242ac130003
* status = #active 
* medication[x] = $11289 "warfarin"
* dosage.dose[x].doseQuantity.value = 2
* dosage.dose[x].doseQuantity.unit = "Milligrams (mg)"
* dosage.route = $20053000 "Oral use"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: Medication-2
InstanceOf: MedicationStatement
Usage: #inline
* id = 01ff9434-38c4-11ec-8d3d-0242ac130003
* status = #active 
* medication[x] = $6984 "minoxidil"
* dosage.dose[x].doseQuantity.value = 10
* dosage.dose[x].doseQuantity.unit = "Milligrams (mg)"
* dosage.route = $20053000 "Oral use"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: AllergyIntolerance-1
InstanceOf: AllergyIntolerance
Usage: #inline
* id = 3f26fd70-38c4-11ec-8d3d-0242ac130003
* patient = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* category = #medication
* code = $Z88.0 "Allergy status to penicillin"  
[// Note: need to figure out how to represent code type since this is ICD10] 

Instance: AllergyIntolerance-2
InstanceOf: AllergyIntolerance
Usage: #inline
* id = 93b3e560-38c4-11ec-8d3d-0242ac130003
* patient = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* category = #medication
* code = $1191 "aspirin" 
[// Note: need to figure out how to represent code type since this is RxNorm] 

Instance: AllergyIntolerance-3
InstanceOf: AllergyIntolerance
Usage: #inline
* id = 990d2f3a-38c4-11ec-8d3d-0242ac130003
* patient = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* category = #food
* code = $425525006 "Allergy to dairy food"
[// Note: need to figure out how to represent code type since this is unspecified and may not be SNOMED]

Instance: AllergyIntolerance-4
InstanceOf: AllergyIntolerance
Usage: #inline
* id = fc40d0de-38c4-11ec-8d3d-0242ac130003
* patient = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* category = #food
* code = $441831003 "Gluten sensitivity"
[// Note: need to figure out how to represent code type since this is unspecified and may not be SNOMED] 

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-familymember
InstanceOf: RelatedPerson
Usage: #inline
* id = 2f5e2574-38c6-11ec-8d3d-0242ac130003
* patient = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* relationship = $FAMMEMB "family member"

Instance: Problem-1
InstanceOf: Condition
Usage: #inline
* id = a0f3b5e2-38c5-11ec-8d3d-0242ac130003
* code = $I46.9 "Cardiac arrest, cause unspecified"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: PastIllneses-1
InstanceOf: Condition
Usage: #inline
* id = 0510d482-38c7-11ec-8d3d-0242ac130003
* code = $I21.9 "Acute myocardial infarction, unspecified"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* asserter = Reference(RelatedPerson/2f5e2574-38c6-11ec-8d3d-0242ac130003)

Instance: PastProcedures-1
InstanceOf: Procedure
Usage: #inline
* id = 3bfbac88-38c7-11ec-8d3d-0242ac130003
* code = $02HL02Z "Insertion of Monitoring Device into Left Ventricle, Open Approach"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* asserter = Reference(RelatedPerson/2f5e2574-38c6-11ec-8d3d-0242ac130003)

Instance: Immunization
InstanceOf: Immunization
Usage: #inline
* id = 95129cdc-38c7-11ec-8d3d-0242ac130003
* text = "Influenza-Seasonal (In past 12 months)"
* patient = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* occurrence[x]occurrenceString = "2021"

Instance: MedicalDevice
InstanceOf: Device
Usage: #inline
* id = 752ca98e-38c8-11ec-8d3d-0242ac130003
* serialNumber = "569-75-1210"
* patient = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: Heart Rate Rhythm
InstanceOf: VitalSigns
Usage: #inline
* id = 0973da60-38cc-11ec-8d3d-0242ac130003
* satus = #final
* code = $8884-9 "Heart rate rhythm"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* effective[x].effectiveDateTime = 2021-10-06T10:53:18-07:00
* value[x].CodeableConcept = $427.41 "Ventricular fibrillation" 
[// Note: ICD10 code translation. Origional NEMSIS Code is 	9901067 "Ventricular Fibrillation"]
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* device = Reference(Device/752ca98e-38c8-11ec-8d3d-0242ac130003)
* method = $258181008 "Electrocardiogram analysis"
[//Note: Verify, translated from NEMSIS]
* derivedFrom = Reference(Media/832a7212-38cf-11ec-8d3d-0242ac130003)

Instance: Waveform Graphic-image/jpeg
InstanceOf: Media
Usage: #inline
* id = 832a7212-38cf-11ec-8d3d-0242ac130003
* status = #completed
* type = #image
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* created[x].createdDateTime = 2021-10-06T10:53:18-07:00
* operator = Reference(Device/752ca98e-38c8-11ec-8d3d-0242ac130003)
* device = Reference(Device/752ca98e-38c8-11ec-8d3d-0242ac130003)

Instance: MedicalDeviceUsed
InstanceOf: DeviceUseStatement
Usage: #inline
* id = e6c13250-38c7-11ec-8d3d-0242ac130003
* status = #completed
* device = Reference(Device/752ca98e-38c8-11ec-8d3d-0242ac130003)
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* derivedFrom = Reference(Observation/0973da60-38cc-11ec-8d3d-0242ac130003)
* timing[x].timingDateTime = "2021-10-06T10:53:18-07:00"
* reasonCode = $4103001 "12-Lead ECG"
[// Note: verify this is correct] 

Instance: Cardiac-Patient-VitalSigns
InstanceOf: VitalSigns
Usage: #inline
* id = bde95962-38d0-11ec-8d3d-0242ac130003
[// TODO]

Instance: Cardiac-Patient-disability
InstanceOf: Condition
Usage: #inline
* id = 82dd0346-38d0-11ec-8d3d-0242ac130003
[// TODO]

Instance: Cardiac-Patient-PregnancyStatus
InstanceOf: Observation
Usage: #inline
* id = 583dc1bc-38d4-11ec-8d3d-0242ac130003
* value[x].value[x]:valueCodeableConcept = $LA26683-5 "Not pregnant"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: Cardiac-Patient-AdvancedDirectives
InstanceOf: Consent
Usage: #inline
* id = d3886606-38d4-11ec-8d3d-0242ac130003
* patient = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* source[x].sourceReference = Reference(DocumentReference/8e46582c-38d5-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Procedure-1
InstanceOf: Procedure
Usage: #inline
* id = dceab572-3b41-11ec-8d3d-0242ac130003
* status = #completed 
* code = $89666000 "Cardiopulmonary resuscitation"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* performed[x].performedDateTime = "2021-10-06T10:52:30-07:00"
* recorder = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* performer.actor = Reference(Practitioner/21a78dce-38e6-11ec-8d3d-0242ac130003)
* outcome = http://snomed.info/sct#385669000

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Procedure-2
InstanceOf: Procedure
Usage: #inline
* id = 1ea7bca6-3b44-11ec-8d3d-0242ac130003
* status = #completed 
* code = $268400002 "12 lead ECG"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* performed[x].performedDateTime = "2021-10-06T10:53:00-07:00"
* recorder = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* performer.actor = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* outcome = http://snomed.info/sct#385669000
* usedReference = Reference(Device/752ca98e-38c8-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Procedure-3
InstanceOf: Procedure
Usage: #inline
* id = 67af6a0c-3b44-11ec-8d3d-0242ac130003
* status = #completed 
* code = $425447009 "Bag valve mask ventilation"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* performed[x].performedDateTime = "2021-10-06T10:53:30-07:00"
* recorder = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* performer.actor = Reference(Practitioner/29eabcea-38e6-11ec-8d3d-0242ac130003)
* outcome = http://snomed.info/sct#385669000

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Procedure-4
InstanceOf: Procedure
Usage: #inline
* id = b2ff4ba8-3b44-11ec-8d3d-0242ac130003
* status = #completed 
* code = $392230005 "Catheterisation of vein"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* performed[x].performedDateTime = "2021-10-06T10:55:00-07:00"
* recorder = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* performer.actor = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* bodySite = $368224007 "Entire right forearm"
* outcome = http://snomed.info/sct#385669000

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Procedure-5
InstanceOf: Procedure
Usage: #inline
* id = e69dcf82-3b46-11ec-8d3d-0242ac130003
* status = #completed 
* code = $426220008 "External ventricular defibrillation"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* performed[x].performedDateTime = "2021-10-06T10:57:23-07:00"
* recorder = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* performer.actor = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* outcome = http://snomed.info/sct#385671000

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Procedure-6
InstanceOf: Procedure
Usage: #inline
* id = 267c84d6-3b47-11ec-8d3d-0242ac130003
* status = #completed 
* code = $58715004 "Moving a patient to a stretcher"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* performed[x].performedDateTime = "2021-10-06T11:00:00-07:00"
* recorder = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* performer.actor = Reference(Practitioner/29eabcea-38e6-11ec-8d3d-0242ac130003)
* outcome = http://snomed.info/sct#385669000

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Procedure-7
InstanceOf: Procedure
Usage: #inline
* id = 875cee62-3b47-11ec-8d3d-0242ac130003
* status = #completed 
* code = $426220008 "External ventricular defibrillation"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* performed[x].performedDateTime = "2021-10-06T11:06:00-07:00"
* recorder = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* performer.actor = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* outcome = http://snomed.info/sct#385669000

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-MedicationsAdministered-1
InstanceOf: MedicationStatement
Usage: #inline
* id = 1a47fcd0-3b48-11ec-8d3d-0242ac130003
* id = 4e6bd662-38c3-11ec-8d3d-0242ac130003
* status = #completed
* category = [//TODO]
* partOf = ReferenceMedicationsAdministration/) TODO
* medication[x] = $7806  "oxygen"
* dosage.dose[x].doseQuantity.value = 12
* dosage.dose[x].doseQuantity.unit = "Milligrams (mg)"
* dosage.route = $ "" [// TODO -- bag value mask]
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* context = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effective[x].effectiveDateTime = "2021-10-06T10:53:40-07:00"




[// ED Organization Infromation]

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-emergency-department-Organization
InstanceOf: Organization
Usage: #inline
* id = 8dcb543e-3b31-11ec-8d3d-0242ac130003
* identifier.value[+] = 
* identifier.type[=] = ""
* identifier.value[+] = 
* identifier.type[=] = ""
* type = http://terminology.hl7.org/CodeSystem/organization-type#dept
* name = ""
* address.state = "Arizona" 


[// ED Treatment Infromation]
Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-emergency-department-Procedure-1
InstanceOf: Procedure
Usage: #inline
* id = b6c6ce6c-3b3c-11ec-8d3d-0242ac130003
* code = $4A12XFZ "Monitoring of Cardiac Rhythm, External Approach"
* performed[x].dateTime  = "2021-10-06T11:13:07-07:00"

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-emergency-department-Procedure-2
InstanceOf: Procedure
Usage: #inline
* id = 07152e9a-3b3d-11ec-8d3d-0242ac130003
* code = $5A1223Z "Performance of Cardiac Pacing, Continuous"
* performed[x].dateTime = "	2021-10-06T11:12:20-07:00"

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-emergency-department-diagnosis-1
InstanceOf: Condition
Usage: #inline
* id = 4dae0db8-3b3d-11ec-8d3d-0242ac130003
* code = $I46.9 "Cardiac arrest, cause unspecified"

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-emergency-department-diagnosis-2
InstanceOf: Condition
Usage: #inline
* id = 50836100-3b3d-11ec-8d3d-0242ac130003
* code = $I49.01 "Ventricular fibrillation"



[// Hospital Organization Infromation]

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-inpatient-cardiac-Organization
InstanceOf: Organization
Usage: #inline
* id = 8dcb543e-3b31-11ec-8d3d-0242ac130003
* identifier.value[+] = 
* identifier.type[=] = ""
* identifier.value[+] = 
* identifier.type[=] = ""
* type = http://terminology.hl7.org/CodeSystem/organization-type#dept
* name = ""
* address.state = "Arizona" 

[// Hospital Treatment Infromation]
Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-inpatient-cardiac-Procedure-1
InstanceOf: Procedure
Usage: #inline
* id = a3e560e0-3b3e-11ec-8d3d-0242ac130003
* code = $B236ZZZ "Magnetic Resonance Imaging (MRI) of Right and Left Heart"
* performed[x].dateTime  = "2021-10-06T12:31:00-07:00"

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-inpatient-cardiac-diagnosis-1
InstanceOf: Condition
Usage: #inline
* id = d0d3329e-3b3e-11ec-8d3d-0242ac130003
* code = $I46.9 "Cardiac arrest, cause unspecified"

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-inpatient-cardiac-diagnosis-2
InstanceOf: Condition
Usage: #inline
* id = d5e50e10-3b3e-11ec-8d3d-0242ac130003
* code = $I49.01 "Ventricular fibrillation"

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-inpatient-cardiac-diagnosis-3
InstanceOf: Condition
Usage: #inline
* id = e774ac08-3b3e-11ec-8d3d-0242ac130003
* code = $I50.21 "Acute systolic (congestive) heart failure"
