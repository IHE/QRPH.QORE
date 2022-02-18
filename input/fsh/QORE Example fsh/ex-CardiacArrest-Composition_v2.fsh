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

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport
InstanceOf: Encounter
Usage: #inline
* id = "8da1a2e0-38c2-11ec-8d3d-0242ac130003"
* identifier.value = 1234567
* identifier.type = "Patient Care Report Number"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMBT
* reasonCode.text = "patient transport to Emergency department"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* statusHistory.status[+] = #planned
* statusHistory.period[=] = 2021-10-06T10:47:53-07:00
* statusHistory.status[+] = #arrived
* statusHistory.period[=] = 2021-10-06T10:50:53-07:00
* statusHistory.status[+] = #triaged
* statusHistory.period[=] = 2021-10-06T10:51:38-07:00
* statusHistory.status[+] = #in-progress
* statusHistory.period.start[=] = 2021-10-06T11:03:52-07:00
* statusHistory.period.end [=] = 2021-10-06T11:09:43-07:00
* statusHistory.status[+] = #finished
* statusHistory.period [=] = 2021-10-06T11:52:02-07:00
[// Note: status history may change when PCS-Encounter is completed]
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#EMER
* serviceType = $117 "Emergency Medical"
* prioroty = http://terminology.hl7.org/CodeSystem/v3-ActPriority#UR
[// Note: prioroty may change when PCS-Encounter is completed]
* basedOn = Reference(ServiceRequest/e375b384-38d9-11ec-8d3d-0242ac130003)
* participant.type [+] = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF "primary performer"
* participant.period.start [=] = 2021-10-06T10:48:40-07:00
* participant.period.end [=] = 2021-10-06T11:12:20-07:00
* participant.individual [=] = Reference(Practitioner/21a78dce-38e6-11ec-8d3d-0242ac130003)
* participant.type [+] = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#SPRF "secondary performer"
* participant.period.start [=] = 2021-10-06T10:48:40-07:00
* participant.period.end [=] = 2021-10-06T11:12:20-07:00
* participant.individual [=] = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* participant.type [+]= $ "Driver/Pilot" [//TODO] 
* participant.type [=] = $ "Other Patient Caregiver" [//TODO] 
* participant.period.start [=] = 2021-10-06T10:48:40-07:00
* participant.period.end [=] = 2021-10-06T11:12:20-07:00
* participant.individual [=] = Reference(Practitioner/29eabcea-38e6-11ec-8d3d-0242ac130003)
* period.start = 2021-10-06T10:47:53-07:00
* period.end = 2021-10-06T11:52:02-07:00
* reasonCode = $I46 "Cardiac Arrest"
* diagnosis.condition [+] = Reference(Condition/8a3dbda8-6b24-4b8d-ae0c-c7247eb51846)
* diagnosis.use [=] = http://terminology.hl7.org/CodeSystem/diagnosis-role#CC
* diagnosis.condition [+] = Reference(Condition/87391314-4391-45cb-a83e-890197407f36)
* diagnosis.use [=] = http://terminology.hl7.org/CodeSystem/diagnosis-role#CM
* location.location = Reference(Location/ ) //TODO]
* location.status = http://hl7.org/fhir/encounter-location-status#completed
* serviceProvider = Reference(Organization/b861aba6-38e0-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-ChiefComplaint
InstanceOf: ConditionUvIps
Usage: #inline
* id = 8a3dbda8-6b24-4b8d-ae0c-c7247eb51846
* text = "Cardiac arrest"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional // Note: Verify
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* bodySite[+] = $LA18114-1 "General/global" [//Note: To be proprely translated into SNOMED]
* bodySite[+] = $LA18277-6 "Cardiovascular" [//Note: To be proprely translated into SNOMED]
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* onset[x].onset[x]:onsetDateTime = "2021-10-06T10:45:58-07:00"
* recorder = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* evidence.code[+] = $I46.9 "Cardiac arrest, cause unspecified"
* evidence.code[+] = $R09.2 "Respiratory arrest"
* evidence.code[+] = $R11.10 "Vomiting, unspecified"
// Note: TODO figure out how duration can be incorperated 

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Primary-Impression
InstanceOf: ConditionUvIps
Usage: #inline
* id = 87391314-4391-45cb-a83e-890197407f36
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional // Note: Verify
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code = $I46.9 "Cardiac arrest, cause unspecified"
[// NOte: ICD-10 [2.16.840.1.113883.6.3] refernce]
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* onset[x].onset[x]:onsetDateTime = "2021-10-06T10:45:58-07:00"
* recorder = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* evidence.code[+] = $I46.9 "Cardiac arrest, cause unspecified"
* evidence.code[+] = $R09.2 "Respiratory arrest"
* evidence.code[+] = $R11.10 "Vomiting, unspecified"

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
* code = $ ""
[//TODO ]
* organization = Reference(Organization/b861aba6-38e0-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Organization
InstanceOf: Organization
Usage: #inline
* id = b861aba6-38e0-11ec-8d3d-0242ac130003
* identifier.value[+] = 058
* identifier.type[=] = "Unique State ID"
* identifier.value[+] = 340-TGCON058
* identifier.type[=] = "EMS Agency Number"
* type = $EMS "Emergency Medical Service"  
* name = "TackTrustIHE"
* address.state = "Arizona" 

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-ServiceRequest
InstanceOf: ServiceRequest
Usage: #inline
* id = e375b384-38d9-11ec-8d3d-0242ac130003
* priority = http://terminology.hl7.org/CodeSystem/v3-ActPriority#UR
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* code = $2205001 "911 response (scene)"

Instance: Inline-Instance-for-QORE-example-encounter-emergency-department-1
InstanceOf: Encounter
Usage: #inline
* id = "b809c404-38b3-11ec-8d3d-0242ac130003"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#EMER
* reasonCode.text = "patient in the emergency department"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
// TODO: Andrea to fill this with more useful details
* statusHistory.status[+] = #arrived
* statusHistory.period[=] = 2021-10-06T11:09:43-07:00
* statusHistory.status[+] = #triaged
* statusHistory.period[=] = 2021-10-06T11:11:30-07:00
* statusHistory.status[+] = #in-progress
* statusHistory.period.start[=] = 2021-10-06T11:12:20-07:00
* statusHistory.period.end [=] = 2021-10-07T04:45:00+01:00
* statusHistory.status[+] = #finished
* statusHistory.period [=] = 2021-10-07T04:45:00+01:00
* diagnosis.condition [+] = Reference(Condition/760dba6c-fb2e-43d0-b9b4-dbb733cdebea)
* diagnosis.use [=] = http://terminology.hl7.org/CodeSystem/diagnosis-role#CC
* diagnosis.condition [+] = Reference(Condition/f497d2b7-d76a-47b6-bdda-dfa40d7e9b54)
* diagnosis.use [=] = http://terminology.hl7.org/CodeSystem/diagnosis-role#AD
* diagnosis.condition [+] = Reference(Condition/aa07ae09-95c7-40c0-ae8a-f16288dc0443)
* diagnosis.use [=] = http://terminology.hl7.org/CodeSystem/diagnosis-role#DD
* hospitalization.preAdmissionIdentifier.value = "78HU-3D7D"
* hospitalization.preAdmissionIdentifier.type[=] = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* hospitalization.origin = Reference(Organization/b861aba6-38e0-11ec-8d3d-0242ac130003)
* hospitalization.admitSource =  http://terminology.hl7.org/CodeSystem/admit-source#other 
* hospitalization.destination = Reference(Organization/8dcb543e-3b31-11ec-8d3d-0242ac130003)
* hospitalization.dischargeDisposition =  $09 "Admitted as an inpatient to this hospital."
* period.start = 021-10-06T11:09:43-07:00
* period.end = 2021-10-07T04:45:00+01:00
* serviceProvider = Reference(Organization/8dcb543e-3b31-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-QORE-example-encounter-emergency-department-CHiefComplaint
InstanceOf: Condition
Usage: #inline
* id = "760dba6c-fb2e-43d0-b9b4-dbb733cdebea"
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code = $I46.9 "Cardiac arrest, cause unspecified"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/b809c404-38b3-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-QORE-example-encounter-emergency-department-AdmissionDiagnosis
InstanceOf: Condition
Usage: #inline
* id = "f497d2b7-d76a-47b6-bdda-dfa40d7e9b54"
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code = $I49.01 "Ventricular fibrillation"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/b809c404-38b3-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-QORE-example-encounter-emergency-department-DischargeDiagnosis
InstanceOf: Condition
Usage: #inline
* id = "aa07ae09-95c7-40c0-ae8a-f16288dc0443"
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code = $I49.01 "Ventricular fibrillation"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/b809c404-38b3-11ec-8d3d-0242ac130003)


Instance: Inline-Instance-for-QORE-example-encounter-inpatient-cardiac-1
InstanceOf: Encounter
Usage: #inline
* id = "068749a2-38b5-11ec-8d3d-0242ac130003"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* reasonCode.text = "Non-urgent cardiological admission"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
// TODO: Andrea to fill this with more useful details
// possibly use as a pattern http://hl7.org/fhir/encounter-example-f001-heart.json.html
* statusHistory.status[+] = #arrived
* statusHistory.period[=] = 2021-10-07T04:45:00+01:00
* statusHistory.status[+] = #finished
* statusHistory.period [=] = 2021-10-13T12:00:00-07:00
* diagnosis.condition [+] = Reference(Condition/5d4ab734-c8b7-401e-b1de-dbef3da2749a)
* diagnosis.use [=] = http://terminology.hl7.org/CodeSystem/diagnosis-role#CC
* diagnosis.condition [+] = Reference(Condition/1850dbb2-9c7c-42d2-ab5f-fdf81a9e8a10)
* diagnosis.use [=] = http://terminology.hl7.org/CodeSystem/diagnosis-role#AD
* diagnosis.condition [+] = Reference(Condition/e87a0820-e01c-4a47-8bc2-848b62fa9b6b)
* diagnosis.use [=] = http://terminology.hl7.org/CodeSystem/diagnosis-role#DD
* hospitalization.origin = Reference(Organization/8dcb543e-3b31-11ec-8d3d-0242ac130003)
* hospitalization.admitSource = http://terminology.hl7.org/CodeSystem/admit-source#emd
* hospitalization.destination =   Reference(Loaction/86c2bce9-3311-4291-9cc3-d7e047b3f70e)
* hospitalization.dischargeDisposition =   $01 "Discharge to home or self-care (routine discharge)"
* period.start = 2021-10-07T04:45:00+01:00
* period.end =   2021-10-13T12:00:00-07:00
* serviceProvider = Reference(Organization/8dcb543e-3b31-11ec-8d3d-0242ac130003)


Instance: Inline-Instance-for-QORE-example-encounter-inpatient-cardiac-CHiefComplaint
InstanceOf: Condition
Usage: #inline
* id = "5d4ab734-c8b7-401e-b1de-dbef3da2749a"
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code = $I46.9 "Cardiac arrest, cause unspecified"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/068749a2-38b5-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-QORE-example-encounter-inpatient-cardiac-AdmissionDiagnosis
InstanceOf: Condition
Usage: #inline
* id = "1850dbb2-9c7c-42d2-ab5f-fdf81a9e8a10"
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code = $I49.01 "Ventricular fibrillation"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/068749a2-38b5-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-QORE-example-encounter-inpatient-cardiac-DischargeDiagnosis
InstanceOf: Condition
Usage: #inline
* id = "e87a0820-e01c-4a47-8bc2-848b62fa9b6b"
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code = $I50.21 "Acute systolic (congestive) heart failure"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/068749a2-38b5-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-QORE-example-encounter-inpatient-cardiac-Discharge-Destination
InstanceOf: Loaction
Usage: #inline
* id = "86c2bce9-3311-4291-9cc3-d7e047b3f70e"
* address.use = #home
* address.line[+] = "1644 W 13th St"
* address.line[=] = "Unit A"
* address.city = "City of Yuma"
* address.district = "Yuma County"
* address.state = "Arizona"
* address.postalCode = "85364"
[//Note: doesnot support US Cencus tract]
* address.country = "US"

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-emergency-department-Organization
InstanceOf: ServiceRequest
Usage: #inline
* id = 8dcb543e-3b31-11ec-8d3d-0242ac130003
* identifier.value[+] = "MED0262"
* identifier.type[=] = http://terminology.hl7.org/ValueSet/v2-0203#PLAC
* type = http://terminology.hl7.org/CodeSystem/organization-type#dept
* name = "St Benadict IHE"
* address.line = "1868 S Foothills Blvd"
* address.city = "Yuma"
* address.district = "Yuma County"
* address.state = "Arizona" 
* address.country = "US"
* postalcode = "85367"

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

Instance: Cardiac-Patient-MedicalOrderForm
InstanceOf: DocumentReference
Usage: #inline
* id = 8e46582c-38d5-11ec-8d3d-0242ac130003
* type = $93037-0 "Portable medical order form"


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
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
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
* section[sectionMedications].entry[+] = Reference(Medication/4e6bd662-38c3-11ec-8d3d-0242ac130003)
* section[sectionMedications].entry[+] = Reference(Medication/01ff9434-38c4-11ec-8d3d-0242ac130003)

* section[sectionAllergies].code = $loinc#48765-2
* section[sectionAllergies].entry[+] = Reference(AllergyIntolerance/3f26fd70-38c4-11ec-8d3d-0242ac130003)
* section[sectionAllergies].entry[+] = Reference(AllergyIntolerance/93b3e560-38c4-11ec-8d3d-0242ac130003)
* section[sectionAllergies].entry[+] = Reference(AllergyIntolerance/990d2f3a-38c4-11ec-8d3d-0242ac130003)
* section[sectionAllergies].entry[+] = Reference(AllergyIntolerance/fc40d0de-38c4-11ec-8d3d-0242ac130003)

* section[sectionProblems].code = $loinc#11450-4
* section[sectionProblems].entry[+] = Reference(Problem/a0f3b5e2-38c5-11ec-8d3d-0242ac130003)
* section[sectionProblems].entry[+] = Reference(Problem/d5e50e10-3b3e-11ec-8d3d-0242ac130003)
* section[sectionProblems].entry[+] = Reference(Problem/e774ac08-3b3e-11ec-8d3d-0242ac130003)

* section[sectionProceduresHx].code = $loinc#47519-4
* section[sectionProceduresHx].entry[+] = Reference(Procedure/3bfbac88-38c7-11ec-8d3d-0242ac130003)
* section[sectionProceduresHx].entry[+] = Reference(Procedure/dceab572-3b41-11ec-8d3d-0242ac130003)
* section[sectionProceduresHx].entry[+] = Reference(Procedure/1ea7bca6-3b44-11ec-8d3d-0242ac130003)
* section[sectionProceduresHx].entry[+] = Reference(Procedure/67af6a0c-3b44-11ec-8d3d-0242ac130003)
* section[sectionProceduresHx].entry[+] = Reference(Procedure/b2ff4ba8-3b44-11ec-8d3d-0242ac130003)
* section[sectionProceduresHx].entry[+] = Reference(Procedure/e69dcf82-3b46-11ec-8d3d-0242ac130003)
* section[sectionProceduresHx].entry[+] = Reference(Procedure/267c84d6-3b47-11ec-8d3d-0242ac130003)
* section[sectionProceduresHx].entry[+] = Reference(Procedure/875cee62-3b47-11ec-8d3d-0242ac130003)
* section[sectionProceduresHx].entry[+] = Reference(Procedure/b6c6ce6c-3b3c-11ec-8d3d-0242ac130003)
* section[sectionProceduresHx].entry[+] = Reference(Procedure/07152e9a-3b3d-11ec-8d3d-0242ac130003)
* section[sectionProceduresHx].entry[+] = Reference(Procedure/a3e560e0-3b3e-11ec-8d3d-0242ac130003)


* section[sectionImmunizations].code = $loinc#11369-6
* section[sectionImmunizations].entry[+] = Reference(Immunization/95129cdc-38c7-11ec-8d3d-0242ac130003)

* section[sectionMedicalDevices].code = $loinc#46264-8
* section[sectionMedicalDevices].entry[+] = Reference(DeviceUseStatement/d6c13250-38c7-11ec-8d3d-0242ac130003)

* section[sectionVitalSigns].code = $loinc#8716-3
** section[sectionVitalSigns].entry[+] = Reference(VitalSigns/b6400438-3be4-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/c48bd52a-3be5-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/f37d99c2-3be5-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/96c73962-3be6-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/e13e79e2-3be6-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/381975fa-3be7-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/64b3acd4-3be7-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/7d4f0fb4-125e-440a-ae81-7e0c82fdb9b1)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/964b6a8e-cf0a-4441-9e11-4a864c3cfa29)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/58b0e7ac-3be8-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/6f2c57a0-3be8-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/6d85a7f6-3bef-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/c5020bf0-3bef-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/ad6589c4-a929-4dc4-bcf4-0ce63f733a95)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/8ad91b35-9e62-4eef-9d29-de06f463511b)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/e439221c-7899-4bcc-a6b4-1054f4305b48)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/ec61ff08-e60c-49e6-8091-12109d278dde)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/86d600a0-0764-4bc9-b1a0-5dfffb617a24)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/0973da60-38cc-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/5055df00-24a6-4531-bc54-22a4bfe0159e)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/e4f5a1b9-d44d-4cb5-8491-16f9c37f3790)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/093b485e-4511-418f-b607-cfaec2996e4d)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/4757a8f6-5765-4333-b5de-ca31a25553c2)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/ba7139e1-9064-4293-94e6-4f5e9ccc972a)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/ef4fdaf1-095b-4db0-915d-338c19fe9a7d)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/44c24aba-2298-49a8-9d67-e44a7b46c09f)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/da9470e7-f6ed-4643-9b10-8a59310bb286)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/85cf8976-f1b2-4337-8658-26210f5df666)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/03d0db0e-3852-4add-b33a-db8e6aea5f2b)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/7cbaa1c3-e793-4516-95ed-af6783532feb)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/6ec67b5f-fa07-46f9-aa09-857b475ce30f)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/66721b82-aaeb-4568-928e-d49145e2bad9)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/bb282e3a-ca42-4984-9859-e32dd013fed0)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/a23d6cb2-c238-4b7a-abcd-7bdd6966fa65)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/387b36eb-9220-4068-ae2f-21707522aab6)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/9fdcb6f1-c3a3-490f-ba00-0c260d619411)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/3ec08244-00f1-41ac-a251-b70c0d069cf1)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/74b8ed2b-08ec-4ec8-bac8-c61154558c33)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/fee522f6-9a32-4ad7-b906-4e61de240a2e)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/1a21143f-8676-4c23-a312-9ed25cef0254)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/caf96813-eada-4b1e-a4e6-99e446834bbc)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/0e4e5415-8a8b-470e-9ce2-05a79f7f48ae)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/a0ca7a99-8132-4efa-8068-03282c3c4eff)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/59276b4d-51e0-4799-b79a-e4737efb4ef8)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/32511f84-f0fe-48f7-9616-ccb10fb57375)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/2d5475c0-827f-4697-9d83-54e666b3562c)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/4bcea68a-378c-41b7-85e8-f1f8134e55a1)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/369d0828-c27a-4047-97bd-5d0da9d2436d)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/72e8c109-c43b-4fe0-b4d8-36d74612f9ea)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/40b02e04-4212-4346-8661-164e4151a207)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/946a66f9-d0de-409a-bf93-e20726810482)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/bb9752e5-a2a7-4723-b27d-1ba07dc936b6)

* section[sectionPastIllnessHx].code = $loinc#11348-0
* section[sectionVitalSigns].entry[+] = Reference(Condition/0510d482-38c7-11ec-8d3d-0242ac130003)

* section[sectionFunctionalStatus].code = $loinc#47420-5
* section[sectionFunctionalStatus].entry[+] = Reference(Condition/.... )

* section[sectionPlanOfCare].code = $loinc#18776-5

* section[sectionSocialHistory].code = $loinc#29762-2


* section[sectionPregnancyHx].code = $loinc#10162-6
* section[sectionPregnancyHx].entry[pregnancyStatus] = Reference(Observation/583dc1bc-38d4-11ec-8d3d-0242ac130003)

* section[sectionAdvanceDirectives].code = $loinc#42348-3
* section[sectionAdvanceDirectives].entry[+] = Reference(Consent/3886606-38d4-11ec-8d3d-0242ac130003)

* section[chief_complaint].code = $loinc#10154-3
* section[chief_complaint].entry[+] = Reference(Condition/8a3dbda8-6b24-4b8d-ae0c-c7247eb51846)
// Note: Ambulance Transport chief complaint 
* section[chief_complaint].entry[+] = Reference(Condition/760dba6c-fb2e-43d0-b9b4-dbb733cdebea)
// Note: Emergency Department chief complaint 
* section[chief_complaint].entry[+] = Reference(Condition/5d4ab734-c8b7-401e-b1de-dbef3da2749a)
// Note: Hospital chief complaint 

* section[admission_diagnosis].code = $loinc#46241-6
* section[chief_complaint].entry[+] = Reference(Condition/f497d2b7-d76a-47b6-bdda-dfa40d7e9b54)
// Note: Emergency Department admission diagnosis 
* section[chief_complaint].entry[+] = Reference(Condition/1850dbb2-9c7c-42d2-ab5f-fdf81a9e8a10)
// Note: Hospital admission diagnosis  




* section[admission_medications].code = $loinc#42346-7


* section[discharge_diagnosis].code = $loinc#11535-2
* section[chief_complaint].entry[+] = Reference(Condition/aa07ae09-95c7-40c0-ae8a-f16288dc0443)
// Note: Emergency Department discharge diagnosis 
* section[chief_complaint].entry[+] = Reference(Condition/e87a0820-e01c-4a47-8bc2-848b62fa9b6b)
// Note: Hospital discharge diagnosis 




* section[discharge_medications].code = $loinc#10183-2



* section[discharge_disposition].code = $loinc#55128-3
* section[discharge_disposition].entry[+] = $09 "Admitted as an inpatient to this hospital."
// Note: Emergency Department discharge disposition
* section[discharge_disposition].entry[+] = $01 "Discharge to home or self-care (routine discharge)"
// Note: Hospital discharge disposition

